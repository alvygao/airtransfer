package com.airtransfer.models;

/**
 * User: Sergey
 * Date: 29.01.12 20:14
 */
public enum NationEnum {
    European(0, "European", ""),
    Asian(1, "Asian", ""),
    Caucasian(2, "Caucasian", ""),
    Hindu(3, "Hindu", ""),
    Negro(4, "Negro", ""),
    Latinos(5, "Latin", ""),
    Arab(6, "Arab", ""),
    Indian(7, "Indian", ""),
    Metis(8, "Metis", ""),
    Other(9, "other", "");

    private Integer id;
    private String engName;
    private String rusName;

    NationEnum(Integer id, String engName, String rusName) {
        this.id = id;
        this.engName = engName;
        this.rusName = rusName;
    }

    public Integer getId() {
        return id;
    }

    public String getEngName() {
        return engName;
    }

    public String getRusName() {
        return rusName;
    }
}
