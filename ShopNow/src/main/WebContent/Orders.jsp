
<%
customer user = (customer) request.getSession().getAttribute("customer-login");

List<bikeOrders> bOrders = null;

if(user != null){
	request.setAttribute("customer-login", user);
	bOrders = new bikeOrdersDao(connection.getConnection()).bikeOrder(user.getId());
}else{
	response.sendRedirect("Login.jsp");
}

%>

<%@ include file="headerUser.jsp"%>

<div class="row">
	<h2 class="text-center my-md-5">Orders</h2>
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<table class="table my-5">
		  <thead>		  	
		    <tr>
		      <th scope="col">Order Id</th>
		      <th scope="col">Bike Name</th>
		      <th scope="col">Bike Price</th>
		      <th scope="col">Quantity</th>
		      <th scope="col">Customer Email Address</th>
		      <th scope="col">Order Date</th>
		       <th scope="col">Action</th>
		    </tr>
		  </thead>
		  <tbody>
		  <%
		  	if(bOrders != null){
		  		for(bikeOrders bO:bOrders){%>
		  		<tr>
		  			<td><%=bO.getOrderId() %></td>
		  			<td><%=bO.getBikeName()%></td>
		  			<td><%=bO.getBikePrice()%></td>
		  			<td><%=bO.getQuantity()%></td>
		  			<td><%=bO.getCustomerEmail()%></td>
		  			<td><%=bO.getDate()%></td>
		  			<td><a class="btn btn-sm btn-danger" href="cancel-orders?id=<%=bO.getOrderId()%>">Cancel</a></td>
	  			</tr>
		  		<%}
		  	}
		  
		  %>
		  </tbody>
		  </table>
	</div>
	<div class="col-md-2"></div>






</div>







<%@ include file="footer.jsp"%>