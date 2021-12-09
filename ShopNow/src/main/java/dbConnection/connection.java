package dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class connection{

    private static Connection connection = null;

public static Connection getConnection() throws ClassNotFoundException, SQLException {
	
	if(connection == null) {
		Class.forName("com.mysql.cj.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebikeshop", "root", "miki1991");
	}
    	return connection;

	}

}
