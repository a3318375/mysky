package com.yuxh.mysky.message;

import org.apache.activemq.command.ActiveMQQueue;
import org.springframework.jms.core.JmsTemplate;
public class MessageSender {   
    // ~~~ jmsTemplate   
    private JmsTemplate jmsTemplate;   
       
    private ActiveMQQueue destination;
    
    public ActiveMQQueue getDestination() {
		return destination;
	}


	public void setDestination(ActiveMQQueue destination) {
		this.destination = destination;
	}


	public JmsTemplate getJmsTemplate() {
		return jmsTemplate;
	}


	public void setJmsTemplate(JmsTemplate jmsTemplate) {
		this.jmsTemplate = jmsTemplate;
	}


	/**  
     * send message  
     */  
    public void sendMessage(String message){
        jmsTemplate.convertAndSend(destination,message);   
    }   
}  