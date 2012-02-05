package com.airtransfer.web.controllers;

import com.airtransfer.models.Flight;
import com.airtransfer.rest.vo.vos.FlightVO;
import com.airtransfer.services.dao.FlightDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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

    @Autowired
    protected FlightDao dao;

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

    @RequestMapping(value = "/edit/{flightId}", method = RequestMethod.GET)
    public ModelAndView editFlight(ModelAndView view, @PathVariable() Long flightId) {
        Flight flight = dao.get(flightId);
        view.addObject("flight", new FlightVO(flight));
        view.setViewName("flights/editFlight");
        return view;
    }

}
