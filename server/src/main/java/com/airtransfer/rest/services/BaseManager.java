package com.airtransfer.rest.services;

import com.airtransfer.models.UserSession;
import com.airtransfer.services.dao.UserSessionDao;
import com.airtransfer.web.utils.SessionManager;
import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * User: Sergey
 * Date: 18.12.11 14:21
 */
@Component
public abstract class BaseManager {


    @Autowired
    protected UserSessionDao sessionDao;

    protected final Logger logger = LoggerFactory.getLogger(getClass());

    protected UserSession getSession() {
        String sessionId = SessionManager.getCurrentSession();
        UserSession userSession = sessionDao.findBySessionId(sessionId);
        if (userSession == null) {
            throw new IllegalArgumentException("Session doesn't exist");
        }
        return userSession;
    }

    public <T> T convert(Class<T> clazz, T entity, Element container) {
        try {
            NodeList childNodes = container.getChildNodes();
            for (int index = 0; index < childNodes.getLength(); index++) {
                Node item = childNodes.item(index);
                BeanUtils.setProperty(entity, item.getNodeName(), item.getTextContent());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return entity;
    }

}
