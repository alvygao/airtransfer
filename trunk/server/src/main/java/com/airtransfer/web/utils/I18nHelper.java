package com.airtransfer.web.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/**
 * User: Sergey
 * Date: 02.12.11 17:18
 */
public class I18nHelper implements Map<String, String> {

    private static final Logger logger = LoggerFactory.getLogger(I18nHelper.class);

    @Autowired
    protected ReloadableResourceBundleMessageSource messageSource;

    public int size() {
        return 0;
    }

    public boolean isEmpty() {
        return false;
    }

    public boolean containsKey(Object key) {
        return false;
    }

    public boolean containsValue(Object value) {
        return false;
    }

    public String get(Object key) {
        String message = messageSource.getMessage(String.valueOf(key), null, LocaleContextHolder.getLocale());
        if (message == null) {
            message = "";
            logger.warn("Can't find message for key " + key);
        }
        return message;
    }

    public String put(String key, String value) {
        return null;
    }

    public String remove(Object key) {
        return null;
    }

    public void putAll(Map<? extends String, ? extends String> m) {
    }

    public void clear() {
    }

    public Set<String> keySet() {
        return Collections.emptySet();
    }

    @SuppressWarnings("unchecked")
    public Collection<String> values() {
        return Collections.EMPTY_SET;
    }

    @SuppressWarnings("unchecked")
    public Set<Entry<String, String>> entrySet() {
        return Collections.EMPTY_SET;
    }
}
