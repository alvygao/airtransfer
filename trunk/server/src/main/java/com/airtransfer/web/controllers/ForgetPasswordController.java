package com.airtransfer.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: Sergey
 * Date: 02.12.11 17:57
 */
@Controller()
@RequestMapping("forgetpassword")
public class ForgetPasswordController extends AbstractController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView processGet(ModelAndView view) {
        view.setViewName("forgetpassword/forgetpassword");
        return view;
    }

    @RequestMapping(value = "/reset/{hash}", method = RequestMethod.GET)
    public ModelAndView processResetPassword(ModelAndView view, @PathVariable(value = "hash") String hash) {
        view.setViewName("forgetpassword/reset");
        return view;
    }

    @RequestMapping(value = "/reset", method = RequestMethod.POST)
    public ModelAndView processResetPassword(ModelAndView view) {
        view.setViewName("forgetpassword/waitforemail");
        return view;
    }

}
