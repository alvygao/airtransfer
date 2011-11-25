package com.airtransfer.rest.vo;

import com.airtransfer.rest.vo.user.UserVO;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSeeAlso;

/**
 * User: Sergey
 * Date: 19.11.11 16:40
 */

@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
@XmlSeeAlso({AbstractResponse.class, AbstractVO.class, UserVO.class})
public class BaseResponse<VO extends AbstractVO> extends AbstractResponse {

    public BaseResponse() {
    }

    public BaseResponse(VO data) {
        this.data = data;
    }

    private VO data;

    public VO getData() {
        return data;
    }

    public void setData(VO data) {
        this.data = data;
    }
}
