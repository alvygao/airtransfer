package com.airtransfer.web.utils;

import com.airtransfer.models.UserSession;
import com.airtransfer.services.dao.UserSessionDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.geom.RectangularShape;
import java.io.IOException;

/**
 * User: Sergey
 * Date: 18.12.11 14:24
 */
public class SecurityFilter implements Filter {
    protected final Logger logger = LoggerFactory.getLogger(getClass());


    public void init(FilterConfig filterConfig) throws ServletException {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        if (isGranted(httpRequest)) {
            SessionTokensHolder.getInstance().put(httpRequest.getSession().getId());
        } else {
            httpResponse.sendRedirect("/html/");
        }
        chain.doFilter(request, response);
    }

    public void destroy() {
        logger.debug("destroy;");
    }

    private boolean requireSignIn(HttpServletRequest request) {
        return false;
    }

    private boolean isGranted(HttpServletRequest request) {
        final String ajaxHeader = request.getHeader("X-Requested-With");
        final String uri = request.getRequestURI();
        return true;
//        if (ajaxHeader != null) {
//
//            if (uri.startsWith("/html/singin")) {
//                return true;
//            } else if (UserSessionManager.getInstance().isGranted(request.getSession())) {
//                SessionTokensHolder.getInstance().put(request.getSession().getId());
//                return true;
//            }
//            return false;
//        } else {
//            return isPublic(uri);
//        }
    }

    private boolean isPublic(String resource) {
        if (resource.startsWith("/html/forgetpassword")
                || resource.startsWith("/html/home")
                || resource.startsWith("/html/registration")
                || resource.startsWith("/html/signin")
                || resource.equals("/") || resource.equals("/html/")) {
            return true;
        }

        if (resource.endsWith(".png")
                || resource.endsWith(".jpg")
                || resource.endsWith(".css")
                || resource.endsWith(".js")) {
            return true;
        }

        System.out.println("UNAUTHORIZED ACCESS " + resource);
        return false;
    }
}
