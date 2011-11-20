package com.airtransfer.rest.vo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

/**
 * User: Sergey
 * Date: 19.11.11 17:03
 */
@XmlRootElement()
@XmlAccessorType(XmlAccessType.PROPERTY)
public abstract class BaseRequest<VO extends AbstractVO> implements Serializable {

    private VO data;

    protected BaseRequest() {
    }

    protected BaseRequest(VO data) {
        this.data = data;
    }

    protected abstract VO getDelegate();

    public VO getData() {
        return data;
    }

    public void setData(VO data) {
        this.data = data;
    }
}
