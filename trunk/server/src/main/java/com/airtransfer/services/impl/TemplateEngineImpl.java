package com.airtransfer.services.impl;

import com.airtransfer.models.utils.MessageType;
import com.airtransfer.models.utils.Template;
import com.airtransfer.models.utils.TemplateType;
import com.airtransfer.services.BaseService;
import com.airtransfer.services.TemplateEngine;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.velocity.VelocityEngineFactoryBean;
import org.springframework.ui.velocity.VelocityEngineUtils;

import java.util.Collections;
import java.util.Map;

/**
 * User: sergey
 * Date: 5:38 PM 12/10/11
 */
@Component
public class TemplateEngineImpl extends BaseService implements TemplateEngine {

    @Autowired
    protected VelocityEngineFactoryBean engineFactory;

    @SuppressWarnings("unchecked")
    public Template getTemplate(Template template) {
        try {
            VelocityEngine engine = engineFactory.getObject();
            final String path = getPath(template);
            final Map<String, String> model = template.getModel() != null ? template.getModel() : Collections.EMPTY_MAP;
            final String body = VelocityEngineUtils.mergeTemplateIntoString(engine, path, model);
            template.setBody(body);
        } catch (Throwable e) {
            logger.error(e.getMessage(), e);
        }
        System.out.println(" template body: " + template.getBody());
        return template;
    }

    private String getPath(Template template) {
        final String language = template.getLocale().getLanguage();
        final TemplateType type = template.getType();
        final MessageType messageType = template.getMessageType();

        final StringBuilder builder = new StringBuilder();
        builder.append("/").append(type.getCode())
                .append('/').append(language).append("/")
                .append(messageType.name()).append(".vm");

        return builder.toString();
    }
}
