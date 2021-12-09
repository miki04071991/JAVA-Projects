package Singup_Login;


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

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String user = request.getParameter("username");
		String Pass = request.getParameter("passID");
		
		
		
		PreparedStatement stmt;
		ResultSet result;
		Connection con;
		RequestDispatcher reqDis;
		int counter = 0;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebikeshop", "root", "miki1991");
			
			String query = "SELECT * FROM register";
			stmt = con.prepareStatement(query);
			
			result=stmt.executeQuery();
			
			
			
			while(result.next()) {
				if(user.equals(result.getString("username")) && Pass.equals(result.getString("pass"))) {
					counter = 1;
					String first = result.getString("firstname");
					String last = result.getString("lastname");
					request.setAttribute("username",first + " " + last);
					
					HttpSession session = request.getSession();
					session.setAttribute("user", user);
					
				}
			}
			if(counter == 1) {
				request.setAttribute("status","Login Successfully.");
				reqDis = request.getRequestDispatcher("WelcomeUser.jsp");
				reqDis.forward(request, response);
				counter = 0;
			}
			else {
				request.setAttribute("status","Wrong Username or Password. Please try again!");
				reqDis = request.getRequestDispatcher("Login.jsp");
				reqDis.forward(request, response);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}

}
