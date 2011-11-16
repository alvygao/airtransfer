package com.airtransfer.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: Sergey
 * Date: 14.11.11 22:48
 */
@Controller
@RequestMapping("/registration")
public class RegistrationController {

    private static final Logger logger = LoggerFactory.getLogger(RegistrationController.class);

    public ModelAndView processGet(ModelAndView view) {
        logger.info("processGet;");
        return view;
    }
}
