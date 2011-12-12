package com.airtransfer.web.controllers;

import com.airtransfer.models.ResetPasswordLink;
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

/**
 * User: Sergey
 * Date: 02.12.11 17:57
 */
@Controller()
@RequestMapping("forgetpassword")
public class ForgetPasswordController extends AbstractController {
    @Autowired
    UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView processGet(ModelAndView view) {
        view.setViewName("forgetpassword/forgetpassword");
        return view;
    }

    @RequestMapping(value = "/reset/{hash}", method = RequestMethod.GET)
    public ModelAndView processResetPassword(ModelAndView view, @PathVariable(value = "hash") String hash) {
        if (StringUtils.hasText(hash)) {
            ResetPasswordLink link = userService.findResetPasswordLink(hash);
            view.addObject("hideUid", link.getUid());
        } else {
            view.setViewName("home");
        }
        return view;
    }

    @RequestMapping(value = "/reset/{hash}", method = RequestMethod.POST)
    public ModelAndView updatePassword(HttpServletRequest request, ModelAndView view, @PathVariable(value = "hash") String hash) {
        final String newPassword = (String) request.getAttribute("new_password");
        final String newPassword2 = (String) request.getAttribute("new_password_again");
        final String hiddenUid = (String) request.getAttribute("hiddenUid");

        if (validate(hash, hiddenUid, newPassword, newPassword2, view)) {
            ResetPasswordLink link = userService.findResetPasswordLink(hash);
            view.addObject("hiddenUid", link.getUid());
        } else {
            view.setViewName("home");
        }
        return view;
    }

    @RequestMapping(value = "/reset", method = RequestMethod.POST)
    public ModelAndView processResetPassword(HttpServletRequest request, ModelAndView view) {
        String email = (String) request.getAttribute("email");
        if (email != null) {
            User user = userService.findUserByEmail(email);
            if (user != null) {
                userService.createResetPasswordLink(user);
                view.addObject("warning", "Please, check your email box for new incoming message");
                view.setViewName("forgetpassword/waitforemail");
            }
        }
        view.addObject("warning", "Invalid data");
        view.setViewName("home");
        return view;
    }

    private boolean validate(String uid, String hiddenUid, String password, String password2, ModelAndView view) {
        if (!StringUtils.hasText(uid) || !StringUtils.hasText(hiddenUid)) {
            view.addObject("warning", "Hidden Uid or Uid are empty ");
            return false;
        }
        if (!uid.equals(hiddenUid)) {
            view.addObject("warning", "Hidden Uid and Uid are not equals");
            return false;
        }
        if (!StringUtils.hasText(password) || !StringUtils.hasText(password2)) {
            view.addObject("warning", "One of passwords is empty ;");
            return false;
        }
        if (!password.equals(password2)) {
            view.addObject("warning", "Passwords are not equals;");
            return false;
        }
        return true;
    }
}
