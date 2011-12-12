package com.airtransfer.models.utils;

/**
 * User: sergey
 * Date: 12:42 PM 12/12/11
 */
public enum MessageType {
    REGISTRATION("Registration email"),
    RESET_PASSWORD("Forget password ");

    MessageType(String subject) {
        this.subject = subject;
    }

    protected String subject;

    public String getSubject() {
        return subject;
    }
}
