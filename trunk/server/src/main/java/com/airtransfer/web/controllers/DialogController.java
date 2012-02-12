package com.airtransfer.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: Sergey
 * Date: 12.02.12 16:58
 */
@Controller
@RequestMapping(value = "/messages")
public class DialogController {
    @RequestMapping(value = "/dialog/{id}", method = RequestMethod.GET)
    public ModelAndView editFlight(ModelAndView view, @PathVariable() Long id) {
        view.setViewName("messages/dialog");
        return view;
    }
}
