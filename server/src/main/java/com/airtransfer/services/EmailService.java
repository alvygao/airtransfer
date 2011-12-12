package com.airtransfer.services;

import com.airtransfer.models.User;
import com.airtransfer.models.utils.Template;

/**
 * User: sergey
 * Date: 5:16 PM 12/10/11
 */
public interface EmailService {

    void sendEmail(User user, Template template);

}
