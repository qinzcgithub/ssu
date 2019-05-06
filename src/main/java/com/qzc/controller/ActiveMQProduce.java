package com.qzc.controller;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;

public class ActiveMQProduce {
	
	@Autowired
	JmsTemplate aaa;
	
	public void insertMessage(){
		aaa.send(new MessageCreator() {
			
			@Override
			public Message createMessage(Session arg0) throws JMSException {
				// TODO Auto-generated method stub
				return null;
			}
		});
	}
}
