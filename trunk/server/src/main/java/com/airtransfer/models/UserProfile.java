package com.airtransfer.models;

/**
 * User: sergey
 * Date: 3:51 PM 12/17/11
 */

public class UserProfile extends BaseEntity {

    private String address;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
