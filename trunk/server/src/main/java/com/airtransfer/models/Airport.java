package com.airtransfer.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * User: Sergey
 * Date: 20.12.11 23:09
 */
@Entity
@Table(name = "airports")
public class Airport extends BaseEntity {
    @Column(name = "iata_code")
    private String iataCode;
    @Column(name = "name_rus")
    private String rusName;
@Column(name = "")
    private String engName;

    @Column(name = "city_rus")
    private String rusCity;
    @Column(name = "city_eng")
    private String engCity;

    @Column(name = "gmt_offset")
    private Float gmtOffset;

    @Column(name = "country_rus")
    private String rusCountry;
    @Column(name = "country_eng")
    private String engCountry;

    @Column(name = "iso_code")
    private String isoCode;
    @Column(name = "latitude")
    private Float latitude;
    @Column(name = "longitude")
    private Float longitude;

    @Column(name = "runway_length")
    private Float runwayLength;
    @Column(name = "runway_elevation")
    private Float runwayElevation;

    @Column(name = "email")
    private String email;
    @Column(name = "website")
    private String website;
    @Column(name = "a_country_id")
    private Integer countryId;
    @Column(name = "a_city_id")
    private Integer cityId;

    public String getIataCode() {
        return iataCode;
    }

    public void setIataCode(String iataCode) {
        this.iataCode = iataCode;
    }

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

    public String getRusCity() {
        return rusCity;
    }

    public void setRusCity(String rusCity) {
        this.rusCity = rusCity;
    }

    public String getEngCity() {
        return engCity;
    }

    public void setEngCity(String engCity) {
        this.engCity = engCity;
    }

    public Float getGmtOffset() {
        return gmtOffset;
    }

    public void setGmtOffset(Float gmtOffset) {
        this.gmtOffset = gmtOffset;
    }

    public String getRusCountry() {
        return rusCountry;
    }

    public void setRusCountry(String rusCountry) {
        this.rusCountry = rusCountry;
    }

    public String getEngCountry() {
        return engCountry;
    }

    public void setEngCountry(String engCountry) {
        this.engCountry = engCountry;
    }

    public String getIsoCode() {
        return isoCode;
    }

    public void setIsoCode(String isoCode) {
        this.isoCode = isoCode;
    }

    public Float getLatitude() {
        return latitude;
    }

    public void setLatitude(Float latitude) {
        this.latitude = latitude;
    }

    public Float getLongitude() {
        return longitude;
    }

    public void setLongitude(Float longitude) {
        this.longitude = longitude;
    }

    public Float getRunwayLength() {
        return runwayLength;
    }

    public void setRunwayLength(Float runwayLength) {
        this.runwayLength = runwayLength;
    }

    public Float getRunwayElevation() {
        return runwayElevation;
    }

    public void setRunwayElevation(Float runwayElevation) {
        this.runwayElevation = runwayElevation;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public Integer getCountryId() {
        return countryId;
    }

    public void setCountryId(Integer countryId) {
        this.countryId = countryId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }
}
