package com.airtransfer.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: Sergey
 * Date: 11.11.11 21:42
 */

@Controller
@RequestMapping({"", "/", "home"})
public class HomeController extends AbstractController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView processGet(ModelAndView view) {
        logger.warn("processGet;");
        logger.warn("baseUrl=${};", getUrl());
        view.setViewName("home");
        return view;
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView processPost(ModelAndView view) {
        logger.debug("processPost;");
        return view;
    }

}
