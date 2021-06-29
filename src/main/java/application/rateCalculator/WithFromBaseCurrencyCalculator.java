package application.rateCalculator;

import java.sql.Date;

import org.springframework.stereotype.Component;

import application.model.RatesCurrencyPK;
import application.repository.RatesCurrencyRepository;

@Component
public class WithFromBaseCurrencyCalculator extends RateCalculator {

    public WithFromBaseCurrencyCalculator(RatesCurrencyRepository ratesCurrencyRepository) {
        super(ratesCurrencyRepository);
    }

    @Override
    public float calculateRate(String date, long currencyFromId, long currencyToId) {
        return 1/super.ratesCurrencyRepository.getOne(new RatesCurrencyPK(Date.valueOf(date), currencyToId)).getRate();
    }
}
