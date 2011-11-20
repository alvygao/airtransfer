package com.airtransfer.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * User: Sergey
 * Date: 14.11.11 23:19
 */

@Component
public abstract class AbstractController {

    protected AbstractController() {
        System.out.println("boo");
    }

//    @Value("${serverUrl}")
    private String baseUrl;

    @ModelAttribute("baseUrl")
    public String getBaseUrl() {
        return "http://127.0.0.1:8080/airtransfer";
    }

    public void setBaseUrl(String baseUrl) {
//        this.baseUrl = baseUrl;
    }
}
