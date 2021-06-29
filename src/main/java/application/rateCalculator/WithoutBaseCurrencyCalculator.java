package application.rateCalculator;

import java.sql.Date;

import org.springframework.stereotype.Component;

import application.model.RatesCurrencyPK;
import application.repository.RatesCurrencyRepository;

@Component
public class WithoutBaseCurrencyCalculator extends RateCalculator {

    public WithoutBaseCurrencyCalculator(RatesCurrencyRepository ratesCurrencyRepository) {
        super(ratesCurrencyRepository);
    }

    @Override
    public float calculateRate(String date, long currencyFromId, long currencyToId) {
        float ratesCurrencyFromRate = super.ratesCurrencyRepository.getOne(new RatesCurrencyPK(Date.valueOf(date), currencyFromId)).getRate();
        float ratesCurrencyToRate = super.ratesCurrencyRepository.getOne(new RatesCurrencyPK(Date.valueOf(date), currencyToId)).getRate();
        return ratesCurrencyToRate / ratesCurrencyFromRate;
    }
}
