package com.airtransfer.rest.services;

import com.airtransfer.models.User;
import com.airtransfer.models.UserProfile;
import com.airtransfer.rest.vo.AbstractVO;
import com.airtransfer.rest.vo.BaseEntityVOResponse;
import com.airtransfer.rest.vo.BaseResponse;
import com.airtransfer.rest.vo.user.UserRequest;
import com.airtransfer.rest.vo.user.UserVO;
import com.airtransfer.rest.vo.vos.UserProfileVO;
import org.springframework.stereotype.Component;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

/**
 * User: Sergey
 * Date: 19.11.11 16:30
 */
@Component
@Path("/user/profile")
public class UserProfileManager {

    private UserVO vo;

    @GET
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public BaseEntityVOResponse<UserProfileVO> get() {
        final UserProfile entity = new UserProfile();
        entity.setAddress("adfdasf");
        return new BaseEntityVOResponse<UserProfileVO>(new UserProfileVO(entity));
    }

    @POST
    @Produces({MediaType.APPLICATION_JSON})
    @Consumes({MediaType.APPLICATION_JSON})
    public BaseResponse<UserVO> create(UserRequest request) {
        User delegate = new User();
        delegate.setId(123123l);
        delegate.setName("new user");
        vo = new UserVO(delegate);
        return new BaseResponse<UserVO>(vo);
    }
}
