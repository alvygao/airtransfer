package com.airtransfer.rest.vo.user;

import com.airtransfer.models.User;
import com.airtransfer.rest.vo.AbstractVO;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

/**
 * User: Sergey
 * Date: 19.11.11 16:52
 */
@XmlAccessorType(XmlAccessType.PROPERTY)
public class UserVO extends AbstractVO<User> {

    public UserVO() {
    }

    public UserVO(User delegate) {
        super(delegate);
    }

    public Long getId() {
        return delegate.getId();
    }

    public void setId(Long id) {
        this.delegate.setId(id);
    }

    public String getName() {
        return delegate.getName();
    }

    public void setName(String name) {
        this.delegate.setName(name);
    }


}
