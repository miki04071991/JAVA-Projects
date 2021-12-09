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
<div class="container-fluid">
<!-- Navigation Bar -->
		<div class="row">
			<div class="col-md bg-dark p-0">
				<nav class="navbar navbar-expand navbar-light bg-light my-1 justify-content-between">
					<div class="d-block">
						<a class="navbar-brand text-uppercase  ml-md-5 " href="Welcome.jsp">
							<img class="logo" src="img/logo.png"/>							
						</a>	
					</div>
					<h3 class="mx-3 col my-4 fw-bolder text-info">Online Bike Shop</h3>
					<div class="ml-auto d-flex justify-content-end">
						<ul class="navbar-nav navbar_ul">
							<li class="nav-item mx-2 p-1">	
								<a href="Welcome.jsp" class="nav-link ">
										<i class="fas fa-home"> Home</i>
								</a>
							</li>
							<li class="nav-item mx-2 p-1">	
								<a href="Singup.jsp" class="nav-link ">
										<i class="fas fa-sign-in-alt"> Sing Up</i>
								</a>
							</li>
							<li class="nav-item mx-2 p-1">	
								<a href="Login.jsp" class="nav-link">
										<i class="fas fa-sign-in-alt" aria-hidden="true"> Login</i>
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