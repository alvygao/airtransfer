package com.airtransfer.web.controllers;

import com.airtransfer.models.User;
import com.airtransfer.models.UserSession;
import com.airtransfer.services.UserService;
import com.airtransfer.services.dao.UserSessionDao;
import com.airtransfer.web.utils.UserSessionManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;


/**
 * User: sergey
 * Date: 3:36 PM 12/3/11
 */
@Controller
@RequestMapping("signin")
public class SignInController extends AbstractController {

    @Autowired
    private UserService userService;
    @Autowired
    private UserSessionDao sessionDao;

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView processGet(HttpServletRequest request, HttpServletResponse response, ModelAndView view) throws IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = userService.findUserByEmailAndPassword(email, password);
        if (user != null) {
            HttpSession session = request.getSession();
            final UserSession userSession = new UserSession();
            userSession.setCreated(new Date());
            userSession.setJSessionId(session.getId());
            userSession.setUser(user);
            userSession.setExpired(Boolean.FALSE);
            sessionDao.persist(userSession);
            UserSessionManager.getInstance().grant(session);
            view.addObject("msg", "ok");
        } else {
            view.addObject("msg", "error");
        }

        view.setViewName("empty");
        return view;
    }

}
