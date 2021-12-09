<%@ include file = "header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <title>Login</title>
	  <meta name="keywords" content="html,css,javaScript">
    <meta name="description" content="Bikes">
    <meta name="author" content="">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript">
	function validate(){ //function for validation 
		
		// get the field values by elemet id's
		var email = document.getElementById("email").value;
		var pass = document.getElementById("password").value;
		
		//Email field validation (Empty and required)
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
<body>
	<div class="row">
		<div class="col-md-3">
			<img src="https://assets.probikeshop.fr/images/background/Fonds_generiques/Homepage/fond-gauche_EN.1637535122_1637536698.jpg" class="d-block bike1 img-fluid" alt="...">
		</div>
		<div class="col-md-6 bg-light">
			<p class="h1 text-center my-3 text-danger font-italic">LogIn</p>


		
			
			<div class="row">
			 <div class="col-md-2"></div>
			 <div class="col-md-8">
			 <span class="text-danger">
				<%
					String status = (String)request.getAttribute("status");
					if(status != null){
						out.println(status);
					}
				%>
			 </span>
				<form onsubmit="return validate()" class="bg-info rounded p-3" action="customer-login" method= "post">
				  <div class="form-group">
				    <label for="email">Email:</label>
				    <input type="email" id="email" name="email" class="form-control"><span style="color:red" id="emailError">*</span>			    
				  </div>
				  <div class="form-group">
				    <label for="passwword">Password:</label>
				    <input type="password" id="password" name="passID" class="form-control"><span style="color:red" id="passError">*</span>
				  </div>
				  <button type="submit" class="btn btn-primary">Login</button>
				</form>
			 </div>
			 <div class="col-md-2"></div>
			</div>

		

		</div>
		<div class="col-md-3">
			<img src="https://assets.probikeshop.fr/images/background/Fonds_generiques/Homepage/fond-droite_EN.1637535122_1637536698.jpg" class="d-block bike img-fluid" alt="...">
		</div>
	</div>
<%@ include file ="footer.jsp" %>
</body>
</html>