package application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import application.dateViewConverter.DateViewConverterForDatabase;
import application.model.Currency;
import application.service.CurrencyService;
import application.service.RateCurrencyService;

@RestController
@RequestMapping("/")
public class IndexController {

    @Autowired
    private RateCurrencyService ratesCurrencyHistoryService;

    @Autowired
    private CurrencyService currencyService;

    @Autowired
    private DateViewConverterForDatabase dateViewConverterForDatabase;

    @GetMapping(value = "/get-currencies-for-date")
    public List<Currency> getCurrenciesForDate(@RequestParam String date) {
        return currencyService.getCurrenciesByDate(dateViewConverterForDatabase.convertDate(date));
    }

    @GetMapping(value = "/get-rate")
    public float getRate(@RequestParam String date, @RequestParam long currencyFrom, @RequestParam long currencyTo) {
        return ratesCurrencyHistoryService.getRate(date, currencyFrom, currencyTo);
    }

    @GetMapping(value = "/get-dates")
    public List<String> getDates() {
        return ratesCurrencyHistoryService.getAllDates();
    }
}
