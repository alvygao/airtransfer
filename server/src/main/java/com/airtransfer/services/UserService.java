package com.airtransfer.services;

import com.airtransfer.models.AuthenticationRequest;
import com.airtransfer.models.ResetPasswordLink;
import com.airtransfer.models.User;

/**
 * User: Sergey
 * Date: 02.12.11 22:24
 */
public interface UserService {

    User findUserByEmail(String email);

    User create(User user);

    AuthenticationRequest createRegistrationRequest(User user);

    void createResetPasswordLink(User user);

    ResetPasswordLink findResetPasswordLink(String uid);

    boolean updateUserStatusByHash(String hash);

    void updateUserPasswordByLink(String password, ResetPasswordLink link);

    User findUserByEmailAndPassword(String email, String password);
}
