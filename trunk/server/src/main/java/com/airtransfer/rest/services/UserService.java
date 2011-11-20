package com.airtransfer.rest.services;

import com.airtransfer.models.User;
import com.airtransfer.rest.vo.AbstractVO;
import com.airtransfer.rest.vo.BaseResponse;
import com.airtransfer.rest.vo.user.UserRequest;
import com.airtransfer.rest.vo.user.UserVO;
import org.springframework.stereotype.Component;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

/**
 * User: Sergey
 * Date: 19.11.11 16:30
 */
@Component
@Path("/user")
public class UserService {

    private UserVO vo;

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public BaseResponse<UserVO> get() {
        User delegate = new User();
        delegate.setId(123123l);
        delegate.setName("old user");
        vo = new UserVO(delegate);
        return new BaseResponse<UserVO>(vo);
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
