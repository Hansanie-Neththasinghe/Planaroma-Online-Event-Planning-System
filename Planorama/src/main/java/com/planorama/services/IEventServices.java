package com.planorama.services;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.planorama.models.Customer;
import com.planorama.models.MessageForm;

public interface IEventServices {
	
	//Initialize logger
	public static final Logger log = Logger.getLogger(IEventServices.class.getName());
	
	//Add messages to messages table
	public void addMessage(MessageForm message);
	
	//Get a particular message from messages table
	public MessageForm getMessageById(String messageId);
	
	//Get list of all the messages from messages table
	public ArrayList<MessageForm> getMessages();
	
	//Update an existing message from messages table
	public MessageForm updateMessage(String messageId, MessageForm message);
	
	//Delete an existing message from messages table
	public void deleteMessage(String messageId);
	
	
	
	
	
	//=============================Customer related=============================
	
	public void addCustomer(Customer customer);
	
	
}
