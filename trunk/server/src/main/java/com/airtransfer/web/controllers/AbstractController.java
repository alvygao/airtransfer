package com.airtransfer.web.controllers;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * User: Sergey
 * Date: 14.11.11 23:19
 */

@Component
public abstract class AbstractController {

    @ModelAttribute("baseUrl")
    public String getBaseUrl() {
        return "http://localhost:8080/airtransfer";
    }

}
