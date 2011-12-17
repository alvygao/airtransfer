package com.airtransfer.web.controllers;

import com.airtransfer.models.User;
import com.airtransfer.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.ImagingOpException;
import java.io.IOException;

/**
 * User: sergey
 * Date: 3:36 PM 12/3/11
 */
@Controller
@RequestMapping("signin")
public class SignInController extends AbstractController {

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView processGet(HttpServletRequest request, HttpServletResponse response, ModelAndView view) throws IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = userService.findUserByEmailAndPassword(email, password);
        if (user != null) {
            view.setViewName("profile/profile");
        } else {
            view.setViewName("redirect:/");
        }
        return view;
    }

}
