<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Details!</title>
<link rel="stylesheet" type="text/css" href="./styles/styles.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

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
	
	<form action="search" method="post" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" name="carSearch" placeholder="Search by Model" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
    </div>
	
</nav>

<body>
<div id= "vinNum" >

	<c:if test="${specifics != null}">

			<div class="card col-3" style="width: 60%;">
						<img src="${specifics.pictures}" style="width: 240px; height: auto;"
							class="card-img-top"> <br>

						<div class="card-body">
							Make:
							<c:out value="${specifics.make}" />
							<br> Model:
							<c:out value="${specifics.model}" />
							<br> Year:
							<c:out value="${specifics.year}" />
							<br> Mileage:
							<c:out value="${specifics.mileage}" />
							<br> Car Price: $
							<c:out value="${specifics.price}" />
							<br> Date In Inventory:
							<c:out value="${specifics.dateInInventory}" />
							<br> Vin Number:
							<c:out value="${specifics.vinNum}" />
						</div>		
				</div>
		</c:if>
	<br>
	<a href="buy.jsp">
	<button type="submit" class="btn btn-outline-success my-2 my-sm-0" >Purchase Now</button></a>

	
</div>
	<a class="nav-link" href="index.jsp">Home</a>
	<br>
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