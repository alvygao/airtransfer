package com.airtransfer.rest.vo.user;

import com.airtransfer.models.User;
import com.airtransfer.rest.vo.AbstractVO;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSeeAlso;
import java.io.Serializable;

/**
 * User: Sergey
 * Date: 19.11.11 17:05
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
@XmlSeeAlso({
        AbstractVO.class,
        UserVO.class
})
public class UserRequest implements Serializable {

    private UserVO data;

    protected UserVO getDelegate() {
        return new UserVO(new User());
    }

    public UserVO getData() {
        return data;
    }

    public void setData(UserVO data) {
        this.data = data;
    }
}
