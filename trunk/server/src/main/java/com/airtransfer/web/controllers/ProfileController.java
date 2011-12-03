package com.airtransfer.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: Sergey
 * Date: 03.12.11 11:27
 */
@Controller
@RequestMapping("/profile")
public class ProfileController extends AbstractController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView processGet(ModelAndView view) {
        view.setViewName("profile/profile");
        return view;
    }

    @RequestMapping(value = "/friends", method = RequestMethod.GET)
    public ModelAndView processFriends(ModelAndView view) {
        view.setViewName("profile/friends");
        return view;
    }

    @RequestMapping(value = "/flights", method = RequestMethod.GET)
    public ModelAndView processFlights(ModelAndView view) {
        view.setViewName("profile/flights");
        return view;
    }

    @RequestMapping(value = "/albums", method = RequestMethod.GET)
    public ModelAndView processAlbums(ModelAndView view) {
        view.setViewName("profile/albums");
        return view;
    }
}
