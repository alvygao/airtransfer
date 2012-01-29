package com.airtransfer.models;

/**
 * User: Sergey
 * Date: 29.01.12 18:51
 */
public enum BodyEnum {

    Thin(1, "Thin", ""),
    General(2, "General", ""),
    Athletic(3, "Athletic", ""),
    Muscular(4, "Muscular", ""),
    Strong(5, "Strong", ""),
    Stout(6, "Stout", ""),
    Other(7, "Other", "");

    private Integer id;
    private String engName;
    private String rusName;

    BodyEnum(Integer id, String engName, String rusName) {
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

    /*
        <option value="1">Thin</option>
        <option value="2">General</option>
        <option value="3">Athletic</option>
        <option value="4">Athletic</option>
        <option value="5">Muscular</option>
        <option value="6">Strong</option>
        <option value="7">Stout</option>
    */

}
