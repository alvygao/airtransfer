package com.airtransfer.services.dao;

import com.airtransfer.models.AbstractEntity;

import java.io.Serializable;
import java.util.List;

/**
 * User: sergey
 * Date: 3:28 PM 12/10/11
 */
public interface AbstractDao<E extends AbstractEntity, ID extends Serializable> {

    E load(ID id);

    E get(ID id);

    E update(E e);

    E save(E e);

    void persist(E e);

    void delete(E id);

    void delete(ID id);

    List listAll();

}
