<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Next Generation of Tesla Welcome!</title>
<link rel="stylesheet" type="text/css" href="./styles/styles.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

</head>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a>
			</li>
						
		</ul>
	</div>
</nav>

<body>

	Tesla Models
	<br>
	<select class="form-control" name="model">
	<option value="model 3">Model 3</option>
	<option value="model s">Model S</option>
	<option value="model x">Model X</option>
	<option value="cybertruck">Cybertruck</option>

	</select>
	<br>
<form action="carDisplay" method="post" >
	<c:if test="${find != null}">

		<div class="row">
			<c:forEach var="find" items="${find}">
				<div class="card col-3" style="width: 50%;">
					<img src="${find.pictures}" style="width: 250px; height: auto;"
						class="card-img-top"> <br>

					<div class="card-body">
					
						<c:out value="${find.model}" />
						<br> Year:
						<c:out value="${find.year}" />
						<br> Mileage:
						<c:out value="${find.mileage}" />
						<br> VIN Number:
						<c:out value="${find.vinNum}" />
						<br> Car Price: $
						<c:out value="${find.price}" />
						<br> Date In Inventory:
						<c:out value="${find.dateInInventory}" />
						<br>
					</div>
				</div>

				<br>
			</c:forEach>
		</div>

	</c:if>
	<br>
	<a class="nav-link" href="index.jsp">Home</a>
	<br>
	
	</form>
	<p>Address: 1520 Park Ave, St. Loius, MO 63500</p>
	<footer class="text-center">
		<p>&copy; 2020 GRI Tesla Dealership, Inc.</p>
	</footer>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
</body>
</html>