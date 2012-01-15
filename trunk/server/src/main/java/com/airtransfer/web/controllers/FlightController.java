package com.airtransfer.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: Sergey
 * Date: 14.01.12 14:52
 */
@Controller
@RequestMapping(value = "/flights")
public class FlightController extends AbstractController {

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView createFlight(ModelAndView view) {
        view.setViewName("flights/createFlight");
        return view;
    }

    @RequestMapping(value = "/future", method = RequestMethod.GET)
    public ModelAndView futureFlights(ModelAndView view) {
        view.setViewName("flights/futureFlights");
        return view;
    }

    @RequestMapping(value = "/current", method = RequestMethod.GET)
    public ModelAndView currentFlights(ModelAndView view) {
        view.setViewName("flights/currentFlights");
        return view;
    }

    @RequestMapping(value = "/removed", method = RequestMethod.GET)
    public ModelAndView removedFlights(ModelAndView view) {
        view.setViewName("flights/removedFlights");
        return view;
    }

}
