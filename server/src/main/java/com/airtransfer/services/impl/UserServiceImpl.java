package com.airtransfer.services.impl;

import com.airtransfer.models.User;
import com.airtransfer.services.UserService;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
import org.springframework.stereotype.Component;

import java.util.HashMap;

/**
 * User: Sergey
 * Date: 02.12.11 22:25
 */
@Component
public class UserServiceImpl implements UserService {
    private HashMap<String, User> users = new HashMap<String, User>();

    public User findUserByEmail(String email) {
        return users.get(email);
    }

    public User create(User user) {
        user.setId(System.currentTimeMillis());
        users.put(user.getEmail(), user);
        return user;
    }
}
