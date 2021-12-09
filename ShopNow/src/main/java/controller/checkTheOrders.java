package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.bikeOrdersDao;
import dbConnection.connection;
import model.*;


/**
 * Servlet implementation class checkTheOrders
 */
@WebServlet("/check")
public class checkTheOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()){
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // create a date format
			
			Date date = new Date(); // take the date as date-object
			
			//retrive all cart orders
			ArrayList<cart> cart_list = (ArrayList<cart>)request.getSession().getAttribute("cart-list"); // cast the array for the Cart
			
			
			//customer authentication from the created session
			customer user = (customer) request.getSession().getAttribute("customer-login"); // get the atribute from the session in loginCustomerDao
			
			if(cart_list != null && user != null) {
				
				for(cart c:cart_list) {
					
					// create an Object for bikeOrders
					bikeOrders order = new bikeOrders();
					order.setId(c.getId());
					order.setCustomerId(user.getId());
					order.setCustomerEmail(user.getEmail());
					order.setQuantity(c.getQuantity());
					order.setDate(dateFormat.format(date));
					
					//instantiate the bikeOrdersDao class
					bikeOrdersDao bODao = new bikeOrdersDao(connection.getConnection());
					
					//call the insert method from the Dao class
					boolean insert_result = bODao.insertBikeOrder(order);
					
					//if one order failed 
					if(!insert_result) break;
				
				}
				//destroy the cart_list
				cart_list.clear();
				response.sendRedirect("Orders.jsp");
				
			}else {
				if(user == null) response.sendRedirect("Login.jsp");
				response.sendRedirect("Cart.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
