package com.airtransfer.rest.vo;

import com.airtransfer.models.Airport;
import com.airtransfer.rest.vo.vos.AirportVO;
import com.airtransfer.rest.vo.vos.PairVO;
import com.airtransfer.rest.vo.vos.TrinityVO;
import com.airtransfer.rest.vo.vos.UserProfileVO;

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
        TrinityVO.class
})
public class BaseListVOResponse {

    private ArrayList data;
    private boolean success = true;
    private String error;

    public BaseListVOResponse() {
    }

    public BaseListVOResponse(ArrayList data) {
        this.data = data;
    }

    public ArrayList getData() {
        return data;
    }

    public void setData(ArrayList data) {
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
}
