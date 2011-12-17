package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.AbstractEntity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import java.io.Serializable;

/**
 * User: sergey
 * Date: 3:37 PM 12/17/11
 */
@XmlAccessorType(XmlAccessType.PROPERTY)
public class AbstractEntityVO<E extends AbstractEntity> {

    protected E entity;

    public AbstractEntityVO() {
    }

    public AbstractEntityVO(E entity) {
        this.entity = entity;
    }

    public Object getRealId() {
        return entity.getId();
    }

    public void setRealId(Object id) {
        entity.setId((Serializable)id);
    }
}
