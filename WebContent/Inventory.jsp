<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventory</title>

<link rel="stylesheet" type="text/css" href="./styles/styles.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
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
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
			</a></li>
		</ul>
	</div>
</nav>

<body>

	<div ="container" >
		<div style="margin-top: 100px">
			<div style="width: 300px">


				<form action="Inventory" method="Post">
					<select class="form-control" name="model">
						<option value="tesla">Tesla</option>
						<option value="model 3">Model 3</option>
						<option value="model s">Model S</option>
						<option value="model x">Model X</option>
						<option value="cyber truck">Cyber Truck</option>
					</select>

					<div class="form-group">
						<label for="year"></label> <input type="text" class="form-control"
							name="year" id="year" placeholder="Year">
					</div>
					<div class="form-group">
						<label for="mileage"></label> <input type="text"
							class="form-control" name="" id="mileage" placeholder="Mileage">
					</div>
					<div class="form-group">
						<label for="vinNum"></label> <input type="text"
							class="form-control" name="nivNum" id="vinNum"
							placeholder="VIN Number">
					</div>

					<div class="form-group">
						<label for="price"></label> <input type="text"
							class="form-control" name="price" id="price" placeholder="Price">
					</div>
					<div class="form-group">
						<label for="description"></label> <input type="text"
							class="form-control" name="description" id="description"
							placeholder="Description">
					</div>
					<div class="form-group">
						<label for="dateOfPurchase"></label> <input type="text"
							class="form-control" name="dateOfPurchase" id="dateOfPurchase"
							placeholder="Date of Purchase">
					</div>
					<div class="form-group">
						<label for="pictures"></label> <input type="text"
							class="form-control" name="pictures" id="year"
							placeholder="Pictures">
					</div>

					<br>
					<button type="submit">add another Tesla</button>
					<br>
				</form>
				<br>
				<c:if test="${cars != null}">
					<table class="table">
						<h3>Inventory</h3>
						<br>
						<tr>
							<th>Model</th>
							<th>Year</th>
							<th>Mileage</th>
							<th>VIN No</th>
							<th>Price</th>
							<th>Date in Inventory</th>
							
						</tr>
						<c:forEach var="car" items="${cars}">
							<tr>
								<td><c:out value="${car.model}" /></td>
								<td><c:out value="${car.year}" /></td>
								<td><c:out value="${car.mileage}" /></td>
								<td><c:out value="${car.vinNum}" /></td>
								<td><c:out value="${car.price}" /></td>
								<td><c:out value="${car.dateInInventory}" /></td>
								</tr>
						</c:forEach>
					</table>
				</c:if>
			</div>
		</div>


		<br>
		<p>Address: 1520 Park Ave, St. Loius, MO 63500</p>

		<footer>
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