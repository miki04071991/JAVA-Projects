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

import dao.newBikeDao;
import model.newBike;

/**
 * Servlet implementation class newBikeServlet
 */
@WebServlet("/addnewbike")
public class newBikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	private newBikeDao bikeDefinition = new newBikeDao(); // create object from newBikeDao
	
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newBikeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		int price =Integer.parseInt(request.getParameter("price"));
		String gender = request.getParameter("gender");
		String brand = request.getParameter("brand");
		int image =Integer.parseInt(request.getParameter("image"));
		String description = request.getParameter("description");
		
		
		RequestDispatcher reqDis;
		PreparedStatement stmt;
		ResultSet result;
		Connection con;
		
		int counter = 0;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebikeshop", "root", "miki1991");
			
			String query = "SELECT * FROM bike";
			stmt = con.prepareStatement(query);
			
			result=stmt.executeQuery();
			
			while(result.next()) {
				if(name.equals(result.getString("name"))) {
					counter = 1;					
				}
			}
			if(counter == 1) {
				request.setAttribute("newBikeError","Bike with this name already exist, please enter a new name!");
				reqDis = request.getRequestDispatcher("addBike.jsp");
				reqDis.forward(request, response);
				counter = 0;
			}
			else {
				request.setAttribute("newBike","You've added a new Bike for sale.");
				reqDis = request.getRequestDispatcher("addBike.jsp");
				reqDis.forward(request, response);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		newBike addBike = new newBike();
		addBike.setName(name);
		addBike.setPrice(price);
		addBike.setGender(gender);
		addBike.setBrand(brand);
		addBike.setImage(image);
		addBike.setDescription(description);
		try {
			bikeDefinition.registerNewBike(addBike);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}

}
