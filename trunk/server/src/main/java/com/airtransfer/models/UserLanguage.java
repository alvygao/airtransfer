package com.airtransfer.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * User: Sergey
 * Date: 22.12.11 15:43
 */
@Entity
@Table(name = "languages")
public class UserLanguage extends BaseEntity {

    @Column(name = "rus_name")
    private String rusName;
    @Column(name = "eng_name")
    private String engName;
    @Column(name = "code")
    private String code;

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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
