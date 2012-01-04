package com.airtransfer.models;

import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Store;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * User: Sergey
 * Date: 20.12.11 23:09
 */
@Entity
@Indexed
@Table(name = "airports")
public class Airport extends BaseEntity {

    @Column(name = "code")
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String iataCode;

    @Column(name = "eng_name")
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String engName;

    @Column(name = "rus_name")
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String rusName;

    @Column(name = "ukr_name")
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String ukrName;

    @Column(name = "country_code")
    @Field(index = Index.TOKENIZED, store = Store.NO)
    private String countryCode;

    public String getIataCode() {
        return iataCode;
    }

    public void setIataCode(String iataCode) {
        this.iataCode = iataCode;
    }

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

    public String getUkrName() {
        return ukrName;
    }

    public void setUkrName(String ukrName) {
        this.ukrName = ukrName;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }
}
