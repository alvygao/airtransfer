package com.airtransfer.services.dao.impl;

import com.airtransfer.models.City;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.CityDao;
import org.springframework.stereotype.Repository;

/**
 * User: Sergey
 * Date: 08.01.12 18:46
 */
@Repository
public class CityDaoImpl extends BaseDao<City, Long> implements CityDao {

    public CityDaoImpl() {
        super(City.class);
    }
}
