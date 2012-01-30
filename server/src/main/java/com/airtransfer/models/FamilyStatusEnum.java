package com.airtransfer.models;

/**
 * User: Sergey
 * Date: 30.01.12 14:43
 */
public enum FamilyStatusEnum {
    Yes_married_live_together(0, "Yes maried live together", ""),
    Yes_married_dont_live_together(1, "Yes married don't live together", ""),
    Yes_fake_marriage(2, "Yes fake marriage", ""),
    Single(3, "Single", "");

    FamilyStatusEnum(Integer id, String engName, String rusName) {
        this.id = id;
        this.engName = engName;
        this.rusName = rusName;
    }

    private Integer id;
    private String engName;
    private String rusName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
}
