package application.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "rates_currency")
public class RatesCurrency {
    @EmbeddedId
    private RatesCurrencyPK ratesCurrencyPK;
    private long baseCurrencyId;
    private float rate;
}

