package com.airtransfer.services.impl;

import com.airtransfer.models.AuthenticationRequest;
import com.airtransfer.models.ResetPasswordLink;
import com.airtransfer.models.User;
import com.airtransfer.models.utils.MessageType;
import com.airtransfer.models.utils.Template;
import com.airtransfer.models.utils.TemplateType;
import com.airtransfer.services.BaseService;
import com.airtransfer.services.EmailService;
import com.airtransfer.services.UserService;
import com.airtransfer.services.dao.AuthenticationRequestDao;
import com.airtransfer.services.dao.ResetPasswordLinkDao;
import com.airtransfer.services.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.util.DigestUtils;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/**
 * User: Sergey
 * Date: 02.12.11 22:25
 */
@Component
public class UserServiceImpl extends BaseService implements UserService {

    @Autowired
    protected UserDao userDao;
    @Autowired
    protected AuthenticationRequestDao requestDao;
    @Autowired
    protected ResetPasswordLinkDao resetPasswordLinkDao;
    @Autowired
    protected EmailService emailService;

    public User findUserByEmail(String email) {
        return userDao.findByEmail(email);
    }

    public User create(User user) {
        logger.debug("create; {}", user.toString());
        user.setCreated(new Date());
        user.setApproved(false);
        userDao.save(user);
        Locale locale = LocaleContextHolder.getLocale();
        AuthenticationRequest request = generateRequest(user);
        HashMap<String, String> model = new HashMap<String, String>(1);
        model.put("UID", request.getUid());
        Template template = new Template(locale, TemplateType.EMAIL, model);
        template.setMessageType(MessageType.REGISTRATION);
        emailService.sendEmail(user, template);
        logger.warn("User created;");
        return user;
    }

    public AuthenticationRequest generateRequest(User user) {
        logger.debug("generateRequest; {}", user.toString());
        final AuthenticationRequest request = new AuthenticationRequest();
        request.setUser(user);
        request.setProcessed(false);
        final Date now = new Date();
        request.setCreated(now);

        final DateFormat format = DateFormat.getDateInstance(DateFormat.LONG);
        final String currentDate = format.format(now);
        final StringBuilder builder = new StringBuilder();

        builder.append(user.getId())
                .append(user.getEmail())
                .append(currentDate)
                .append("registration");

        final String hash = DigestUtils.md5DigestAsHex(builder.toString().getBytes());
        request.setUid(hash);
        requestDao.save(request);
        return request;
    }

    public void createResetPasswordLink(User user) {
        logger.debug("createResetPasswordLink; {}", user);

        ResetPasswordLink link = new ResetPasswordLink();
        link.setUser(user);
        final Date now = new Date();
        link.setCreated(now);

        final DateFormat format = DateFormat.getDateInstance(DateFormat.LONG);
        final String currentDate = format.format(now);
        final StringBuilder builder = new StringBuilder();

        builder.append(user.getId())
                .append(user.getEmail())
                .append(currentDate)
                .append("resetpassword");

        final String hash = DigestUtils.md5DigestAsHex(builder.toString().getBytes());
        link.setUid(hash);

        resetPasswordLinkDao.save(link);
        HashMap<String, String> model = new HashMap<String, String>();
        Template email = new Template(LocaleContextHolder.getLocale(), TemplateType.EMAIL, model);
        emailService.sendEmail(user, email);
    }

    public ResetPasswordLink findResetPasswordLink(String uid) {
        return resetPasswordLinkDao.findByUid(uid);
    }

    public boolean updateUserStatusByHash(String hash) {
        AuthenticationRequest request = requestDao.findByRegUid(hash);
        if (request != null) {
            request.setProcessed(true);
            requestDao.update(request);
            request.getUser().setApproved(true);
            userDao.update(request.getUser());
            return true;
        } else {
            return false;
        }
    }
}
