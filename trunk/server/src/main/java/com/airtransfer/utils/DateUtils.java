package com.airtransfer.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * User: Sergey
 * Date: 04.02.12 16:55
 */
public class DateUtils {

    final static Logger logger = LoggerFactory.getLogger(DateUtils.class);

    public static Date parse(String val) {
        if (val == null) return null;
        try {
            SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd");
            return format.parse(val);
        } catch (ParseException e) {
            logger.warn(e.getMessage());
            return null;
        }
    }

    public static Date parse(String val, String pattern) {
        if (val == null) return null;
        try {
            SimpleDateFormat format = new SimpleDateFormat(pattern);
            return format.parse(val);
        } catch (ParseException e) {
            logger.warn(e.getMessage());
            return null;
        }
    }

}
