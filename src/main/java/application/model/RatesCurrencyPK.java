package application.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Embeddable;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Embeddable
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Component
public class RatesCurrencyPK implements Serializable{
    protected Date date;
    protected long currencyToId;
}
