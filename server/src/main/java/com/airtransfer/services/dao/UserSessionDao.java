package com.airtransfer.services.dao;

import com.airtransfer.models.UserSession;

/**
 * User: Sergey
 * Date: 18.12.11 14:53
 */
public interface UserSessionDao extends AbstractDao<UserSession, Long> {
    UserSession findBySessionId(String token);
}
