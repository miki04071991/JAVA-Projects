package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.cart;

/**
 * Servlet implementation class IncDecServlet
 */
@WebServlet("/inc-dec")
public class IncDecServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		try(PrintWriter out = response.getWriter()) {
			String action = request.getParameter("action");
			int id = Integer.parseInt(request.getParameter("id"));
			
			ArrayList<cart> cart_list = (ArrayList<cart>)request.getSession().getAttribute("cart-list");
			
			if(action != null && id>=1) {
				if(action.equals("inc")) {
					for(cart c:cart_list) {
						if(c.getId() == id) {
							int quantity = c.getQuantity();
							quantity ++;
							c.setQuantity(quantity);
							response.sendRedirect("Cart.jsp");
						}
					}
				}
				if(action.equals("dec")) {
					for(cart c:cart_list) {
						if(c.getId() == id && c.getQuantity() > 1) {
							int quantity = c.getQuantity();
							quantity --;
							c.setQuantity(quantity);
							break;
						}
					}
					response.sendRedirect("Cart.jsp");
				}
			}else {
				response.sendRedirect("Cart.jsp");
			}
			
			
		}
	}

}
