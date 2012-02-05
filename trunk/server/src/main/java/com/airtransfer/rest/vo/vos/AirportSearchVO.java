package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.Airport;

import javax.swing.plaf.BorderUIResource;
import javax.swing.plaf.ButtonUI;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * User: Sergey
 * Date: 15.01.12 17:42
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class AirportSearchVO extends TrinityVO {

    private String country;

    public AirportSearchVO() {

    }

    public AirportSearchVO(Airport airport) {
        this.id = String.valueOf(airport.getId());
        StringBuilder builder = new StringBuilder();
        builder.append(airport.getEngName())
                .append(" ")
                .append("[").append(airport.getIataCode()).append("]")
                .append(" ")
                .append(airport.getCountryNameEng())
                .append(" (")
                .append(airport.getCountryCode())
                .append(")");
        country = airport.getCountryCode();
        this.value = builder.toString();
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public static void main(String[] args) {
        char initChar = 'A';
        for (int i = 0; i < 26; i++) {
            char ch = initChar++;
            StringBuilder builder = new StringBuilder();
            builder.append("<option value=\"").append(ch).append("\">").append(ch).append("</option>");
            System.out.println(builder.toString());
        }
    }
}
