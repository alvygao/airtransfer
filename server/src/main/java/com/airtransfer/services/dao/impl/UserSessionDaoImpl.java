package com.airtransfer.services.dao.impl;

import com.airtransfer.models.UserSession;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.UserSessionDao;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

/**
 * User: Sergey
 * Date: 18.12.11 15:34
 */
@Repository
public class UserSessionDaoImpl extends BaseDao<UserSession, Long> implements UserSessionDao {
    public UserSessionDaoImpl() {
        super(UserSession.class);
    }

    public UserSession findByToken(final String token) {
        return (UserSession) getHibernateTemplate().execute(new HibernateCallback<Object>() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                return session.createQuery("SELECT us FROM UserSession us " +
                        " INNER JOIN FETCH us.user " +
                        " WHERE us.JSessionId = :token ")
                        .setString("token", token)
                        .uniqueResult();
            }
        });
    }
}
