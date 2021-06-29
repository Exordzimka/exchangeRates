package application.repository;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import application.model.RatesCurrency;
import application.model.RatesCurrencyPK;

@Repository
public interface RatesCurrencyRepository extends JpaRepository<RatesCurrency, RatesCurrencyPK> {

    @Query("SELECT rates_currency FROM RatesCurrency rates_currency WHERE rates_currency.ratesCurrencyPK.date = :date")
    List<RatesCurrency> findByDate(@Param("date") Date date);

    @Query("SELECT distinct rates_currency.ratesCurrencyPK.date FROM RatesCurrency rates_currency ORDER BY 1 desc ")
    List<String> findAllDates();

    default void addRatesCurrency(JdbcTemplate jdbcTemplate, List<RatesCurrency> ratesCurrency) {
        jdbcTemplate.batchUpdate("insert into rates_currency (date, base_currency_id, currency_to_id, rate) values (?,?,?,?)",
                new BatchPreparedStatementSetter() {

                    @Override
                    public void setValues(PreparedStatement preparedStatement, int i) throws SQLException {
                        preparedStatement.setDate(1, ratesCurrency.get(i).getRatesCurrencyPK().getDate());
                        preparedStatement.setLong(2, ratesCurrency.get(i).getBaseCurrencyId());
                        preparedStatement.setLong(3, ratesCurrency.get(i).getRatesCurrencyPK().getCurrencyToId());
                        preparedStatement.setFloat(4, ratesCurrency.get(i).getRate());
                    }

                    @Override
                    public int getBatchSize() {
                        return ratesCurrency.size();
                    }
                });
    }
}
