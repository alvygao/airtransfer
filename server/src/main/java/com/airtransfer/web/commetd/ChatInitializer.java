package com.airtransfer.web.commetd;

import org.cometd.bayeux.server.BayeuxServer;
import org.cometd.java.annotation.ServerAnnotationProcessor;
import org.cometd.server.BayeuxServerImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;

/**
 * User: Sergey
 * Date: 22.01.12 19:05
 */
//@Component
public class ChatInitializer implements BeanPostProcessor, ServletContextAware {

    protected final Logger logger = LoggerFactory.getLogger(getClass());

    protected ServerAnnotationProcessor annotationProcessor;
    private BayeuxServer bayeuxServer;

    public ChatInitializer() {
    }

    public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
        logger.debug("postProcessBeforeInitialization; " + beanName);
        annotationProcessor.processDependencies(bean);
        annotationProcessor.processConfigurations(bean);
        annotationProcessor.processCallbacks(bean);
        return bean;
    }

    public void setServletContext(ServletContext servletContext) {
        servletContext.setAttribute(BayeuxServer.ATTRIBUTE, bayeuxServer);
    }

    @Autowired
    public void setBayeuxServer(BayeuxServer bayeuxServer) {
        this.bayeuxServer = bayeuxServer;
        annotationProcessor = new ServerAnnotationProcessor(bayeuxServer);
    }

    @Bean(name = "bayeuxServer", initMethod = "start", destroyMethod = "stop")
    public BayeuxServer getAnnotationProcessor() {
        BayeuxServerImpl server = new BayeuxServerImpl();
        server.setOption(BayeuxServerImpl.LOG_LEVEL, "3");
        return server;
    }


    public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
        return bean;
    }
}
