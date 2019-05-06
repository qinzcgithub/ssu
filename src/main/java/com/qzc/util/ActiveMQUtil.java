package com.qzc.util;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jms.connection.SingleConnectionFactory;
import org.springframework.jms.core.JmsTemplate;

@Configuration
public class ActiveMQUtil {
	
	//activeMQ连接池最大连接数
	@Value("${active.maxConnections}")
	private int maxConnections; 
	
	//账号
	@Value("${active.username}")
	private String userName;
	
	//密码
	@Value("${active.password}")
	private String passWord;
	
	//队列名称
	@Value("${active.queueName}")
	private String queueName; 
	
	//activeMQ主机地址
	@Value("${active.url}")
	private String url;
	
	@Bean
	public JmsTemplate activeMQPool(){
		ActiveMQConnectionFactory connectionFactory = new ActiveMQConnectionFactory();
		connectionFactory.setPassword(passWord);
		connectionFactory.setBrokerURL(url);
		connectionFactory.setUserName(userName);
		
		SingleConnectionFactory singleConnectionFactory = new SingleConnectionFactory();
		singleConnectionFactory.setTargetConnectionFactory(connectionFactory);
		
		JmsTemplate jmsTemplate = new JmsTemplate();
		jmsTemplate.setConnectionFactory(singleConnectionFactory);
		jmsTemplate.setDefaultDestinationName(queueName);
		return jmsTemplate;
	}
}
