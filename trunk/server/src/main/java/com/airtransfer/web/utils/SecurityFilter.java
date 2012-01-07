package com.airtransfer.web.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Locale;

/**
 * User: Sergey
 * Date: 18.12.11 14:24
 */
public class SecurityFilter implements Filter {
    protected final Logger logger = LoggerFactory.getLogger(getClass());
    protected CookieLocaleResolver localeResolver;


    public void init(FilterConfig filterConfig) throws ServletException {
//        WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(filterConfig.getServletContext());
        this.localeResolver = new CookieLocaleResolver();
        this.localeResolver.setDefaultLocale(Locale.ENGLISH);
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        if (!isRequestAuthorized(httpRequest)) {
            httpResponse.sendRedirect("/html/");
            logger.error("Unauthorized request: " + httpRequest.getRequestURI());
        } else {
            setHeaders(httpRequest, httpResponse);
        }

        chain.doFilter(request, response);
        SessionManager.eraseCurrentSession(httpRequest.getSession().getId());
        eraseLocale(httpRequest, httpResponse);
    }

    private void eraseLocale(HttpServletRequest httpRequest, HttpServletResponse httpResponse) {

    }

    protected void setHeaders(HttpServletRequest request, HttpServletResponse response) {
        String ajaxHeader = request.getHeader("X-Requested-With");

        if (ajaxHeader != null && ajaxHeader.equals("XMLHttpRequest")) {

        }
    }

    protected boolean isRequestAuthorized(HttpServletRequest request) {
        final String uri = request.getRequestURI();
        if (isPublicUrl(uri)) {
            return true;
        } else {
            final HttpSession session = request.getSession();
            if (SessionManager.contains(session.getId())) {
                SessionManager.setCurrentSession(session.getId());
                return true;
            }
        }
        return false;
    }

    public void destroy() {
        logger.debug("destroy;");
    }

    private boolean isPublicUrl(String resource) {
        return resource.startsWith("/html/forgetpassword")
                || resource.startsWith("/html/home")
                || resource.startsWith("/html/registration")
                || resource.startsWith("/html/signin")
                || resource.equals("/")
                || resource.equals("/html/")
                || resource.endsWith(".png")
                || resource.endsWith(".jpg")
                || resource.endsWith(".css")
                || resource.endsWith(".js")
                || resource.endsWith(".ico");
    }
}
