package application.xmlHandle.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class Valute {
    private String charCode, name;
    private int nominal;
    private float value;
}
