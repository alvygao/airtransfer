package com.airtransfer.services.dao;

import com.airtransfer.models.AbstractEntity;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

/**
 * User: sergey
 * Date: 3:36 PM 12/10/11
 */
@Transactional(readOnly = true)
public abstract class BaseDao<E extends AbstractEntity, ID extends Serializable> extends HibernateDaoSupport implements AbstractDao<E, ID> {

    protected Class clazz;

    protected BaseDao(Class clazz) {
        this.clazz = clazz;
    }

    @Autowired
    public void setFactory(SessionFactory factory) {
        this.setSessionFactory(factory);
    }

    @SuppressWarnings("unchecked")
    public E load(ID id) {
        final E entity = (E) getHibernateTemplate().get(clazz, id);
        if (entity == null) {
            throw new ObjectNotFoundException(id, clazz.getName());
        }
        return entity;
    }

    @SuppressWarnings("unchecked")
    public E get(ID id) {
        return (E) getHibernateTemplate().get(clazz, id);
    }

    @Transactional()
    public E update(E e) {
        getHibernateTemplate().update(e);
        return e;
    }

    @Transactional()
    @SuppressWarnings("unchecked")
    public E save(E e) {
        getHibernateTemplate().save(e);
        return e;
    }

    @Transactional()
    public void delete(ID id) {
        getHibernateTemplate().delete(get(id));
    }

    @Transactional()
    @SuppressWarnings("unchecked")
    public void delete(E e) {
        ID id = (ID) e.getId();
        getHibernateTemplate().delete(get(id));
    }
}
