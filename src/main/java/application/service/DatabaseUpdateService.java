package application.service;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.xml.sax.SAXException;

import application.dateViewConverter.DateViewConverterForDatabase;
import application.dateViewConverter.DateViewConverterForRequest;
import application.model.RatesCurrency;
import application.model.RatesCurrencyPK;
import application.repository.CurrencyRepository;
import application.repository.RatesCurrencyRepository;
import application.xmlHandle.XmlParser;
import application.xmlHandle.model.Valute;

@Service
public class DatabaseUpdateService {

    @Autowired
    private CurrencyRepository currencyRepository;

    @Autowired
    private RatesCurrencyRepository ratesCurrencyRepository;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private DateViewConverterForDatabase dateViewConverterForDatabase;

    @Autowired
    private DateViewConverterForRequest dateViewConverterForRequest;

    @Value("${cbr.api.url}")
    private String cbrApiUrl;

    @Value("${base.currency.short.name}")
    private String baseCurrencyShortName;

    @Scheduled(fixedDelayString = "${database.update.delay.in.milliseconds}")
    public void updateDatabase() throws IOException, SAXException, ParserConfigurationException {
        String lastDate = ratesCurrencyRepository.findLastDate();
        String nextDate = getNextDate(lastDate);
        XmlParser xmlParser = createParser(getDataFromCbr(dateViewConverterForRequest.convertDate(nextDate)));
        while (!inDatabaseLastRates(lastDate, xmlParser.parseDateOfRates())) {
            List<Valute> valutes = xmlParser.parseValutesFromXml();
            List<RatesCurrency> ratesCurrencies = new ArrayList<>();
            for (Valute valute : valutes) {
                long currencyId = currencyRepository.getByShortName(valute.getCharCode()).getId();
                float rate = valute.getNominal() == 1 ? valute.getValue() : valute.getNominal() / valute.getValue();
                String date = dateViewConverterForDatabase.convertDate(xmlParser.parseDateOfRates());
                long baseCurrencyId = currencyRepository.getBaseCurrency(baseCurrencyShortName).getId();
                RatesCurrencyPK ratesCurrencyPK = new RatesCurrencyPK(Date.valueOf(dateViewConverterForDatabase.convertDate(date)), currencyId);
                ratesCurrencies.add(new RatesCurrency(ratesCurrencyPK, baseCurrencyId, rate));
            }
            ratesCurrencyRepository.addRatesCurrency(jdbcTemplate, ratesCurrencies);
            lastDate = ratesCurrencyRepository.findLastDate();
            nextDate = getNextDate(nextDate);
            xmlParser = createParser(getDataFromCbr(nextDate));
        }
    }

    private String getDataFromCbr(String date) {
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Collections.singletonList(MediaType.APPLICATION_XML));
        HttpEntity<String> entity = new HttpEntity<>("parameters", headers);
        ResponseEntity<String> response = restTemplate.exchange(cbrApiUrl + "?date_req=" + date, HttpMethod.GET, entity, String.class);
        return response.getBody();
    }

    private XmlParser createParser(String xml) throws ParserConfigurationException, SAXException, IOException {
        return new XmlParser(xml);
    }

    private boolean inDatabaseLastRates(String lastDateFromDatabase, String dateFromCbr) {
        try {
            return LocalDate.parse(dateViewConverterForDatabase.convertDate(lastDateFromDatabase))
                    .compareTo(LocalDate.parse(dateViewConverterForDatabase.convertDate(dateFromCbr))) >= 0;
        }
        catch (DateTimeParseException exception){
            return false;
        }
    }

    private String getNextDate(String date) {
        Date sqlDate = Date.valueOf(date);
        return sqlDate.toLocalDate().plusDays(1).toString();
    }
}
