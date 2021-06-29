package application.dateViewConverter;

import java.util.regex.Pattern;

public enum DatePattern {
    PATTERN_FOR_DATABASE{
        @Override
        public Pattern getPattern() {
            return Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})");
        }

        @Override
        public int getDayGroup() {
            return 3;
        }

        @Override
        public int getMonthGroup() {
            return 2;
        }

        @Override
        public int getYearGroup() {
            return 1;
        }
    },
    PATTERN_FOR_INTERFACE {
        @Override
        public Pattern getPattern() {
            return Pattern.compile("^(\\d{2})\\.(\\d{2})\\.(\\d{4})");
        }

        @Override
        public int getDayGroup() {
            return 1;
        }

        @Override
        public int getMonthGroup() {
            return 2;
        }

        @Override
        public int getYearGroup() {
            return 3;
        }
    },
    PATTERN_FOR_REQUEST {
        @Override
        public Pattern getPattern() {
            return Pattern.compile("^(\\d{2})/(\\d{2})/(\\d{4})");
        }

        @Override
        public int getDayGroup() {
            return 1;
        }

        @Override
        public int getMonthGroup() {
            return 2;
        }

        @Override
        public int getYearGroup() {
            return 3;
        }
    };

    public abstract Pattern getPattern();
    public abstract int getDayGroup();
    public abstract int getMonthGroup();
    public abstract int getYearGroup();
}
