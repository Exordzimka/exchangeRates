package application.rateCalculator;

import java.sql.Date;

import org.springframework.stereotype.Component;

import application.model.RatesCurrencyPK;
import application.repository.RatesCurrencyRepository;

@Component
public class WithToBaseCurrencyCalculator extends RateCalculator {

    public WithToBaseCurrencyCalculator(RatesCurrencyRepository ratesCurrencyRepository) {
        super(ratesCurrencyRepository);
    }

    @Override
    public float calculateRate(String date, long currencyFromId, long currencyToId) {
        return super.ratesCurrencyRepository.getOne(new RatesCurrencyPK(Date.valueOf(date), currencyFromId)).getRate();
    }
}
