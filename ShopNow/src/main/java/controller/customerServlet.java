package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.customerDao;
import model.customer;


/**
 * Servlet implementation class emploeeServlet
 */
@WebServlet("/register")
public class customerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private customerDao customerDefinition = new customerDao(); // create object from customerdefinition
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public customerServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher distpatcher = request.getRequestDispatcher("WebContent/Singup.jsp");
		distpatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");  // get all the values from the form for singing up
		String lastName = request.getParameter("lastName");
		String userName = request.getParameter("userName");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		RequestDispatcher reqDis;
		PreparedStatement stmt;
		ResultSet result;
		Connection con;
		
		int counter = 0;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebikeshop", "root", "miki1991"); // set up the connection with the database
			
			String query = "SELECT * FROM register";
			stmt = con.prepareStatement(query);
			
			result=stmt.executeQuery();
			
			while(result.next()) {
				if(userName.equals(result.getString("username")) || password.equals(result.getString("pass"))) { //check if username or password already exist
					counter = 1;					
				}
			}
			if(counter == 1) {
				request.setAttribute("status","Username or Password already exist, please try again."); // print a message as an error
				reqDis = request.getRequestDispatcher("Singup.jsp");
				reqDis.forward(request, response);
				counter = 0;
			}
			else {
				request.setAttribute("status","Singup successfully, please Login!"); // evrything is ok
				reqDis = request.getRequestDispatcher("Login.jsp");
				reqDis.forward(request, response);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		customer newCustomer = new customer(); // inheritance 
		newCustomer.setFirstName(firstName);// set the values fro the new customer from the input fields
		newCustomer.setLastName(lastName);
		newCustomer.setUserName(userName);
		newCustomer.setAddress(address);
		newCustomer.setEmail(email);
		newCustomer.setPassword(password);

		try {
			customerDefinition.registerCustomer(newCustomer); //call the method and executed it

		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		

		
		
		
		
		RequestDispatcher distpatcher = request.getRequestDispatcher("/Login.jsp");
		distpatcher.forward(request, response);
		}

}
