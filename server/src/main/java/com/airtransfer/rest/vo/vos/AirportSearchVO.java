package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.Airport;

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
        super(airport);
        StringBuilder builder = new StringBuilder();
        builder.append(airport.getCountryNameEng())
                .append(" (")
                .append(airport.getCountryCode())
                .append(")");
        country = builder.toString();
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
