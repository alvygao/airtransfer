package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.Airport;

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
    private String id;
    private String label;
    private String value;

    public TrinityVO() {
    }

    public TrinityVO(Airport airport) {
        id = String.valueOf(airport.getId());
        label = airport.getEngName();
        StringBuilder builder = new StringBuilder();
        builder.append(airport.getEngName()).append(" [").append(airport.getIataCode()).append("]");
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