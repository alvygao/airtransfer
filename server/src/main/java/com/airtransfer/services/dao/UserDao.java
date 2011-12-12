package com.airtransfer.services.dao;

import com.airtransfer.models.User;

/**
 * User: sergey
 * Date: 3:47 PM 12/10/11
 */
public interface UserDao extends AbstractDao<User, Long> {

    User findByEmail(String email);

    User findByRegUid(String hash);
}
