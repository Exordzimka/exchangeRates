package application.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import application.dateViewConverter.DateViewConverterForDatabase;
import application.dateViewConverter.DateViewConverterForInterface;
import application.rateCalculator.*;
import application.repository.CurrencyRepository;
import application.repository.RatesCurrencyRepository;

@Service
public class RateCurrencyService {

    @Autowired
    private RatesCurrencyRepository ratesCurrencyRepository;

    @Autowired
    private CurrencyRepository currencyRepository;

    @Autowired
    private DateViewConverterForDatabase dateViewConverterForDatabase;

    @Autowired
    private DateViewConverterForInterface dateViewConverterForInterface;

    @Value("${base.currency.short.name}")
    private String baseCurrencyShortName;

    public float getRate(String date, long currencyFromId, long currencyToId) {
        RateCalculator rateCalculator;
        long baseCurrencyId = currencyRepository.getByShortName(baseCurrencyShortName).getId();
        if (baseCurrencyId == currencyFromId && baseCurrencyId == currencyToId) {
            rateCalculator = new BaseCurrencyCalculator(ratesCurrencyRepository);
        } else if (baseCurrencyId == currencyFromId) {
            rateCalculator = new WithFromBaseCurrencyCalculator(ratesCurrencyRepository);
        } else if (baseCurrencyId == currencyToId) {
            rateCalculator = new WithToBaseCurrencyCalculator(ratesCurrencyRepository);
        } else {
            rateCalculator = new WithoutBaseCurrencyCalculator(ratesCurrencyRepository);
        }
        return rateCalculator.calculateRate(dateViewConverterForDatabase.convertDate(date), currencyFromId, currencyToId);
    }

    public List<String> getAllDates() {
        return ratesCurrencyRepository.findAllDates().stream().map(x -> dateViewConverterForInterface.convertDate(x)).collect(Collectors.toList());
    }
}
