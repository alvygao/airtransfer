package com.airtransfer.services.dao.impl;

import com.airtransfer.models.Country;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.CountryDao;
import org.springframework.stereotype.Repository;

/**
 * User: Sergey
 * Date: 21.12.11 22:37
 */
@Repository
public class CountryDaoImpl extends BaseDao<Country, Long> implements CountryDao {
    public CountryDaoImpl() {
        super(Country.class);
    }
}
