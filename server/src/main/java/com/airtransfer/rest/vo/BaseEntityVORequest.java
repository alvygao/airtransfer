package com.airtransfer.rest.vo;

import com.airtransfer.rest.vo.vos.AbstractEntityVO;
import com.airtransfer.rest.vo.vos.UserProfileVO;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSeeAlso;

/**
 * User: sergey
 * Date: 3:31 PM 12/17/11
 */
@XmlRootElement
@XmlSeeAlso({
        UserProfileVO.class
})
public class BaseEntityVORequest<E extends AbstractEntityVO> extends AbstractVORequest<AbstractEntityVO> {

    public BaseEntityVORequest() {
    }
}
