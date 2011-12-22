package com.airtransfer.rest.services;

import com.airtransfer.models.UserSession;
import com.airtransfer.services.dao.UserSessionDao;
import com.airtransfer.web.utils.SessionTokensHolder;
import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.ws.rs.Path;

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
        final String token = SessionTokensHolder.getInstance().get();
        if (token != null) {
            System.out.println("token=" + token);
            UserSession session = sessionDao.findByToken(token);
            if (session != null) {
                return session;
            }
        }
        throw new IllegalArgumentException("Session doesn't exist");
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
