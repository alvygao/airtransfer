package com.airtransfer.web.controllers;

import com.airtransfer.models.User;
import com.airtransfer.models.UserSession;
import com.airtransfer.services.UserService;
import com.airtransfer.services.dao.UserSessionDao;
import com.airtransfer.web.utils.SessionTokensHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
            final String sessionId = getSessionId(request);
            UserSession session = sessionDao.findByToken(sessionId);
            if (session == null) {
                session = new UserSession();
            }
            session.setUser(user);
            session.setJSessionId(sessionId);
            session.setCreated(new Date());
            sessionDao.persist(session);

            view.setViewName("profile/profile");
        } else {
            view.setViewName("redirect:/");
        }
        return view;
    }

}
