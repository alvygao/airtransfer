package com.airtransfer.services.dao.impl;

import com.airtransfer.models.UserLanguage;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.UserLanguageDao;
import org.springframework.stereotype.Repository;

/**
 * User: Sergey
 * Date: 22.12.11 15:46
 */
@Repository
public class UserLanguageDaoImpl extends BaseDao<UserLanguage, Long> implements UserLanguageDao {
    public UserLanguageDaoImpl() {
        super(UserLanguage.class);
    }
}
