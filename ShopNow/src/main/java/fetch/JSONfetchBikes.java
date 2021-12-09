package fetch;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import org.json.JSONArray;
import org.json.JSONObject;

public class JSONfetchBikes{

	public static void main(String[] args){
		
		     try {
		    	 JSONfetchBikes.fetch();
		        } catch (Exception e) {
		         e.printStackTrace();
		       }
		     }
			   
		public static void fetch() throws Exception{
			
		     String url = "https://json-project3.herokuapp.com/products";
		     URL obj = new URL(url);
		     
		     HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		     
		     // optional default is GET
		     con.setRequestMethod("GET");
		     
		     //add request header
		     int responseCode = con.getResponseCode();
		     System.out.println("\nSending 'GET' request to URL : " + url);
		     System.out.println("Response Code : " + responseCode);
		     
		     BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		     String inputLine;
		     StringBuffer response = new StringBuffer();
		     
		     while ((inputLine = in.readLine()) != null) {
		     	response.append(inputLine); 
		     }
		     in.close();
		     //print in String
		     System.out.println(response.toString());
		     //Read JSON response and print
		     JSONObject bikes;
		     JSONArray myarr = new JSONArray(response.toString());
		     
			 PreparedStatement stmt;
			 Connection conn;
				
				
		     for (int i = 0; i <= myarr.length(); i++) {
		    	  bikes = myarr.getJSONObject(i);
		    	  
		    	  String name = bikes.getString("name");
		    	  int price = bikes.getInt("price");
		    	  String gender = bikes.getString("gender");
		    	  String brand = bikes.getString("brand");
		    	  int image = bikes.getInt("image");
		    	  
		    		
						Class.forName("com.mysql.cj.jdbc.Driver");
						conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebikeshop", "root", "miki1991");
						String sql = "INSERT INTO bike(name, price, gender, brand, image) VALUES(?,?,?,?,?)";
						stmt=conn.prepareStatement(sql);
						
						stmt.setString(1, name);
						stmt.setInt(2, price);
						stmt.setString(3, gender);
						stmt.setString(4, brand);
						stmt.setInt(5, image);
						
						stmt.executeUpdate();
		    	  	    	  
		     }
		   

		      
		   }
		}