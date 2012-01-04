package com.airtransfer.web.controllers;

import com.airtransfer.web.utils.WebConstants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 * User: Sergey
 * Date: 14.11.11 23:19
 */

public abstract class AbstractController {

    protected final Logger logger = LoggerFactory.getLogger(getClass());

    private String baseUrl;
    private Boolean isAuthorised = false;

    @ModelAttribute("baseAppUrl")
    public String getBaseUrl() {
        return baseUrl;
    }

    @ModelAttribute("isAuthorized")
    public Boolean isAuthorized() {
        if (isAuthorised) {
            return !(isAuthorised = false);
        } else {
            return !(isAuthorised = true);
        }
    }

    @Value("${serverUrl}")
    public void setBaseUrl(String baseUrl) {
        logger.debug("setBaseUrl", baseUrl);
        this.baseUrl = baseUrl;
    }

    public String getUrl() {
        logger.debug("getBaseUrl", baseUrl);
        return baseUrl;
    }

    public String getSessionId(HttpServletRequest request) {
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equalsIgnoreCase(WebConstants.JSESSIONID)) {
                return cookie.getValue();
            }
        }
        return null;
    }
}
