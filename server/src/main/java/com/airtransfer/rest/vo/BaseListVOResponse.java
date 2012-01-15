package com.airtransfer.rest.vo;

import com.airtransfer.rest.vo.vos.*;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSeeAlso;
import java.util.ArrayList;

/**
 * User: Sergey
 * Date: 21.12.11 22:56
 */
@XmlRootElement
@XmlSeeAlso({
        UserProfileVO.class,
        PairVO.class,
        AirportVO.class,
        TrinityVO.class,
        FlightVO.class,
        AirportSearchVO.class
})
@XmlAccessorType(XmlAccessType.PROPERTY)
public class BaseListVOResponse {

    private ArrayList data;
    private boolean success = true;
    private String error;

    public BaseListVOResponse(boolean success, String error) {
        this.success = success;
        this.error = error;
    }

    public BaseListVOResponse() {
    }

    public BaseListVOResponse(ArrayList data) {
        this.data = data;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public ArrayList getData() {
        return data;
    }

    public void setData(ArrayList data) {
        this.data = data;
    }

}
