package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.customer;


public class customerDao {
	public int registerCustomer(customer newCustomer) throws ClassNotFoundException{
		String SQL = "INSERT INTO register" + 
				"(firstname, lastname, username, address, email, pass) VALUES" +
				"(?,?,?,?,?,?);";
		
		int result = 0;
		
		Class.forName("com.mysql.cj.jdbc.Driver"); // connect with my local Driver
		
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebikeshop", "root", "miki1991"); // set the databse connection
				
				//Create a statement using a connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SQL)){
					//preparedStatement.setInt(1, 1);
					preparedStatement.setString(1, newCustomer.getFirstName());
					preparedStatement.setString(2, newCustomer.getLastName());
					preparedStatement.setString(3, newCustomer.getUserName());
					preparedStatement.setString(4, newCustomer.getAddress());
					preparedStatement.setString(5, newCustomer.getEmail());
					preparedStatement.setString(6, newCustomer.getPassword());
					

					//Execute the query or update the query
					result = preparedStatement.executeUpdate(); 
					
			
		}catch(SQLException e){
			//proccess SQLException
			e.printStackTrace();
			
		}
		return result;
	}
}
