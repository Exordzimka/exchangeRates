package application.dateViewConverter;

import org.springframework.stereotype.Component;

@Component
public class DateViewConverterForDatabase extends DateViewConverter {

    @Override
    public String convertDate(String date) {
        DatePattern patternOfDate = getPatternOfDate(date);
        if (patternOfDate == null) {
            return date;
        }
        return date.replaceFirst(patternOfDate.getPattern().pattern(),
                String.format("$%s-$%s-$%s", patternOfDate.getYearGroup(), patternOfDate.getMonthGroup(), patternOfDate.getDayGroup()));
    }
}
