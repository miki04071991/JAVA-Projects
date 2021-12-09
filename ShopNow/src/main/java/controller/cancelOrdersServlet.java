package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.bikeOrdersDao;
import dbConnection.connection;

/**
 * Servlet implementation class cancelOrdersServlet
 */
@WebServlet("/cancel-orders")
public class cancelOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	//method for canceling the orders
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()){
			String id = request.getParameter("id"); // get the id from the request
			if(id != null) {
				//create istance from bikeOrdersDao
				bikeOrdersDao bODao = new bikeOrdersDao(connection.getConnection());
				bODao.cancelOrder(Integer.parseInt(id));
				
			}
			//after canceling send redirect to Orders page
			response.sendRedirect("Orders.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
