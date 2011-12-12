package com.airtransfer.services;

import com.airtransfer.models.utils.Template;

import java.util.Map;

/**
 * User: sergey
 * Date: 5:38 PM 12/10/11
 */
public interface TemplateEngine {

    Template getTemplate(Template type);
}
