package com.airtransfer.rest.vo;

import com.airtransfer.models.BaseEntity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import java.io.Serializable;

/**
 * User: Sergey
 * Date: 19.11.11 16:42
 */
@XmlAccessorType(XmlAccessType.PROPERTY)
public class AbstractVO<D extends BaseEntity> implements Serializable {
    protected D delegate;

    public AbstractVO() {
    }

    public AbstractVO(D delegate) {
        this.delegate = delegate;
    }

    public D model() {
        return this.delegate;
    }
}
