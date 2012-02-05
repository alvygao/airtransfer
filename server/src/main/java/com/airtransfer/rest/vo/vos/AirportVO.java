package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.Airport;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.Locale;

/**
 * User: Sergey
 * Date: 03.01.12 20:13
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class AirportVO {

    private Long realId;

    private String iataCode;

    private String name;

    private String countryCode;

    public AirportVO() {
    }

    public AirportVO(Airport airport, Locale locale) {
        realId = airport.getId();
        iataCode = airport.getIataCode();
        countryCode = airport.getCountryCode();
        if (locale.getDisplayName().equals("ru_RU")) {
            name = airport.getRusName();
        } else {
            name = airport.getEngName();
        }
    }

    public Long getRealId() {
        return realId;
    }

    public void setRealId(Long realId) {
        this.realId = realId;
    }

    public String getIataCode() {
        return iataCode;
    }

    public void setIataCode(String iataCode) {
        this.iataCode = iataCode;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
