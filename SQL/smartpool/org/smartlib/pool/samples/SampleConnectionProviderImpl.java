package org.smartlib.pool.samples;

import java.sql.*;
import org.smartlib.pool.core.*;
import javax.naming.*;
import javax.sql.*;

/**
 * Never got a chance to compile this program 
 */

public class SampleConnectionProviderImpl implements ConnectionProvider {

	
	private DataSource dataSource = null;
	
	public  SampleConnectionProviderImpl()  throws Exception {

		InitialContext ic = new InitialContext();
		dataSource = (DataSource)ic.lookup("MyPool");
		
	}
		

	public Connection getConnection() throws Exception {

		return dataSource.getConnection();	

	}

	public void returnConnection(Connection conn) throws Exception {

		conn.close();

	}

	

}
