package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.customerLoginDao;
import dbConnection.connection;
import model.customer;

/**
 * Servlet implementation class loginCustomer
 */
@WebServlet("/customer-login")
public class loginCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("Login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			String email = request.getParameter("email"); // get the value from input field email
			String pass = request.getParameter("passID"); // the same buth the input field is password
			
			try {
				customerLoginDao cLD = new customerLoginDao(connection.getConnection());  //create new Object from customerLoginDao (inheritance)
				customer logCustomer = cLD.customerLogin(email, pass);
				
				if(logCustomer != null) {
					request.getSession().setAttribute("customer-login", logCustomer);   // create a session with attribute
					response.sendRedirect("WelcomeUser.jsp");
					
				}else {
					out.println("Logi failed, please try again!"); // in case if the email or password are incorect
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
