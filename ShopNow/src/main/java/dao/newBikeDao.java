package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.newBike;

public class newBikeDao {
	public int registerNewBike(newBike addBike) throws ClassNotFoundException{
		String SQL = "INSERT INTO bike" + 
				"(name, price, gender, brand, image, description) VALUES" +
				"(?,?,?,?,?,?);";
		
		int result = 0;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebikeshop", "root", "miki1991");
				
				//Create a statement using a connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SQL)){
					
					preparedStatement.setString(1, addBike.getName());
					preparedStatement.setInt(2, addBike.getPrice());
					preparedStatement.setString(3, addBike.getGender());
					preparedStatement.setString(4, addBike.getBrand());
					preparedStatement.setInt(5, addBike.getImage());
					preparedStatement.setString(6, addBike.getDescription());

					//Execute the query or update the query
					result = preparedStatement.executeUpdate();
					
			
		}catch(SQLException e){
			//proccess SQLException
			e.printStackTrace();
			
		}
		return result;
	}
}
