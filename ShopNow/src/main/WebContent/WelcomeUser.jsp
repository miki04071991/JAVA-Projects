<%@ include file = "headerUser.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome User</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >

<!-- Local CSS -->
<link rel="stylesheet" href="CSS/mycss.css" />

<!-- Font-awesome 5 cdn -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" >

</head>
<body>
		<div class="row">
			<div class="col-md bg-light">
				<div class="title text-center d-flex">					
					
				</div>
				<hr class="m-0 line">
			</div>
		</div>
		<div class="row bg-dark">
			<div class="col-md-2 px-0  bg-dark">
				<div class="row">
				
					<div class="col-md text-center text-white">
						<img src="https://assets.probikeshop.fr/images/background/Fonds_generiques/Homepage/fond-gauche_EN.1637535122_1637536698.jpg" class="d-block bike1 img-fluid" alt="...">
						<div class="h6 m-md-2 font-italic">-The bike, also known as "bicycle" is not just a UK hobby and outdoor sport. 
						It is also a type of transportation that functions solely based on the energy expended by its user: the cyclist!
						</div>		
					</div>
					
				</div>
			</div>
			
			<div class="col-md-8 px-0">
			
				<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
				  <div class="carousel-indicators">
				    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
				    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
				  </div>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="img/bike2.jpg" class="d-block w-100" alt="...">
				      <div class="carousel-caption d-none d-md-block">
				        <h5>Fun Time</h5>
				       	<p>Bike is the main reason for enjoying.</p>
				      </div>
				    </div>
				    <div class="carousel-item">
				      <img src="img/bike3.jpg" class="d-block w-100" alt="...">
				      <div class="carousel-caption d-none d-md-block">
				        <h5>Kids Fun</h5>
				        <p>Kids have more fun with BMX.</p>
				      </div>
				    </div>
				    <div class="carousel-item">
				      <img src="img/bike1.jpg" class="d-block w-100" alt="...">
				      <div class="carousel-caption d-none d-md-block">
				        <h5>Mountain Ride</h5>
				        <p>Mountain bicycles are designed for off-road cycling.</p>
				      </div>
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div>
			</div>
			<div class="col-md-2 px-0 bg-dark">
			
			<div class="row">
				
				<div class="col-md text-center text-white">
					<img src="https://assets.probikeshop.fr/images/background/Fonds_generiques/Homepage/fond-droite_EN.1637535122_1637536698.jpg" class="d-block bike img-fluid" alt="...">
					<div class="h6 m-md-2 font-italic">-To cycle is to be environmentally friendly, silent, economical, fast and healthy. 
					Bikes and electric bikes have many advantages and more than a few fans.</div>		
				</div>
			</div>
			
			</div>
		</div>


<%@ include file = "footer.jsp" %>

</body>
</html>