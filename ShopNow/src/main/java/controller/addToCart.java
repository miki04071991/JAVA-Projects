package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.cart;



/**
 * Servlet implementation class addToCart
 */
@WebServlet("/addtocart")
public class addToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		
		try(PrintWriter out = response.getWriter()){
			ArrayList<cart> cartList = new ArrayList<>();
			
			int id = Integer.parseInt(request.getParameter("id"));
			
			cart myCart = new cart();
			
			myCart.setId(id);
			myCart.setQuantity(1);
			
			HttpSession session = request.getSession();
			ArrayList<cart> cart_list = (ArrayList<cart>) session.getAttribute("cart-list");
			
		if(cart_list == null) {
			cartList.add(myCart);
			session.setAttribute("cart-list", cartList);
			response.sendRedirect("Bikes.jsp");
		}else {
			cartList = cart_list;
			boolean exist = false;
			for(cart c:cartList) {
				if(c.getId() == id) {
					exist = true;
					out.println("<h3 style='color:green; text-align: center;'>=Bike already exist in your Shopping Cart=</br></br>"
							+ "<a style='background-color:light-gray; padding: 5px; border: 1px; border-radius: 10px; color:red; text-align: center;' href='Cart.jsp'> --> Go to Shopping Cart </a></h3>");
				}
			
			}
			
			if(!exist) {
				cartList.add(myCart);
				response.sendRedirect("Bikes.jsp");
			}
		}
	}

}
	}
