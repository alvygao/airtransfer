package com.airtransfer.services.dao.impl;

import com.airtransfer.models.Flight;
import com.airtransfer.models.User;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.FlightDao;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 * User: sergey
 * Date: 3:44 PM 1/10/12
 */
@Repository
public class FlightDaoImpl extends BaseDao<Flight, Long> implements FlightDao {

    public FlightDaoImpl() {
        super(Flight.class);
    }

    @Transactional(readOnly = true)
    @SuppressWarnings("unchecked")
    public List<Flight> getFlightsByUser(final User user) {
        return (List<Flight>) getHibernateTemplate().execute(new HibernateCallback<Object>() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                return session.createCriteria(Flight.class)
                        .add(Restrictions.eq("owner.id", user.getId())).list();
            }
        });
    }

    @SuppressWarnings("unchecked")
    public List<Flight> getCurrentFlightsByUser(final User user) {
        final Date now = new Date();
        return getHibernateTemplate().executeFind(new HibernateCallback<List<Flight>>() {
            public List<Flight> doInHibernate(Session session) throws HibernateException, SQLException {
                return session.createQuery(" SELECT f from Flight  f " +
                        " WHERE f.owner.id = :userId AND :date >= f.departureDate AND :date <= f.arriveDate ")
                        .setDate("date", now)
                        .setLong("userId", user.getId())
                        .list();
            }
        });
    }

    @SuppressWarnings("unchecked")
    public List<Flight> getFutureFlightsByUser(final User user) {
        final Date now = new Date();
        return getHibernateTemplate().executeFind(new HibernateCallback<List<Flight>>() {
            public List<Flight> doInHibernate(Session session) throws HibernateException, SQLException {
                return session.createQuery(" SELECT f from Flight  f " +
                        " WHERE f.owner.id = :userId AND f.departureDate > :date ")
                        .setDate("date", now)
                        .setLong("userId", user.getId())
                        .list();
            }
        });
    }

    @SuppressWarnings("unchecked")
    public List<Flight> getOldFlightsByUser(final User user) {
        final Date now = new Date();
        return getHibernateTemplate().executeFind(new HibernateCallback<List<Flight>>() {
            public List<Flight> doInHibernate(Session session) throws HibernateException, SQLException {
                return session.createQuery(" SELECT f from Flight  f " +
                        " WHERE f.owner.id = :userId AND f.arriveDate < :date " )
                        .setDate("date", now)
                        .setLong("userId", user.getId())
                        .list();
            }
        });
    }

}
