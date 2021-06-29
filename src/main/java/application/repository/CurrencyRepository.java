package application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import application.model.Currency;

@Repository
public interface CurrencyRepository extends JpaRepository<Currency, Long> {

    @Query("SELECT currency FROM Currency currency WHERE currency.shortName = :short_name")
    public Currency getByShortName(@Param("short_name")String shortName);

    default Currency getBaseCurrency(String shortName){
        return getByShortName(shortName);
    }
}
