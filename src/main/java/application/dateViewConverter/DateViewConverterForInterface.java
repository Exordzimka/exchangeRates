package application.dateViewConverter;

import org.springframework.stereotype.Component;

@Component
public class DateViewConverterForInterface extends DateViewConverter{

    @Override
    public String convertDate(String date) {
        DatePattern patternOfDate = getPatternOfDate(date);
        if (patternOfDate == null) {
            return date;
        }
        return date.replaceFirst(patternOfDate.getPattern().pattern(),
                String.format("$%s.$%s.$%s", patternOfDate.getDayGroup(), patternOfDate.getMonthGroup(), patternOfDate.getYearGroup()));
    }
}
