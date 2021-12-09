package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import model.*;

public class bikeOrdersDao {
	
	private ResultSet rs;
	private Connection conn;
	private String query;
	private PreparedStatement pstmt;
	public bikeOrdersDao(Connection conn) {
		this.conn = conn;
	}
	
	// responsable method for bike orders
	public boolean insertBikeOrder(bikeOrders model) {
		
		// 
		boolean insert_result = false;
		
		try {
			
			//create the query
			query = "INSERT INTO orders (bike_id, bike_name, bike_price, customer_id, customer_email, order_quantity, order_date) VALUES (?,?,?,?,?,?,?)";
			
			//prepare or setting up the values for inserting
			pstmt = this.conn.prepareStatement(query);
			pstmt.setInt(1, model.getId());
			pstmt.setString(2, model.getBikeName());
			pstmt.setInt(3, model.getBikePrice());
			pstmt.setInt(4, model.getCustomerId());
			pstmt.setString(5, model.getCustomerEmail());
			pstmt.setInt(6, model.getQuantity());
			pstmt.setString(7, model.getDate());
			
			pstmt.executeUpdate();
			
			insert_result = true;
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		// returning the method result
		return insert_result;
	}
	
	public List<bikeOrders> bikeOrder(int id){
		List<bikeOrders> list = new ArrayList<>();
		
		try {
			
			query = "select * from orders where customer_id = ? order by orders.order_id desc";
			pstmt = this.conn.prepareStatement(query);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				// create istance from model and Dao for getting  the infos later
				bikeOrders bOrder = new bikeOrders();
				
				bikeDao bDao = new bikeDao(this.conn);
				int bikeId = rs.getInt("bike_id");
				newBike bike = bDao.getSingleBike(bikeId); // the method is created in newBikeDao class
				
				// set the values for the istance from bikeOrders
				bOrder.setOrderId(rs.getInt("order_id"));
				bOrder.setId(bikeId);
				bOrder.setBikeName(rs.getString("bike_name"));
				bOrder.setCustomerEmail(rs.getString("customer_email"));
				bOrder.setBikePrice((rs.getInt("bike_price")) *(rs.getInt("order_quantity") ));
				bOrder.setQuantity(rs.getInt("order_quantity"));
				bOrder.setDate(rs.getString("order_date"));
				
				//Adding the bOrder to the list
				list.add(bOrder);
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	
//	the method for canceling the order
	public void cancelOrder(int id) {
		try {
			query = "delete from orders where order_id = ?";
			pstmt = this.conn.prepareStatement(query);
			pstmt.setInt(1, id);
			pstmt.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
