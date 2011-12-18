package com.airtransfer.test;

import com.airtransfer.models.UserSession;
import com.airtransfer.rest.vo.vos.UserProfileVO;
import com.airtransfer.services.dao.UserSessionDao;
import org.apache.commons.beanutils.PropertyUtilsBean;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.CachedIntrospectionResults;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.beans.PropertyDescriptor;
import java.text.DateFormat;
import java.util.Date;

/**
 * User: Sergey
 * Date: 18.12.11 15:54
 */
public class BaseTest {
    public static void main(String[] args) throws Exception{

        Date parse = DateFormat.getDateInstance(DateFormat.DEFAULT).parse("18.12.2011");
        System.out.println(parse);


    }
}
