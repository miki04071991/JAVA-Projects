<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="headerUser.jsp" %>

<%
String id = request.getParameter("id");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "onlinebikeshop";
String userId = "root";
String password = "miki1991";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection conn = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bikes</title>


</head>
<body>
		<div class="row">
			<div class="">
				<div class="title text-center">
					<h1 class="mx-3 col my-4 fw-bolder text-danger">Bikes</h1>
				</div>
				<hr class="m-0 line">
			</div>
		</div>
			<!-- The content for Bikes attributes -->
		<div class="row bg-light">
			<div class="col-md-2"></div>
			<div class="col-md-8 p-0 my-2">
				<div class="text-center">
					<h3 class="text-success">
						<%
							String status = (String)request.getAttribute("order");
							if(status != null){
								out.println(status);
							}
						%>
					
					</h3>
				</div>
				<div id="cards-content" class="d-flex flex-wrap-reverse justify-content-center">
				
	 			 
				
					<%
						try{ 
						conn = DriverManager.getConnection(connectionUrl+dbName, userId, password);
						statement=conn.createStatement();
						String sql ="SELECT * FROM bike";
						
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
					%>

				
					<div class="card m-3" style="width: 16rem;">
						<img src="img/<%=resultSet.getString("image") %>.png"
							style="width: 250px; height: 180px;" class="card-img-top"
							alt="bike">
						<div class="card-body bg-warning">
							<h6 class="card-title"><%=resultSet.getString("name") %></h6>
							<p class="card-text">
								<b>Price: </b><%=resultSet.getInt("price") %><b> $</b>
							</p>
							<p id="gender"><b>Gender: </b> <%=resultSet.getString("gender") %></p>
							<p id="brand" ><b>Brand: </b> <%=resultSet.getString("brand") %></p>
							<p id="desc"  class="bg-light rounded p-1"><b>About: </b> <%=resultSet.getString("description") %></p>
						</div>
						<div class="text-center">
									<a href="addtocart?id=<%=resultSet.getInt("id")%>" class="btn btn-primary my-2"><i class="fal fa-cart-plus"> Add To Shoping Cart</i></a>
						</div>
					</div>
				
			
			
					<% 
						}
						
						} catch (Exception e) {
						e.printStackTrace();
						}
					%>
					
					
					
			</div>
		</div>
		<div class="col-md-2"></div>
		</div>
			
		
<%@include file="footer.jsp" %>
</body>
</html>