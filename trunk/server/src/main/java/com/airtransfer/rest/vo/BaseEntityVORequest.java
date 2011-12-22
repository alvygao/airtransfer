package com.airtransfer.rest.vo;

import com.airtransfer.rest.vo.vos.AbstractEntityVO;
import com.airtransfer.rest.vo.vos.PairVO;
import com.airtransfer.rest.vo.vos.UserProfileVO;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSeeAlso;
import java.util.ArrayList;

/**
 * User: sergey
 * Date: 3:31 PM 12/17/11
 */
@XmlRootElement
@XmlSeeAlso({
        UserProfileVO.class,
        PairVO.class
})
public class BaseEntityVORequest<E extends AbstractEntityVO> extends AbstractVORequest<AbstractEntityVO> {

    public BaseEntityVORequest() {
    }


    public <T> T model(Class<T> clazz) {
        T inst = null;
        try {
            inst = clazz.newInstance();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return inst;
    }
}
