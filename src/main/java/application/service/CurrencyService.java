package application.service;

import java.sql.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import application.model.Currency;
import application.model.RatesCurrency;
import application.repository.CurrencyRepository;
import application.repository.RatesCurrencyRepository;

@Service
public class CurrencyService {

    @Autowired
    private RatesCurrencyRepository ratesCurrencyRepository;

    @Autowired
    private CurrencyRepository currencyRepository;

    @Value("${base.currency.short.name}")
    private String baseCurrencyShortName;


    public List<Currency> getCurrenciesByDate(String date) {
        Date sqlDate = Date.valueOf(date);
        List<RatesCurrency> rateCurrencies = ratesCurrencyRepository.findByDate(sqlDate);
        List<Long> currenciesId = rateCurrencies.stream().map(x -> x.getRatesCurrencyPK().getCurrencyToId()).collect(Collectors.toList());
        currenciesId.add(currencyRepository.getBaseCurrency(baseCurrencyShortName).getId());
        return currencyRepository.findAllById(currenciesId);
    }
}
