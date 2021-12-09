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
<title>Add a Bike For Sale</title>
<script type="text/javascript">
	function validate(){ //function for validation 
		
		// get the field values by elemet id's
		var name = document.getElementById("name").value;
		var price = document.getElementById("price").value;
		var gender = document.getElementById("gender").value;
		var brand = document.getElementById("brand").value;
		var image = document.getElementById("image").value;
		var description = document.getElementById("description").value;
		
		//Email field validation (Empty and required)
		if(name == ""){
			document.getElementById("nameError").innerHTML = "Please enter a Bike Name!";
			return false;
		}else{
			document.getElementById("nameError").innerHTML = "";
		}
		if(price == ""){
			document.getElementById("priceError").innerHTML = "Please enter a price for your Bike selling!";
			return false;
		}else{
			document.getElementById("priceError").innerHTML = "";
		}
		if(gender == ""){
			document.getElementById("genderError").innerHTML = "Please enter for which gender is suitable for?";
			return false;
		}else{
			document.getElementById("genderError").innerHTML = "";
		}
		if(brand == ""){
			document.getElementById("brandError").innerHTML = "Please enter the Bike brand!";
			return false;
		}else{
			document.getElementById("brandError").innerHTML = "";
		}
		if(image == ""){
			document.getElementById("imageError").innerHTML = "Please select an image for your Bike!";
			return false;
		}else{
			document.getElementById("imageError").innerHTML = "";
		}
		
		//Password field validation (Empty, required and length)
		if(description == ""){
			document.getElementById("descriptionError").innerHTML = "Please write something for this Bike, like a comment.";
			return false;
		}else{
			document.getElementById("descriptionError").innerHTML = "";
		}

		
		return true;
	}


</script>
</head>
<body>
	<div class="row my-3">
	
		<div class="col-md-3">
			<img src="https://assets.probikeshop.fr/images/background/Fonds_generiques/Homepage/fond-gauche_EN.1637535122_1637536698.jpg" class="d-block  img-fluid" alt="...">
		</div>
		<div class="col-md-6 my-3 bg-light">
			<h2 class="text-center">Add New Bike For Sale</h2>
			<h4 class="text-center text-success">	
				<%
					String status = (String)request.getAttribute("newBike");
					if(status != null){
						out.println(status);
					}
				%>
			</h4>
			<h4 class="text-center text-danger">	
				<%
					String error = (String)request.getAttribute("newBikeError");
					if(error != null){
						out.println(error);
					}
				%>
			</h4>
				<form onsubmit="return validate()" action="<%= request.getContextPath()%>/addnewbike" method= "post" class="p-5">
				  <div class="form-group">
				    <label for="name">Bike name:</label>
				    <input type="text" id="name" name="name" class="form-control"><span style="color:red" id="nameError">*</span>			    
				  </div>
				  <div class="form-group">
				    <label for="price">Enter Price:</label>
				    <input type="text" id="price" name="price" class="form-control"><span style="color:red" id="priceError">*</span>
				  </div>
				  <div class="form-group">
				    <label for="gender">Suitable for:</label>
				    <input type="text" id="gender" name="gender" class="form-control"><span style="color:red" id="genderError">*</span>			    
				  </div>
  				  <div class="form-group">
				    <label for="brand">Bike Brand:</label>
				    <input type="text" id="brand" name="brand" class="form-control"><span style="color:red" id="brandError">*</span>			    
				  </div>
				  <div class="form-group">
				    <label for="image">Select an Image:</label>
				    <select id="image" name="image" class="my-4">
					  <option selected disabled>Choose an image:</option>
	  					<%
							try{ 
							conn = DriverManager.getConnection(connectionUrl+dbName, userId, password);
							statement=conn.createStatement();
							String sql ="SELECT * FROM bike";
							
							resultSet = statement.executeQuery(sql);
							while(resultSet.next()){
						%>
					  		<option><%=resultSet.getString("image") %></option>
	  					<% 
							}
							
							} catch (Exception e) {
							e.printStackTrace();
							}
						%>
					</select><span style="color:red" id="imageError">*</span>			    
				  </div>
				  <div class="form-group">
				    <label for="description">Add Description:</label>
				    <input type="text" id="description" name="description" class="form-control"><span style="color:red" id="descriptionError">*</span>
				  </div>
				  <button type="submit" class="btn btn-primary">Add Bike</button>
				</form>
		
		</div>
		<div class="col-md-3">
			<img src="https://assets.probikeshop.fr/images/background/Fonds_generiques/Homepage/fond-droite_EN.1637535122_1637536698.jpg" class="d-block  img-fluid" alt="...">
		</div>

	</div>






<%@include file="footer.jsp" %>
</body>
</html>