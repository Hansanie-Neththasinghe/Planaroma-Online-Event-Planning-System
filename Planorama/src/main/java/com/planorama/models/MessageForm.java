package com.planorama.models;

public class MessageForm {
	private String messageId;
	private String cusName;
	private String cusEmail;
	private String subject;
	private String message;
	
	
	public MessageForm() {
		
	}
	/**
	 * @param messageId
	 * @param cusName
	 * @param cusEmail
	 * @param subject
	 * @param message
	 */
	public MessageForm(String messageId, String cusName, String cusEmail, String subject, String message) {
		super();
		this.messageId = messageId;
		this.cusName = cusName;
		this.cusEmail = cusEmail;
		this.subject = subject;
		this.message = message;
	}
	/**
	 * @return the messageId
	 */
	public String getMessageId() {
		return messageId;
	}
	/**
	 * @param messageId the messageId to set
	 */
	public void setMessageId(String messageId) {
		this.messageId = messageId;
	}
	/**
	 * @return the cusName
	 */
	public String getCusName() {
		return cusName;
	}
	/**
	 * @param cusName the cusName to set
	 */
	public void setCusName(String cusName) {
		this.cusName = cusName;
	}
	/**
	 * @return the cusEmail
	 */
	public String getCusEmail() {
		return cusEmail;
	}
	/**
	 * @param cusEmail the cusEmail to set
	 */
	public void setCusEmail(String cusEmail) {
		this.cusEmail = cusEmail;
	}
	/**
	 * @return the subject
	 */
	public String getSubject() {
		return subject;
	}
	/**
	 * @param subject the subject to set
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}
	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}
	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	
}
