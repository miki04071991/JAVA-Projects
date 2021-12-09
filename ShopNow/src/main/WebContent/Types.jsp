<%@ include file = "headerUser.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Types of Bikes</title>

</head>
<body>
		<div class="row">
			<div class="">
				<div class="title text-center">
					<h1 class="mx-3 col my-4 fw-bolder text-danger">Types of Bikes</h1>
				</div>
				<hr class="m-0 line">
			</div>
		</div>
		<div class="row bg-light">
			<div class="col-3">
				<!-- Filter the bikes -->
				<h3 class="my-3 fw-bolder">Filter by:</h3>
				<ul class="list-group">
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between align-items-center list-filter showAll">Show
						all<span class="badge rounded-pill showAllBadge"></span>
					</li>
				</ul>
				<hr class="m-0 line">
				<!-- Filter the bikes by Gender -->
				<h4 class="my-3 fw-bolder">Gender</h4>
				<ul class="list-group">
					<!-- Male filtered -->
					<li onclick="show_gender()"
						class="list-group-item p-0 my-3 d-flex justify-content-between align-items-center list-filter male">Male<span
						class="badge rounded-pill maleBadge"></span>
					</li>
					<!-- Female filtered -->
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between align-items-center list-filter female">Female<span
						class="badge  rounded-pill femaleBadge"></span>
					</li>
				</ul>
				<hr class="m-0 line">
				<!-- Filter the bikes by Brand -->
				<h4 class="my-4 fw-bolder">Brand</h4>
				<ul class="list-group">
					<!-- Le Grand Bikes -->
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between text-uppercase  align-items-center list-filter le-grand-bikes">le
						grand bikes<span class="badge rounded-pill leGrandBadge"></span>
					</li>
					<!--Kross Bikes  -->
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between text-uppercase  align-items-center list-filter kross">kross<span
						class="badge  rounded-pill krossBadge"></span>
					</li>
					<!-- Explorer Bikes -->
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between text-uppercase  align-items-center list-filter explorer">explorer<span
						class="badge rounded-pill explorerBadge"></span>
					</li>
					<!-- Visitor Bikes -->
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between text-uppercase  align-items-center list-filter visitor">visitor<span
						class="badge  rounded-pill visitorBadge"></span>
					</li>
					<!-- Pony Bikes -->
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between text-uppercase  align-items-center list-filter pony">pony<span
						class="badge rounded-pill ponyBadge"></span>
					</li>
					<!-- Force Bikes -->
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between text-uppercase  align-items-center list-filter force">force<span
						class="badge  rounded-pill forceBadge"></span>
					</li>
					<!-- E-Bikes  -->
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between text-uppercase  align-items-center list-filter e-bikes">e-bikes<span
						class="badge rounded-pill ebikesBadge"></span>
					</li>
					<!-- Ideal Bikes -->
					<li
						class="list-group-item p-0 my-3 d-flex justify-content-between text-uppercase  align-items-center list-filter ideal">ideal<span
						class="badge  rounded-pill idealBadge"></span>
					</li>
				</ul>
				<hr class="m-0 line">
			</div>
			
			<!-- The content for Bikes attributes -->
	
			<div class="col-9 p-0 my-2">
				<div id="cards-content" class="d-flex flex-wrap-reverse justify-content-center">
					
			</div>
		</div>
			
		</div>
<%@ include file= "footer.jsp" %>
<script type="text/javascript" src="JavaScript/myJS.js"></script>
</body>
</html>