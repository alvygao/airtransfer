package com.airtransfer.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * User: Sergey
 * Date: 22.12.11 15:16
 */
@Entity
@Table(name = "bodies")
public class Body extends BaseEntity {

    @Column(name = "rus_name")
    private String rusName;
    @Column(name = "eng_name")
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
