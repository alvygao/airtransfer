package com.airtransfer.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * User: sergey
 * Date: 3:36 PM 12/3/11
 */
@Controller
@RequestMapping("/sign")
public class SignInController extends AbstractController {

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView processGet(HttpServletRequest request, ModelAndView view) {
        String email = (String) request.getAttribute("email");
        String password = (String) request.getAttribute("password");
        view.setViewName("home");
        return view;
    }

}
