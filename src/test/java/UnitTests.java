import java.sql.Date;
import java.time.LocalDate;
import java.util.regex.Pattern;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import application.Application;
import application.dateViewConverter.DateViewConverterForDatabase;
import application.dateViewConverter.DateViewConverterForInterface;
import application.dateViewConverter.DateViewConverterForRequest;
import application.model.RatesCurrencyPK;
import application.repository.CurrencyRepository;
import application.repository.RatesCurrencyRepository;
import application.service.RateCurrencyService;

@RunWith(SpringRunner.class)
@SpringBootTest(
        classes = Application.class)
@TestPropertySource(
        locations = "classpath:application.properties")
public class UnitTests {

    @Autowired
    private RatesCurrencyRepository ratesCurrencyRepository;

    @Autowired
    private DateViewConverterForDatabase dateViewConverterForDatabase;

    @Autowired
    private DateViewConverterForInterface dateViewConverterForInterface;

    @Autowired
    private DateViewConverterForRequest dateViewConverterForRequest;

    @Autowired
    private CurrencyRepository currencyRepository;

    @Autowired
    private RateCurrencyService rateCurrencyService;

    @Value("${base.currency.short.name}")
    private String baseCurrencyShortName;

    @Test
    @Transactional
    public void checkRateCalculator() {
        String date = dateViewConverterForDatabase.convertDate(LocalDate.of(2021, 6, 29).toString());
        long baseId = currencyRepository.getBaseCurrency(baseCurrencyShortName).getId();
        long firstId = currencyRepository.getOne(1L).getId();
        long secondId = currencyRepository.getOne(2L).getId();
        float firstRate = ratesCurrencyRepository.findById(new RatesCurrencyPK(Date.valueOf(date), firstId)).get().getRate();
        float secondRate = ratesCurrencyRepository.findById(new RatesCurrencyPK(Date.valueOf(date), secondId)).get().getRate();
        Assert.assertEquals(1F, rateCurrencyService.getRate(date, baseId, baseId), 0F);
        Assert.assertEquals(1F / firstRate, rateCurrencyService.getRate(date, baseId, firstId), 0F);
        Assert.assertEquals(firstRate, rateCurrencyService.getRate(date, firstId, baseId), 0F);
        Assert.assertEquals(secondRate / firstRate, rateCurrencyService.getRate(date, firstId, secondId), 0F);
    }

    @Test
    public void checkDateViewConverter() {
        Assert.assertTrue(Pattern.compile("\\d{4}-\\d{2}-\\d{2}").matcher(dateViewConverterForDatabase.convertDate(LocalDate.now().toString())).matches());
        Assert.assertTrue(Pattern.compile("\\d{2}\\.\\d{2}\\.\\d{4}").matcher(dateViewConverterForInterface.convertDate(LocalDate.now().toString())).matches());
        Assert.assertTrue(Pattern.compile("\\d{2}/\\d{2}/\\d{4}").matcher(dateViewConverterForRequest.convertDate(LocalDate.now().toString())).matches());
    }
}
