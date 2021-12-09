package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.cart;
import model.newBike;

public class bikeDao {
	
	private Connection conn;
	private String query;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public bikeDao(Connection conn) {
		this.conn = conn;
	}
	
	public List<newBike> getAllBikes(){
		List<newBike> bikes = new ArrayList<newBike>();
	   
	        
	    
		
		try {
			
			query = "SELECT * FROM bike";
			pstmt = this.conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				newBike row = new newBike();
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setBrand(rs.getString("brand"));
				row.setPrice(rs.getInt("price"));
				
				bikes.add(row);
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bikes;
	}
	
	public List<cart> getCartBikes(ArrayList<cart> cartList){
		List<cart> cartBikes = new ArrayList<cart>();
		
		try {
			if(cartList.size()>0) {
				for(cart item:cartList) {
					query = "SELECT * FROM bike WHERE id=?";
					pstmt = this.conn.prepareStatement(query);
					pstmt.setInt(1, item.getId());
					rs=pstmt.executeQuery();
					while(rs.next()) {
						cart row = new cart();
						row.setId(rs.getInt("id"));
						row.setName(rs.getString("name"));
						row.setBrand(rs.getString("brand"));
						row.setPrice(rs.getInt("price") * item.getQuantity());
						cartBikes.add(row);
					}
				}
			}
			
		}catch(Exception e) {
			System.out.print(e.getMessage());
			e.printStackTrace();
		}
		
		return cartBikes;
	}
	
	
	public double getTotalPrice(ArrayList<cart> cartList) {
		double sum = 0;
		
		try {
			
			if(cartList.size()>0) {
				for(cart item:cartList) {
					query = "SELECT price FROM bike WHERE id=?";
					pstmt = this.conn.prepareStatement(query);
					pstmt.setInt(1, item.getId());
					rs = pstmt.executeQuery();
					
					while(rs.next()) {
						sum+=rs.getInt("price")*item.getQuantity();
					}
				}
			}
			
		}catch(Exception e){
			e.getStackTrace();
		}
				
		return sum;
	}
	
	
	public newBike getSingleBike(int id) {
		newBike row = null;
		
		try {
			query = "select * from bike where id=?";
			pstmt =this.conn.prepareStatement(query);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				row = new newBike();
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setPrice(rs.getInt("price"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return row;
	}
	

}
