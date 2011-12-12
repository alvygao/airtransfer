package com.airtransfer.services.dao.impl;

import com.airtransfer.models.User;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.UserDao;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

/**
 * User: sergey
 * Date: 3:48 PM 12/10/11
 */
@Repository
public class UserDaoImpl extends BaseDao<User, Long> implements UserDao {

    public UserDaoImpl() {
        super(User.class);
    }

    public User findByEmail(final String email) {
        return getHibernateTemplate().execute(new HibernateCallback<User>() {
            public User doInHibernate(Session session) throws HibernateException, SQLException {
                return (User) session.createCriteria(clazz)
                        .add(Restrictions.eq("email", email))
                        .uniqueResult();
            }
        });
    }

    public User findByRegUid(final String hash) {
        return (User) getHibernateTemplate().execute(new HibernateCallback<Object>() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                return session.createQuery(" SELECT u FROM AuthenticationRequest as ar " +
                        " INNER JOIN ar.user as u " +
                        " WHERE ar.uid = :uid ")
                        .setString("uid", hash)
                        .uniqueResult();
            }
        });
    }
}
