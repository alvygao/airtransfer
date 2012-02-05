package com.airtransfer.rest.vo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

/**
 * User: Sergey
 * Date: 19.11.11 16:32
 */
@XmlAccessorType(XmlAccessType.PROPERTY)
public abstract class AbstractResponse {

    protected Boolean success;
    protected String message;
    protected String code;

    protected AbstractResponse() {
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
