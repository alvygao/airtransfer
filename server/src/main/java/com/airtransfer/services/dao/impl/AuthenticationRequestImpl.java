package com.airtransfer.services.dao.impl;

import com.airtransfer.models.AuthenticationRequest;
import com.airtransfer.models.User;
import com.airtransfer.services.dao.AuthenticationRequestDao;
import com.airtransfer.services.dao.BaseDao;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

/**
 * User: sergey
 * Date: 3:51 PM 12/10/11
 */
@Repository
public class AuthenticationRequestImpl extends BaseDao<AuthenticationRequest, Long> implements AuthenticationRequestDao {

    public AuthenticationRequestImpl() {
        super(AuthenticationRequest.class);
    }

    public AuthenticationRequest findByRegUid(final String hash) {
        return (AuthenticationRequest) getHibernateTemplate().execute(new HibernateCallback<Object>() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                return session.createQuery(" SELECT ar FROM AuthenticationRequest as ar " +
                        " INNER JOIN FETCH ar.user " +
                        " WHERE ar.uid = :uid " +
                        " AND ar.processed = false " )
                        .setString("uid", hash)
                        .uniqueResult();
            }
        });
    }

}
