<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Route List</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- bootstrap links -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!--  CSS LINK -->
<link rel="stylesheet"
	href="https://routbook.com/themes/routbook/assets/css/style.css">
<link rel="stylesheet"
	href="https://routbook.com/themes/routbook/assets/css/custom.css">
<link rel="stylesheet"
	href="https://routbook.com/themes/routbook/assets/css/colors/blue.css"
	id="colors">

<!-- input bar style -->
<link rel="stylesheet" href="${contextPath}/resources/css/style.css">

</head>
<body>
	<!-- nav bar -->
	<jsp:include page="${request.contextPath}/newItem"></jsp:include>
	<div class="left-side">

		<div class="col-12">
			<form method="GET" action="${contextPath}/search1">

				<div class="form-group row">
					<div class="col-1"></div>
					<div class="col-4">
						<input type="text" placeholder="RouteFrom..." name="routeFrom"
							class="place-autocomplete">
					</div>

					<div class="col-4">
						<input type="text" placeholder="RouteTo..." name="routeTo"
							class="form-control">
					</div>
					<div class="col-1"></div>
					<div class="col-6">
						<div class="main-search-input-item text-center">

							<select name="category">
								<option value="">Way to travel</option>
								<option value="By car">By car</option>
								<option value="On Walk">On Walk</option>
								<option value="Public transport">Public transport</option>
							</select>

						</div>
					</div>
					<div class="col-2">
						<button type="submit" class="button">Search</button>
					</div>
				</div>
			</form>


		</div>
	</div>
	</div>

	<div class="right-side">
		<div id="map"></div>
	</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="row">
	<div class="col-1"></div>
		<div class="col-3">
			<!-- Card -->
			<div class="card promoting-card" style="width: 30rem; height: 40rem;">

				<!-- Card image -->
				<div class="view overlay">
					<img class="card-img-top rounded-0"
						src="${contextPath}/resources/img/family trip.jpg"
						alt="Card image cap">
				</div>
				<!-- Card content -->
				<div class="card-body">

					<span><h6>The Group of Monuments at Mamallapuram is a
							collection of 7th- and 8th-century CE religious monuments in the
							coastal resort town of Mamallapuram, Tamil Nadu, India and a
							UNESCO World Heritage Site.</h6></span>
					<div>
						<i class="heart fa fa-heart-o"></i>
					</div>

					</div>
				</div>
			</div>
		
		<div class="col-3">
			
			<div class="card promoting-card" style="width: 30rem; height: 40rem;">

				<!-- Card image -->
				<div class="view overlay">
					<img class="card-img-top rounded-0"
						src="${contextPath}/resources/img/waterfalls.jpg"
						alt="Card image cap">
				</div>
				<!-- Card content -->
				<div class="card-body">

					<span><h6>The Group of Monuments at Mamallapuram is a
							collection of 7th- and 8th-century CE religious monuments in the
							coastal resort town of Mamallapuram, Tamil Nadu, India and a
							UNESCO World Heritage Site.</h6></span>
					<div>
						<i class="heart fa fa-heart-o"></i>
					</div>

				</div>

			</div>
			</div>
			
			<div class="card promoting-card" style="width: 30rem; height: 40rem;">

				<!-- Card image -->
				<div class="view overlay">
					<img class="card-img-top rounded-0"
						src="${contextPath}/resources/img/indian food.jpg"
						alt="Card image cap">
				</div>
				<!-- Card content -->
				<div class="card-body">

					<span><h6>The Group of Monuments at Mamallapuram is a
							collection of 7th- and 8th-century CE religious monuments in the
							coastal resort town of Mamallapuram, Tamil Nadu, India and a
							UNESCO World Heritage Site.</h6></span>
					<div>
						<i class="heart fa fa-heart-o"></i>
					</div>

					</div>
				</div>
			</div>
			<div class="col-2"></div>
			<br><br>
			<div class="row">
				<div class="col-sm-1"></div>
			<div class="card promoting-card" style="width: 30rem; height: 40rem;">

				<!-- Card image -->
				<div class="view overlay">
					<img class="card-img-top rounded-0"
						src="${contextPath}/resources/img/beach.jpg"
						alt="Card image cap">
				</div>
				<!-- Card content -->
				<div class="card-body">

					<span><h6>The Group of Monuments at Mamallapuram is a
							collection of 7th- and 8th-century CE religious monuments in the
							coastal resort town of Mamallapuram, Tamil Nadu, India and a
							UNESCO World Heritage Site.</h6></span>
					<div>
						<i class="heart fa fa-heart-o"></i>
					</div>

				</div>

			</div>
			
	</div>

	<script src="${contextPath}/resources/js/routebook.js"></script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDjVb-YDvn-OoKtpjxLbJspk5eEYtArNRQ&callback=initMap">
    </script>

	<!-- ============================================================= -->
	<div class="container">

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			<!-- 
        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2> -->
		</c:if>
		<nav class="navbar navbar-dark default-color"></nav>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>