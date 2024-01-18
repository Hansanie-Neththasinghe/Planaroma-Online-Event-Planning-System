package com.planorama.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.mysql.cj.jdbc.DatabaseMetaData;
import com.planorama.models.Customer;
import com.planorama.models.MessageForm;
import com.planorama.util.CommonConstants;
import com.planorama.util.CommonUtil;
import com.planorama.util.DBConnectionUtil;
import com.planorama.util.QueryUtil;

public class EventServicesImpl implements IEventServices{
	
	
	public static final Logger log = Logger.getLogger(EventServicesImpl.class.getName());
	
	private static Connection connection;
	
	private static Statement statement;
	
	private PreparedStatement preparedStatement;
	
	
	//======================================================================
	
	
	static {
		createMessagesTable();
		createCustomersTable();
	}
	
	
	
	//================================= Customer related ===================
	
	
	public static void createCustomersTable() {

		Connection connection = null;
	    Statement statement = null;
	    ResultSet resultSet = null;

	    try {
	        connection = DBConnectionUtil.getDBConnection();
	        statement = connection.createStatement();

	        // Check if the table already exists
	        DatabaseMetaData metaData = (DatabaseMetaData) connection.getMetaData();
	        resultSet = metaData.getTables(null, null, "CUSTOMERS", new String[]{"TABLE"});

	        if (!resultSet.next()) {
	            // Table doesn't exist, create it
	            statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_CREATE_TABLE_CUSTOMER));
	        }}
		
		catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	
	}
	
	

	//Get all the customer Ids
	private ArrayList<String> getCustomerIds(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_CUSTOMER_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
			}
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException
				| ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}
	
	


	@Override
	public void addCustomer(Customer customer) {
		String cusId = CommonUtil.generateCustomerIds(getCustomerIds());
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_INSERT_CUSTOMER));
			connection.setAutoCommit(false);
			
			customer.setCusId(cusId);
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, customer.getCusId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, customer.getFirstName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, customer.getLastName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, customer.getEmail());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, customer.getPhoneNumber());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, customer.getPassword());
			
			//Add the customer to the db table
			preparedStatement.execute();
			connection.commit();
			
		}catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
			
		}finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
	}
	
	
	
	
	
	
	
	//================================ Message related =====================
	
	
	public static void createMessagesTable() {

		/*try {
			connection = DBConnectionUtil.getDBConnection();
			statement = connection.createStatement();
			statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_CREATE_TABLE_MESSAGES));

		} */
		Connection connection = null;
	    Statement statement = null;
	    ResultSet resultSet = null;

	    try {
	        connection = DBConnectionUtil.getDBConnection();
	        statement = connection.createStatement();

	        // Check if the table already exists
	        DatabaseMetaData metaData = (DatabaseMetaData) connection.getMetaData();
	        resultSet = metaData.getTables(null, null, "MESSAGES", new String[]{"TABLE"});

	        if (!resultSet.next()) {
	            // Table doesn't exist, create it
	            statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_CREATE_TABLE_MESSAGES));
	        }}
		
		catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	
	}
	
	
	
	//Get all the message Ids
	private ArrayList<String> getMessageIds(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_MESSAGE_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
			}
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException
				| ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}
	
	

	@Override
	public void addMessage(MessageForm message) {
		String messageId = CommonUtil.generateMessageIds(getMessageIds());
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_INSERT_MESSAGE));
			connection.setAutoCommit(false);
			
			message.setMessageId(messageId);
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, message.getMessageId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, message.getCusName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, message.getCusEmail());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, message.getSubject());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, message.getMessage());
			
			//Add the message to the db table
			preparedStatement.execute();
			connection.commit();
			
		}catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
			
		}finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}
	
	
	
	
	
	
	

	@Override
	public MessageForm getMessageById(String messageId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<MessageForm> getMessages() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MessageForm updateMessage(String messageId, MessageForm message) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteMessage(String messageId) {
		// TODO Auto-generated method stub
		
	}



}
