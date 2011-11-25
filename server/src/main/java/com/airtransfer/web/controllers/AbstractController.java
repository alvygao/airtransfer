package com.airtransfer.web.controllers;

import com.sun.jersey.api.json.JSONConfiguration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.annotation.Resource;
import java.io.File;

/**
 * User: Sergey
 * Date: 14.11.11 23:19
 */

public abstract class AbstractController {

    protected final Logger logger = LoggerFactory.getLogger(getClass());

    protected AbstractController() {
    }

    private String baseUrl;

    @ModelAttribute("baseAppUrl")
    public String getBaseUrl() {
        return baseUrl;
    }

    @Value("${serverUrl}")
    public void setBaseUrl(String baseUrl) {
        logger.error("setBaseUrl", baseUrl);
        this.baseUrl = baseUrl;
    }


    public String getUrl() {
        logger.error("getBaseUrl", baseUrl);
        return baseUrl;
    }

}
