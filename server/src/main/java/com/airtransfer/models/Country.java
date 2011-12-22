package com.airtransfer.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * User: Sergey
 * Date: 21.12.11 22:20
 */
@Entity
@Table(name = "countries")
public class Country extends BaseEntity {

    @Column(name = "country_rus")
    private String rusName;
    @Column(name = "country_eng")
    private String engName;

    public String getRusName() {
        return rusName;
    }

    public void setRusName(String rusName) {
        this.rusName = rusName;
    }

    public String getEngName() {
        return engName;
    }

    public void setEngName(String engName) {
        this.engName = engName;
    }
}
