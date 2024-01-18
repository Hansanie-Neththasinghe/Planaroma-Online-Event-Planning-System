package com.planorama.util;

public interface CommonConstants {
	
	/** Constant for config.properties key for query file path */
	public static final String QUERY_XML = "queryFilePath";

	/** Constant for file path of config.properties */
	public static final String PROPERTY_FILE = "config.properties";

	/** Constant for query tag in SongQuery.xml */
	public static final String TAG_NAME = "query";

	/** Constant for query id in Song Query.xml */
	public static final String ATTRIB_ID = "id";
	
	/** Constant for comma */
	public static final String COMMA = ",";

	/** Constant for url key of MySQL database in config.properties */
	public static final String URL = "url";

	/** Constant for user name key of MySQL database in config.properties */
	public static final String USERNAME = "username";

	/** Constant for password key of MySQL database in config.properties */
	public static final String PASSWORD = "password";

	/** Constant for driver name key of MySQL database in config.properties */
	public static final String DRIVER_NAME = "driverName";


	/** Constant for Column index one */
	public static final int COLUMN_INDEX_ONE = 1;
	
	/** Constant for Column index two */
	public static final int COLUMN_INDEX_TWO = 2;
	
	/** Constant for Column index three */
	public static final int COLUMN_INDEX_THREE = 3;
	
	/** Constant for Column index four */
	public static final int COLUMN_INDEX_FOUR = 4;
	
	/** Constant for Column index five */
	public static final int COLUMN_INDEX_FIVE = 5;
	
	/** Constant for Column index six */
	public static final int COLUMN_INDEX_SIX = 6;
	
	/** Constant for Column index seven */
	public static final int COLUMN_INDEX_SEVEN = 7;
	
	/** Constant for Column index eight */
	public static final int COLUMN_INDEX_EIGHT = 8;
	
	/** Constant for Column index nine */
	public static final int COLUMN_INDEX_NINE = 9;
	
	/** Constant for Column index ten */
	public static final int COLUMN_INDEX_TEN = 10;
	
	
	/** Constant for query id of drop_table in SongQuery.xml */
	public static final String QUERY_ID_DROP_TABLE = "drop_table";
	
	//=============================================================================
	
	
	/** Constant for message id prefix */
	public static final String MESSAGE_ID_PREFIX = "M00";
	
	/** Constant for query id of create_table in EventQuery.xml */
	public static final String QUERY_ID_CREATE_TABLE_MESSAGES = "create_messages_table";

	/** Constant for query id of insert a message in EventQuery.xml */
	public static final String QUERY_ID_INSERT_MESSAGE = "insert_message";

	/** Constant for query id of get a message in EventQuery.xml */
	public static final String QUERY_ID_GET_MESSAGE = "message_by_id";

	/** Constant for query id of get all messages in EventQuery.xml */
	public static final String QUERY_ID_ALL_MESSAGES = "all_messages";

	/** Constant for query id of remove a message in EventQuery.xml */
	public static final String QUERY_ID_REMOVE_MESSAGE = "remove_message";

	/** Constant for query id of update a message in EventQuery.xml */
	public static final String QUERY_ID_UPDATE_MESSAGE = "update_message";

	/** Constant for query id of get all message ids in EventQuery.xml */
	public static final String QUERY_ID_GET_MESSAGE_IDS = "message_ids";
	
	
	//=============================================================================
	
	
		/** Constant for message id prefix */
		public static final String CUSTOMER_ID_PREFIX = "C00";
		
		/** Constant for query id of create_table in EventQuery.xml */
		public static final String QUERY_ID_CREATE_TABLE_CUSTOMER = "create_customers_table";

		/** Constant for query id of insert a customer in EventQuery.xml */
		public static final String QUERY_ID_INSERT_CUSTOMER = "insert_customer";

		/** Constant for query id of get a customer in EventQuery.xml */
		public static final String QUERY_ID_GET_CUSTOMER = "customer_by_id";

		/** Constant for query id of get all customers in EventQuery.xml */
		public static final String QUERY_ID_ALL_CUSTOMERS = "all_customers";

		/** Constant for query id of remove a customer in EventQuery.xml */
		public static final String QUERY_ID_REMOVE_CUSTOMER = "remove_customer";

		/** Constant for query id of update a customer in EventQuery.xml */
		public static final String QUERY_ID_UPDATE_CUSTOMER = "update_customer";

		/** Constant for query id of get all customer ids in EventQuery.xml */
		public static final String QUERY_ID_GET_CUSTOMER_IDS = "customer_ids";
		
	
	
}
