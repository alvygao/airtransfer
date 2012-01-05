package com.airtransfer.rest.vo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

/**
 * User: sergey
 * Date: 4:02 PM 12/17/11
 */

@XmlAccessorType(XmlAccessType.PROPERTY)
public abstract class AbstractVOResponse<DATA> {

    private DATA data;
    private boolean success = true;
    private String message;
    private String code;

    protected AbstractVOResponse() {
    }

    protected AbstractVOResponse(DATA data) {
        this.data = data;
    }

    public DATA getData() {
        return data;
    }

    public void setData(DATA data) {
        this.data = data;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
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
