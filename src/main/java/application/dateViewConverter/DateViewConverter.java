package application.dateViewConverter;

import org.springframework.stereotype.Component;

@Component
public abstract class DateViewConverter {

    public abstract String convertDate(String date);

    protected DatePattern getPatternOfDate(String date){
        for(DatePattern datePattern : DatePattern.values()){
            if(dateMatchWithPattern(date, datePattern))
                return datePattern;
        }
        return null;
    }

    private boolean dateMatchWithPattern(String date, DatePattern datePattern){
        return datePattern.getPattern().matcher(date).matches();
    }
}
