<%@page import="org.hibernate.dialect.function.TrimFunctionTemplate"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>welcome</title>
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
<!-- background image -->
<style>
body {
	background-image: url("${contextPath}/resources/img/img-1.jpg");
}
</style>
<link rel="stylesheet" href="${contextPath}/resources/css/style.css">
</head>
<body>

<!-- nav bar -->
<jsp:include page="${request.contextPath}/newItem"></jsp:include>	

 		<br> 
 		<br> 
 		<br> 
 		<br> 
 		<br> 
 		

		<div class="main-search">

			<div class="container">
				<div class="row">
					<div class="col-md-12">
					<div class="text-light text-center">
						
							<h2>Discover interesting routes around the world</h2>
						
					</div>
						<form method="GET" action="${contextPath}/search">
						<div class="text-center">
							<div class="form-group row">
								<div class="col-3">
									<input type="text" placeholder="RouteFrom..." name="routeFrom"
										class="place-autocomplete">
								</div>

								<div class="col-3">
									<input type="text" placeholder="RouteTo..." name="routeTo"
										class="form-control">
								</div>
								<div class="col-4">
								<div class="main-search-input-item text-center">
									
								<select name="category">
										<option value="" >Way to travel</option>
										<option value="By car">By car</option>
										<option value="On Walk">On Walk</option>
										<option value="Public transport">Public transport</option>
									</select>

								</div>
								</div>
									<button type="submit" class="button">Search</button>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	
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
