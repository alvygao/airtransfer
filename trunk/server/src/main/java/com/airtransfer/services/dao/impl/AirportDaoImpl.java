package com.airtransfer.services.dao.impl;

import com.airtransfer.models.Airport;
import com.airtransfer.services.dao.AirportDao;
import com.airtransfer.services.dao.BaseDao;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

/**
 * User: sergey
 * Date: 3:47 PM 1/10/12
 */
@Repository
public class AirportDaoImpl extends BaseDao<Airport, Long> implements AirportDao {
   public AirportDaoImpl() {
      super(Airport.class);
   }

}
