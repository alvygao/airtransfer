package com.airtransfer.services.dao;

import com.airtransfer.models.UserProfile;

/**
 * User: Sergey
 * Date: 18.12.11 14:11
 */
public interface UserProfileDao extends AbstractDao<UserProfile, Long> {

    UserProfile findProfileByUser(Long userId);
}
