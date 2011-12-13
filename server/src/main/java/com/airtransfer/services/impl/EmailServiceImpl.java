package com.airtransfer.services.impl;

import com.airtransfer.models.User;
import com.airtransfer.models.utils.Template;
import com.airtransfer.services.BaseService;
import com.airtransfer.services.EmailService;
import com.airtransfer.services.TemplateEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

/**
 * User: sergey
 * Date: 5:17 PM 12/10/11
 */
@Component
public class EmailServiceImpl extends BaseService implements EmailService {

    @Autowired
    private JavaMailSenderImpl mailSender;
    @Autowired
    private TemplateEngine templateEngine;

    @Async
    public void sendEmail(User user, Template template) {
        final Template processedMsg = templateEngine.getTemplate(template);
        SimpleMailMessage email = new SimpleMailMessage();
        email.setFrom("noreply@j2eeblogger.ru");
        email.setSubject(template.getMessageType().getSubject());
        email.setTo(user.getEmail());
        email.setText(processedMsg.getBody());
        try {
            mailSender.send(email);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
    }
}
