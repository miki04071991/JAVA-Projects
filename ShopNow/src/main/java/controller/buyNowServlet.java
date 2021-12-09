package controller;

import java.io.IOException;
import java.io.PrintWriter;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.bikeOrdersDao;
import dbConnection.connection;
import model.bikeOrders;
import model.cart;
import model.customer;

/**
 * Servlet implementation class buyNowServlet
 */
@WebServlet("/buy-now")
public class buyNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.setContentType("text/html;charset=UTF-8");	
		try(PrintWriter out = response.getWriter()){
			
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // create a date format
			
			Date date = new Date(); // take the date as date-object
			
			customer user = (customer) request.getSession().getAttribute("customer-login"); // get the atribute from the session in loginCustomerDao
			
			if(user != null) { // in case if the session is not empty get the values
				String bikeId = request.getParameter("id");
				String bikeName = request.getParameter("bikeName");
				int bikePrice = Integer.parseInt(request.getParameter("bikePrice"));
				int bikeQuantity = Integer.parseInt(request.getParameter("quantity"));
				if(bikeQuantity <= 0) {
					bikeQuantity = 1;
				}
				
				bikeOrders order = new bikeOrders();
				
				//set the values from the order
				order.setId(Integer.parseInt(bikeId));
				order.setBikeName(bikeName);
				order.setBikePrice(bikePrice);
				order.setCustomerId(user.getId());
				order.setCustomerEmail(user.getEmail());
				order.setQuantity(bikeQuantity);
				order.setDate(dateFormat.format(date));
				
				bikeOrdersDao orderDao = new bikeOrdersDao(connection.getConnection());
				boolean insert_order = orderDao.insertBikeOrder(order);
				
				if(insert_order) {
					ArrayList<cart> cart_list = (ArrayList<cart>)request.getSession().getAttribute("cart-list"); // cast the array for the Cart
					if(cart_list != null) {
						for(cart c:cart_list) {
							if(c.getId() == Integer.parseInt(bikeId)) {
								cart_list.remove(cart_list.indexOf(c)); // remove the order
								break;
							}
						}
						response.sendRedirect("Cart.jsp");
					}
				}else {
					out.println("order failed");
				}
				
			}else {
				response.sendRedirect("Login.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
