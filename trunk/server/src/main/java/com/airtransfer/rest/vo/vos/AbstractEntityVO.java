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

    public Long getRealId() {
        return (Long) entity.getId();
    }

    public void setRealId(Long id) {
        entity.setId(id);
    }

    public E model() {
        return entity;
    }
}
