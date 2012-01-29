package com.airtransfer.rest.vo.vos;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * User: Sergey
 * Date: 28.01.12 21:15
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class CountryVO {

    private Integer id;
    private String label;
    private String value;

    public CountryVO() {
    }

    public CountryVO(Integer id, String label, String value) {
        this.id = id;
        this.label = label;
        this.value = value;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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
