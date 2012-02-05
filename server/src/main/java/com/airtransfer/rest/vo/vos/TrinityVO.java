package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.Airport;
import com.airtransfer.models.City;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * User: Sergey
 * Date: 10.01.12 0:06
 */
@XmlAccessorType(XmlAccessType.PROPERTY)
public class TrinityVO {
    protected String id;
    protected String label;
    protected String value;

    public TrinityVO() {
    }

    public TrinityVO(City city) {
        id = String.valueOf(city.getId());
        label = city.getEngName();
        StringBuilder builder = new StringBuilder();
        builder.append(city.getEngName()).append(" [").append(city.getCountryCode()).append("]");
        value = builder.toString();
    }

    public TrinityVO(String id, String label, String value) {
        this.id = id;
        this.label = label;
        this.value = value;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
