package com.airtransfer.rest.vo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

/**
 * User: sergey
 * Date: 3:29 PM 12/17/11
 */
@XmlAccessorType(XmlAccessType.PROPERTY)
public abstract class AbstractVORequest<DATA> {

    private DATA data;

    public DATA getData() {
        return data;
    }

    public void setData(DATA data) {
        this.data = data;
    }
}
