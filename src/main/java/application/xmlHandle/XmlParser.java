package application.xmlHandle;

import java.io.IOException;
import java.io.StringReader;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import application.xmlHandle.model.Valute;

public class XmlParser {

    private final Document xmlDocument;

    @Autowired
    public XmlParser(String xml) throws IOException, SAXException, ParserConfigurationException {
        xmlDocument = createXmlDocFromString(xml);
    }

    public List<Valute> parseValutesFromXml() {
        List<Valute> valuteList = new ArrayList<>();
        NodeList nodeList = xmlDocument.getElementsByTagName("Valute");
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node node = nodeList.item(i);
            if (node.getNodeType() != Node.ELEMENT_NODE) {
                continue;
            }
            Element element = (Element) node;
            String charCode = element.getElementsByTagName("CharCode").item(0).getTextContent();
            int nominal = Integer.parseInt(element.getElementsByTagName("Nominal").item(0).getTextContent());
            String name = element.getElementsByTagName("Name").item(0).getTextContent();
            float value = Float.parseFloat(element.getElementsByTagName("Value").item(0).getTextContent().replaceAll(",", "\\."));
            valuteList.add(new Valute(charCode, name, nominal, value));
        }
        return valuteList;
    }

    public String parseDateOfRates() {
        NodeList nodeList = xmlDocument.getElementsByTagName("ValCurs");
        Node node = nodeList.item(0);
        Element element = (Element) node;
        return element.getAttribute("Date");
    }

    private Document createXmlDocFromString(String xml) throws ParserConfigurationException, IOException, SAXException {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        InputSource inputSource = new InputSource(new StringReader(xml));
        return builder.parse(inputSource);
    }

}
