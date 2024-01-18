package com.planorama.util;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

import com.planorama.services.IEventServices;

public class CommonUtil {
	public static final Logger log = Logger.getLogger(IEventServices.class.getName());
	
	public static final Properties properties = new Properties();
	
	static{
		try {
			properties.load(QueryUtil.class.getResourceAsStream(CommonConstants.PROPERTY_FILE));
		}catch(IOException e) {
			log.log(Level.SEVERE,e.getMessage());
		}
	}
	
	
	//Generate Ids for messages
	public static String generateMessageIds(ArrayList<String> arrayList) {
		String messageId;
		int next= arrayList.size();
		next++;
		messageId = CommonConstants.MESSAGE_ID_PREFIX + next;
		
		if(arrayList.contains(messageId)) {
			next++;
			messageId = CommonConstants.MESSAGE_ID_PREFIX + next;
		}
		return messageId;
	}
	
	
	//Generate Ids for customers
		public static String generateCustomerIds(ArrayList<String> arrayList) {
			String cusId;
			int next= arrayList.size();
			next++;
			cusId = CommonConstants.CUSTOMER_ID_PREFIX + next;
			
			if(arrayList.contains(cusId)) {
				next++;
				cusId = CommonConstants.CUSTOMER_ID_PREFIX + next;
			}
			return cusId;
		}
	
}
