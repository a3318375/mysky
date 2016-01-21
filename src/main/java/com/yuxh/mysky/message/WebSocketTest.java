package com.yuxh.mysky.message;

import java.io.IOException;

import javax.annotation.Resource;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.ObjectMessage;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/websocket")
public class WebSocketTest{

	 private Session session;
	@Resource
	private  MessageSender _messageSender;
	
	 public MessageSender getMessageSender() {
		return _messageSender;
	}
	public void setMessageSender(MessageSender messageSender) {
		System.out.println(messageSender);
		this._messageSender = messageSender;
		this.messageSender=this._messageSender;
	} 
	private static MessageSender messageSender;
	
	
	@OnMessage
	public void onMessage(String message) throws IOException, InterruptedException {
		System.out.println(this.hashCode());
		System.out.println(messageSender);
		// Print the client message for testing purposes
		//System.out.println("Received: " + message);

		// Send the first message to the client
		//session.getBasicRemote().sendText(message);
		messageSender.sendMessage(message);
		// Send 3 messages to the client every 5 seconds
//		int sentMessages = 0;
//		while (sentMessages < 3) {
//			Thread.sleep(5000);
//			session.getBasicRemote().sendText("This is an intermediate server message. Count: " + sentMessages);
//			sentMessages++;
//		}
//
//		// Send a final message to the client
//		session.getBasicRemote().sendText("This is the last server message");
	}

	@OnOpen
	public void onOpen() {
		System.out.println("Client connected");
	}

	@OnClose
	public void onClose() {
		System.out.println("Connection closed");
	}

	public void receive(Message m) {
		System.out.println("[receive message]");

		ObjectMessage om = (ObjectMessage) m;
		try {
			String key1 = om.getStringProperty("key1");
			session.getBasicRemote().sendText(key1);
			System.out.println(key1);
//			System.out.println("model:" + om.getJMSDeliveryMode());
//			System.out.println("destination:" + om.getJMSDestination());
//			System.out.println("type:" + om.getJMSType());
//			System.out.println("messageId:" + om.getJMSMessageID());
//			System.out.println("time:" + om.getJMSTimestamp());
//			System.out.println("expiredTime:" + om.getJMSExpiration());
//			System.out.println("priority:" + om.getJMSPriority());
		} catch (JMSException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
