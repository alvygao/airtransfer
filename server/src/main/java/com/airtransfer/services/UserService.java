package com.airtransfer.services;

import com.airtransfer.models.User;

/**
 * User: Sergey
 * Date: 02.12.11 22:24
 */
public interface UserService {

    public User findUserByEmail(String email);

    public User create(User user);

}
