package com.airtransfer.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: Sergey
 * Date: 08.02.12 23:33
 */
@Controller
@RequestMapping(value = "/flights")

public class AlbumController {
    @RequestMapping( method = RequestMethod.GET)
    public ModelAndView createFlight(ModelAndView view) {
        view.setViewName("profile/albums");
        return view;
    }

}
