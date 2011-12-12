package com.airtransfer.models.utils;

/**
 * User: sergey
 * Date: 10:49 AM 12/12/11
 */
public enum TemplateType {

    EMAIL("email");

     private String code;

    public String getCode() {
        return code;
    }

    TemplateType(String code) {
        this.code = code;
    }
}
