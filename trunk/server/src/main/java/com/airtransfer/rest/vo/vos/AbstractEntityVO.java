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

    public AbstractEntityVO() {
    }

}
