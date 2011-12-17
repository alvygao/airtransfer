package com.airtransfer.rest.vo;

import com.airtransfer.rest.vo.vos.AbstractEntityVO;
import com.airtransfer.rest.vo.vos.UserProfileVO;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSeeAlso;

/**
 * User: sergey
 * Date: 4:06 PM 12/17/11
 */
@XmlRootElement
@XmlSeeAlso({
        UserProfileVO.class
})
public class BaseEntityVOResponse<E extends AbstractEntityVO> extends AbstractVOResponse<E> {

    public BaseEntityVOResponse() {
    }

    public BaseEntityVOResponse(E e) {
        super(e);
    }

}
