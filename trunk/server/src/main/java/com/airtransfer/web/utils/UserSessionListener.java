package com.airtransfer.web.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * User: Sergey
 * Date: 25.12.11 19:34
 */
public class UserSessionListener implements HttpSessionListener {
    private Logger logger = LoggerFactory.getLogger(getClass());

    public void sessionCreated(HttpSessionEvent event) {
        logger.info("Session create {}", event.getSession().getId());
    }

    public void sessionDestroyed(HttpSessionEvent event) {
        logger.info("Session expired {}", event.getSession().getId());
    }
}
