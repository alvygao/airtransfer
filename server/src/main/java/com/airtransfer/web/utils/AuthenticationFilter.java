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
import java.io.IOException;

/**
 * User: Sergey
 * Date: 18.12.11 14:24
 */
public class AuthenticationFilter implements Filter {
    protected final Logger logger = LoggerFactory.getLogger(getClass());
    private UserSessionDao sessionDao;

    public void init(FilterConfig filterConfig) throws ServletException {
        logger.debug("init;");
        final ServletContext servletContext = filterConfig.getServletContext();
        final WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(servletContext);
        sessionDao = context.getBean(UserSessionDao.class);
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        String sessionId = getSessionId((HttpServletRequest) request);
        if (sessionId != null) {
            SessionTokensHolder.getInstance().put(sessionId);
        }
        chain.doFilter(request, response);
    }

    public void destroy() {
        logger.debug("destroy;");
    }

    public String getSessionId(HttpServletRequest request) {
        if (request.getCookies() != null) {
            for (Cookie cookie : request.getCookies()) {
                if (cookie.getName().equalsIgnoreCase(WebConstants.JSESSIONID)) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

}
