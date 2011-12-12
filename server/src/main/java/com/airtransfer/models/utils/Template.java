package com.airtransfer.models.utils;

import java.util.Locale;
import java.util.Map;

/**
 * User: sergey
 * Date: 5:17 PM 12/10/11
 */
public class Template {

    private Locale locale;
    private TemplateType type;
    private MessageType messageType;
    private Map<String, String> model;
    private String body;

    public Template() {
    }

    public Template(Locale locale, TemplateType type, MessageType messageType) {
        this.locale = locale;
        this.type = type;
        this.messageType = messageType;
    }

    public Template(Locale locale, TemplateType type, Map<String, String> model) {
        this.locale = locale;
        this.type = type;
        this.model = model;
    }

    public Locale getLocale() {
        return locale;
    }

    public void setLocale(Locale locale) {
        this.locale = locale;
    }

    public TemplateType getType() {
        return type;
    }

    public void setType(TemplateType type) {
        this.type = type;
    }

    public Map<String, String> getModel() {
        return model;
    }

    public void setModel(Map<String, String> model) {
        this.model = model;
    }

    public MessageType getMessageType() {
        return messageType;
    }

    public void setMessageType(MessageType messageType) {
        this.messageType = messageType;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
}
