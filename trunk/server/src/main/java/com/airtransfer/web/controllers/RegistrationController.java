package com.airtransfer.web.controllers;

import com.airtransfer.models.User;
import com.airtransfer.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * User: Sergey
 * Date: 14.11.11 22:48
 */
@Controller
@RequestMapping("/registration")
public class RegistrationController extends AbstractController {

    @Autowired
    protected UserService userService;

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView processPost(HttpServletRequest request, ModelAndView view) {
        logger.debug("processPost;");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repeat = request.getParameter("password_repeat");

        if (validate(view, email, password, repeat)) {
            User user = userService.findUserByEmail(email);
            if (user != null) {
                view.setViewName("registration/fail");
                return view.addObject("warning", "User with such email already exists");
            }
            final User newUser = new User(email, password);
            newUser.setCreated(new Date());
            userService.create(newUser);
            view.addObject("warning", "User was created, please check your email for registration email");
            view.setViewName("registration/successful");
        } else {
            view.setViewName("registration/fail");
        }
        return view;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView processGet(HttpServletRequest request, ModelAndView view) {
        logger.debug("processGet;");
        view.setViewName("registration/registration");
        return view;
    }

    @RequestMapping(value = "/authorize/{hash}", method = RequestMethod.GET)
    public ModelAndView authorizeByHash(HttpServletRequest request, ModelAndView view, @PathVariable("hash") String hash) {
        logger.debug("authorizeByHash; hash={}", hash);
        if (userService.updateUserStatusByHash(hash)) {
            view.addObject("warning", "User has been approved");
            view.setViewName("registration/successful");
        } else {
            view.addObject("warning", "Can't find authentication request");
            view.setViewName("redirect:/");
        }
        return view;
    }


    protected boolean validate(ModelAndView view, String email, String password, String repeat) {
        if (!StringUtils.hasText(email) || !email.contains("@")) {
            view.addObject("warning", "Invalid email");
            return false;
        }
        if (!StringUtils.hasText(password)) {
            view.addObject("warning", "Invalid password");
            return false;
        }
        if (!StringUtils.hasText(repeat)) {
            view.addObject("warning", "Invalid password");
            return false;
        }
        if (!repeat.equals(password)) {
            view.addObject("warning", "Passwords don't match each other");
            return false;
        }
        return true;
    }
}
