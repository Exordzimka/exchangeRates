package application.rateCalculator;

import org.springframework.stereotype.Component;

import application.repository.RatesCurrencyRepository;

@Component
public class BaseCurrencyCalculator extends RateCalculator {

    public BaseCurrencyCalculator(RatesCurrencyRepository ratesCurrencyRepository) {
        super(ratesCurrencyRepository);
    }

    @Override
    public float calculateRate(String date, long currencyFromId, long currencyToId) {
        return 1;
    }
}
