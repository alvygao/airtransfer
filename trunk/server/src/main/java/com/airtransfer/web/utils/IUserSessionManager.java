package com.airtransfer.web.utils;

import javax.servlet.http.HttpSession;

/**
 * User: Sergey
 * Date: 25.12.11 21:27
 */
public interface IUserSessionManager {

    void create(HttpSession session);

    void destroy(HttpSession session);

    void update(HttpSession session);

}
