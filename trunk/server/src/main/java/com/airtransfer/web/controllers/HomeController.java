package com.airtransfer.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * User: Sergey
 * Date: 11.11.11 21:42
 */

@Controller
@RequestMapping(value = {"/", "/home"})
public class HomeController extends AbstractController {

    private Logger logger = LoggerFactory.getLogger(getClass());

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView processGet(ModelAndView view) {
        logger.warn("processGet");
        view.setViewName("home");
        return view;
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView processPost(ModelAndView view) {
        logger.warn("processPost");
        view.setViewName("home");
        Map<String, Object> map = view.getModel();
        StringBuilder builder = new StringBuilder();

        for (String key : map.keySet()) {
            builder.append(map.get(key).toString()).append(',');
        }
        view.addObject("msg", builder.toString());
        return view;
    }

}
