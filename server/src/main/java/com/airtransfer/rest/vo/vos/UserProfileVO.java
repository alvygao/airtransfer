package com.airtransfer.rest.vo.vos;

import com.airtransfer.models.UserProfile;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * User: sergey
 * Date: 3:51 PM 12/17/11
 */
@XmlRootElement
public class UserProfileVO extends AbstractEntityVO<UserProfile> {

    public UserProfileVO() {
    }

    public String getAddress() {
        return entity.getAddress();
    }

    public void setAddress(String address) {
        entity.setAddress(address);
    }

    public UserProfileVO(UserProfile entity) {
        super(entity);
    }
}
