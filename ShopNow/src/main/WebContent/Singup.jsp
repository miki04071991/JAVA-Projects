<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SingUp</title>
<script type="text/javascript">
	function validate(){ //function for validation 
		
		// get the field values by elemet id's
		var firstName = document.getElementById("first").value;
		var lastName = document.getElementById("last").value;
		var userName = document.getElementById("user").value;
		var address = document.getElementById("address").value;
		var email = document.getElementById("email").value;
		var pass = document.getElementById("password").value;
		
		//Email field validation (Empty and required)
		if(firstName == ""){
			document.getElementById("firstError").innerHTML = "Please enter your First Name!";
			return false;
		}else{
			document.getElementById("firstError").innerHTML = "";
		}
		if(lastName == ""){
			document.getElementById("lastError").innerHTML = "Please enter your Last Name!";
			return false;
		}else{
			document.getElementById("lastError").innerHTML = "";
		}
		if(userName == ""){
			document.getElementById("userError").innerHTML = "Please enter your Username!";
			return false;
		}else{
			document.getElementById("userError").innerHTML = "";
		}
		if(address == ""){
			document.getElementById("addressError").innerHTML = "Please enter your Address!";
			return false;
		}else{
			document.getElementById("addressError").innerHTML = "";
		}
		if(email == ""){
			document.getElementById("emailError").innerHTML = "Please enter a valid Email!";
			return false;
		}else{
			document.getElementById("emailError").innerHTML = "";
		}
		
		//Password field validation (Empty, required and length)
		if(pass == ""){
			document.getElementById("passError").innerHTML = "Please enter your valid Password!";
			return false;
		}else{
			document.getElementById("passError").innerHTML = "";
		}
		if(pass.length<5 || pass.length>8){
			document.getElementById("passError").innerHTML = "Password field must countain between 5 to 8 characters";
			return false;
		}else{
			document.getElementById("passError").innerHTML = "";
		}
		
		return true;
	}


</script>
</head>
<body class="">
	
		<div class="row">
			<div class="col-md-3">
				<img src="https://assets.probikeshop.fr/images/background/Fonds_generiques/Homepage/fond-gauche_EN.1637535122_1637536698.jpg" class="d-block bike1 img-fluid" alt="...">
			</div>
			<div class="col-md-6 bg-light">
				<h1 class="text-center text-danger my-3">SingUp</h1>
	
				<%
					String status = (String)request.getAttribute("status");
					if(status != null){
						out.println(status);
					}
				%>
			
				
					<div class="row ">
					 <div class="col-md-2">
					 	
					 </div>
					 <div class="col-md-8 bg-info p-3  rounded">
						<form onsubmit="return validate()" action="<%= request.getContextPath()%>/register" method= "post">
						  <div class="form-group">
						    <label for="first">Firstname:</label>
						    <input type="text" id="first" name="firstName" class="form-control"><span style="color:red" id="firstError">*</span>			    
						  </div>
						  <div class="form-group">
						    <label for="last">Lastname:</label>
						    <input type="text" id="last" name="lastName" class="form-control"><span style="color:red" id="lastError">*</span>
						  </div>
						  <div class="form-group">
						    <label for="user">Username:</label>
						    <input type="text" id="user" name="userName" class="form-control"><span style="color:red" id="userError">*</span>			    
						  </div>
		  				  <div class="form-group">
						    <label for="address">Address:</label>
						    <input type="text" id="address" name="address" class="form-control"><span style="color:red" id="addressError">*</span>			    
						  </div>
						  <div class="form-group">
						    <label for="email">Email:</label>
						    <input type="email" id="email" name="email" class="form-control"><span style="color:red" id="emailError">*</span>			    
						  </div>
						  <div class="form-group">
						    <label for="passwword">Password:</label>
						    <input type="password" id="password" name="passID" class="form-control"><span style="color:red" id="passError">*</span>
						  </div>
						  <button type="submit" class="btn btn-primary">Sing Up</button>
						</form>
					 </div>
					 <div class="col-md-2">
					 	
					 </div>
					</div>
		
				
		
				</div>
				<div class="col-md-3">
					<img src="https://assets.probikeshop.fr/images/background/Fonds_generiques/Homepage/fond-droite_EN.1637535122_1637536698.jpg" class="d-block bike img-fluid" alt="...">
				</div>
			</div>
<%@ include file="footer.jsp" %>

</body>
</html>