package com.airtransfer.web.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;

import javax.print.DocFlavor;
import java.util.*;

/**
 * User: Sergey
 * Date: 02.12.11 17:18
 */
public class I18nHelper implements Map<String, String> {

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
        System.out.println("public String get(Object key) => " + messageSource.getMessage(String.valueOf(key), null, LocaleContextHolder.getLocale()));
        return messageSource.getMessage(String.valueOf(key), null, LocaleContextHolder.getLocale());
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

    public Collection<String> values() {
        return Collections.EMPTY_SET;
    }

    public Set<Entry<String, String>> entrySet() {
        return Collections.EMPTY_SET;
    }
}
