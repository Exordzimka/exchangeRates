package application.rateCalculator;

import org.springframework.stereotype.Component;

import application.repository.RatesCurrencyRepository;

@Component
public abstract class RateCalculator {

    protected final RatesCurrencyRepository ratesCurrencyRepository;

    public RateCalculator(RatesCurrencyRepository ratesCurrencyRepository){
        this.ratesCurrencyRepository = ratesCurrencyRepository;
    }

    public abstract float calculateRate(String date, long currencyFromId, long currencyToId);
}
