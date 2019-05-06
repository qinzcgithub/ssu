package com.qzc.util;


import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

@Component
public class BeanContext implements ApplicationContextAware {
	private static ApplicationContext applicationContext;
	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		BeanContext.applicationContext = applicationContext;
	}
	
	public ApplicationContext getApplicationContext() {
		return applicationContext;
	}
	 
	@SuppressWarnings({"unchecked"}) 
	public static <T>T getBean(String beanName) {
		return (T)applicationContext.getBean(beanName);
	}
	
	public static<T>T getBean(Class<T> clz) {
		return applicationContext.getBean(clz);
	}
	
}
