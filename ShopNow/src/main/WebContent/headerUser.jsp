<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.*"%>
<%@page import="dbConnection.*"%>
<%@page import="model.*"%>
<%@page import="controller.*"%>
<%@page import="dao.*"%>

<%

ArrayList<cart> cart_list = (ArrayList<cart>) session.getAttribute("cart-list");
List<cart> cartBike = null;
if(cart_list != null){
	bikeDao bDao = new bikeDao(connection.getConnection());
	cartBike = bDao.getCartBikes(cart_list);
	double total = bDao.getTotalPrice(cart_list);
	request.setAttribute("cart_list", cart_list);
	request.setAttribute("total", total);
}

%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Bike Shop</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >

<!-- Local CSS -->
<link rel="stylesheet" href="CSS/mycss.css" />

<!-- Font-awesome 5 cdn -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" >
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
</head>
<body>
	<!-- Start here -->
	<div class="container-fluid bg-white">
		<!-- Navigation Bar -->
		<div class="row">
			<div class="col-md bg-dark p-0">
				<nav class="navbar navbar-expand navbar-light bg-light my-1 justify-content-between">
					<div class="d-block">
						<a class="navbar-brand text-uppercase  ml-md-5 " href="WelcomeUser.jsp">
							<img class="logo" src="img/logo.png"/>							
						</a>	
					</div>
					<h3 class="mx-3 col my-4 fw-bolder text-info">Online Bike Shop</h3>
					<div class="ml-auto d-flex justify-content-end">
						<ul class="navbar-nav navbar_ul">
							<li class="nav-item mx-2 p-1">	
								<a href="" class="nav-link">
									<i class="fas fa-user">
										<%
											String username = (String)request.getAttribute("username");
											if(username != null){
												out.println(username);
											}
										%>
									</i>
								</a>
							</li>
							<li class="nav-item mx-2 p-1">	
								<a href="Orders.jsp" class="nav-link">
									<i class="fas fa-shopping-bag"> Orders </i>
								</a>
							</li>
							<li class="nav-item mx-2 p-1">	
								<a href="Cart.jsp" class="nav-link">
									<i class="fas fa-shopping-cart"> My Cart </i>  <span class="badge rounded-pill d-inline-block">${ cart_list.size() }</span>
								</a>
							</li>
							<li class="nav-item mx-2 p-1">	
								<a href="Welcome.jsp" class="nav-link">
									<i class="fas fa-sign-out-alt"> Logout</i>
								</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!-- Navigation Bar END -->
				<!-- Navigation Bar -->
		<div class="row">
			<div class="col-md p-0">
				<nav class="navbar navbar-expand navbar-light bg-light">
					<div class="collapse navbar-collapse ml-5"
						id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto navbar_ul">
							
								<li class="nav-item mx-2 p-1">
									<a href="WelcomeUser.jsp" class="nav-link">
										<i class="fas fa-home"> Home</i>
									</a>
								</li>
								<li class="nav-item mx-2 p-1">
									<a href="Bikes.jsp" class="nav-link">
										<i class="fas fa-bicycle"> Bikes</i>
									</a>
								</li>
								<li class="nav-item mx-2 p-1">
									<a href="Types.jsp" class="nav-link">
										<i class="fas fa-biking"> Types of Bikes</i>
									</a>
								</li>
								<li class="nav-item mx-2 p-1">
									<a href="addBike.jsp" class="nav-link">
										<i class="fas fa-plus-circle"> Add Bike For Sale</i>
									</a>
								</li>
								<li class="nav-item mx-2 p-1">
									<a href="About.jsp" class="nav-link">
										<i class="fas fa-info"> About</i>
									</a>
								</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!-- Navigation Bar END -->

</body>
</html>