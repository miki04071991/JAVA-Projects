
<%@ include file="headerUser.jsp" %>

	<div class="row">
		<h2 class="text-center my-5">My Cart</h2>
	</div>
	<div class="row my-5">
		<div class="col-md-2"></div>
		<div class="col-md-8 my-3">
			<div class="d-flex py-2">
				<h4>Total Price: ${(total>0)?total:0} $  </h4>
				<a href="check" class="btn btn-sm btn-primary mx-3">Pay now</a>  
			</div>
		<table class="table my-5">
		  <thead>		  	
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Bike Name</th>
		      <th scope="col">Brand</th>
		      <th scope="col">Price</th>
		      <th scope="col">Quantity</th>
		      <th scope="col">Action</th>
		    </tr>
		  </thead>
		  <tbody>
		  	
		  	<%
		  		if(cart_list != null){      //Array List is declared in headerUser.jsp
		  			for(cart c:cartBike){%>
					    <tr>
					      <th scope="row">
					      	<%=c.getId() %>
					      </th>
					      <td>
							<%=c.getName() %>
					      </td>
			     			<td>
							<%=c.getBrand() %>
							</td>
					      <td>
							<%=c.getPrice() %>
					      </td>
   					      <td>
							<form action="buy-now" method="post" class="form-inline">
								<input type="hidden" class="form-input" name="id" value="<%=c.getId() %>">
								<input type="hidden" class="form-input" name="bikeName" value="<%=c.getName() %>">
								<input type="hidden" class="form-input" name="bikePrice" value="<%=c.getPrice() %>">
								<div class="form-group d-flex justify-content-between" >
									<a class="btn btn-sm btn-decre" href="inc-dec?action=dec&id=<%=c.getId()%>"><i class="fas fa-minus-square"></i></a>
									<input type="number" name="quantity" class="form-control w-50" value="<%=c.getQuantity() %>" readonly>
									<a class="btn btn-sm btn-incre" href="inc-dec?action=inc&id=<%=c.getId()%>"><i class="fas fa-plus-square"></i></a>
								</div>
								<td>
					   		        <button type="submit"  class="btn btn-sm btn-primary ">Buy now</button>
									<a href="remove?id=<%=c.getId()%>" class="btn btn-sm btn-danger">Remove</a>
								</td>
							</form>
					      </td>
					    </tr>
		  			<%}
		  		}%>
		  	
		  	
		  	

		  </tbody>
		</table>
		<a href="Bikes.jsp" class="btn btn-primary">Continue Shopping</a>
		</div>
		<div class="col-md-2"></div>
	</div>







<%@ include file="footer.jsp" %>
