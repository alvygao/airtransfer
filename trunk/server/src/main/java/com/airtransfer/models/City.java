package com.airtransfer.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * User: Sergey
 * Date: 08.01.12 18:30
 */
@Entity
@Table(name = "cities")
public class City extends BaseEntity {

    @Column(name = "eng_name")
    private String engName;

    @Column(name = "rus_name")
    private String rusName;

    @Column(name = "country_code")
    private String countryCode;

    @Column(name = "code")
    private String code;

    public String getEngName() {
        return engName;
    }

    public void setEngName(String engName) {
        this.engName = engName;
    }

    public String getRusName() {
        return rusName;
    }

    public void setRusName(String rusName) {
        this.rusName = rusName;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
