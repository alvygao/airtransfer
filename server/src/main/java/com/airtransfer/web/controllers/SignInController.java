package com.airtransfer.web.controllers;

import com.airtransfer.models.User;
import com.airtransfer.models.UserSession;
import com.airtransfer.services.UserService;
import com.airtransfer.services.dao.UserSessionDao;
import com.airtransfer.web.utils.SessionManager;
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
        if (user != null && user.getApproved()) {
            final HttpSession httpSession = request.getSession();
            final String token = httpSession.getId();
            UserSession session = sessionDao.findBySessionId(token);
            if (session != null) {
                logger.warn("User with such token already logged in; {}", token);
                session.setExpired(true);
                sessionDao.persist(session);
                SessionManager.remove(token);
            }
            session = new UserSession();
            session.setCreated(new Date());
            session.setJSessionId(token);
            session.setUser(user);
            sessionDao.persist(session);
            SessionManager.add(token);
            logger.info("User session created; {}", token);
            view.addObject("msg", "ok");
        } else {
            view.addObject("msg", "error");
        }
        view.setViewName("empty");
        return view;
    }

}
