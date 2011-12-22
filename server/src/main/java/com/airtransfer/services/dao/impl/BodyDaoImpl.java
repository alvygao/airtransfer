package com.airtransfer.services.dao.impl;

import com.airtransfer.models.Body;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.BodyDao;
import org.springframework.stereotype.Repository;

/**
 * User: Sergey
 * Date: 22.12.11 15:26
 */
@Repository
public class BodyDaoImpl extends BaseDao<Body, Long> implements BodyDao {
    public BodyDaoImpl() {
        super(Body.class);
    }
}
