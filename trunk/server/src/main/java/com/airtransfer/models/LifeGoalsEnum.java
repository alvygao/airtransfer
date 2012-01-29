package com.airtransfer.models;

/**
 * User: Sergey
 * Date: 29.01.12 19:05
 */
public enum LifeGoalsEnum {

    Career(1, "Career", ""),
    Wealthiness(2, "Wealthiness", ""),
    Conciliation(3, "Conciliation", ""),
    Family(4, "Family", ""),
    Maximum_of_sex(5, "Maximum of sex", ""),
    Realization(6, "Realization", ""),
    Social_activity(7, "Social activity", ""),
    Other(8, "Other", "");

    private Integer id;
    private String engName;
    private String rusName;

    LifeGoalsEnum(Integer id, String engName, String rusName) {
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
