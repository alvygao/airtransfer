package com.airtransfer.services.dao.impl;

import com.airtransfer.models.ResetPasswordLink;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.ResetPasswordLinkDao;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Component;

import java.sql.SQLException;

/**
 * User: sergey
 * Date: 12:38 PM 12/12/11
 */
@Component
public class ResetPasswordLinkDaoImpl extends BaseDao<ResetPasswordLink, Long> implements ResetPasswordLinkDao {

    public ResetPasswordLinkDaoImpl() {
        super(ResetPasswordLink.class);
    }

    public ResetPasswordLink findByUid(final String uid) {
        return getHibernateTemplate().execute(new HibernateCallback<ResetPasswordLink>() {
            public ResetPasswordLink doInHibernate(Session session) throws HibernateException, SQLException {
                return (ResetPasswordLink) session.createQuery(" SELECT rpl " +
                        " FROM ResetPasswordLink as rpl " +
                        " INNER JOIN FETCH rpl.user as u" +
                        " WHERE rpl.uid = :hash " +
                        " AND rpl.processed = false")
                        .setString("hash", uid)
                        .uniqueResult();
            }
        });
    }
}
