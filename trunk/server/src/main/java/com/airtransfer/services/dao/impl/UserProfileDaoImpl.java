package com.airtransfer.services.dao.impl;

import com.airtransfer.models.UserProfile;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.UserProfileDao;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

/**
 * User: Sergey
 * Date: 18.12.11 16:19
 */
@Repository
public class UserProfileDaoImpl extends BaseDao<UserProfile, Long> implements UserProfileDao {
    public UserProfileDaoImpl() {
        super(UserProfile.class);
    }

    public UserProfile findProfileByUser(final Long userId) {
        return (UserProfile) getHibernateTemplate().execute(new HibernateCallback<Object>() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                return session.createQuery(" SELECT p FROM UserProfile p " +
                        " INNER JOIN FETCH p.user " +
                        " WHERE p.user.id = :userId ")
                        .setLong("userId", userId)
                        .uniqueResult();
            }
        });
    }
}
