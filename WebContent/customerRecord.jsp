<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GRI Tesla Delearship</title>
<link rel="stylesheet" type="text/css" href="./styles/styles.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<a class="nav-link" href="index.jsp">Home</a>



	<div class="jumbotron text-center">
		<h1>Thank you for being our Customer!</h1>
		<p></p>
	</div>

	<form action="Purchase" method="post"></form>
	<h2>Transactions</h2>

	<c:if test="${salesReport != null}">

		<table class="table">
			<thead>
				<tr>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Email</th>
					<th scope="col">Phone Number</th>
					<th scope="col">Car Purchased</th>
					<th scope="col">Car Price</th>
					<th scope="col">Date Of Purchase</th>

				</tr>
			</thead>

			<c:forEach var="newCustomer" items="${salesReport}">
				<tr>
					<td><c:out value="${newCustomer.firstName}" /></td>
					<td><c:out value="${newCustomer.lastName} " /></td>
					<td><c:out value="${newCustomer.email}" /></td>
					<td><c:out value="${newCustomer.phoneNumber}" /></td>
					<td><c:out value="${newCustomer.carPurchased.model}" /></td>
					<td><c:out value="${newCustomer.carPurchased.price}" /></td>
					<td><c:out value="${newCustomer.dateOfPurchase}" /></td>

				</tr>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>


<br />
<br>
<br>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav mr-auto">
		<li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a>
		</li>
	</ul>
</div>
<p>Address: 1520 Park Ave, St. Loius, MO 63500</p>
<footer>
	<p>&copy; 2020 GRI Tesla Dealership, Inc.</p>
</footer>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
