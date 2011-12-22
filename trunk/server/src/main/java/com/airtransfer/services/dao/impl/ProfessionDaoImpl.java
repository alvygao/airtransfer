package com.airtransfer.services.dao.impl;

import com.airtransfer.models.Profession;
import com.airtransfer.services.dao.BaseDao;
import com.airtransfer.services.dao.ProfessionDao;
import org.springframework.stereotype.Repository;

/**
 * User: Sergey
 * Date: 22.12.11 16:09
 */
@Repository
public class ProfessionDaoImpl extends BaseDao<Profession, Long> implements ProfessionDao {
    public ProfessionDaoImpl() {
        super(Profession.class);
    }
}
