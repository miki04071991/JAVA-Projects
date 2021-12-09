package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.customer;

public class customerLoginDao {
	private Connection conn;
	private String query;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public customerLoginDao(Connection conn) { // set the connection
		this.conn = conn;
	}
	
	public customer customerLogin (String username, String pass) { // create the method
		customer loginCustomer = null;
		
		try {
			query = "select * from register where email=? and pass=?"; // create the query 
			pstmt = this.conn.prepareStatement(query); // prepare the statement for executing the query
			pstmt.setString(1, username);// set the values
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery(); //execute
			
			if(rs.next()) { // set the login values for every one of the next customers
				loginCustomer = new customer(); // inheritance from the customer model an create the new object
				loginCustomer.setEmail(rs.getString("email"));  // get the values 
				loginCustomer.setUserName(rs.getString("username"));
				loginCustomer.setId(rs.getInt("id"));
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		
		
		return loginCustomer; // return the login customer -- return the method value
	}
}
