<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>GRI Tesla Dealership,Inc.</title>
  <link rel="stylesheet" type="text/css" href="./styles/styles.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  
 </head>
<body>

<form action="Purchase" method="post">
	<select class="form-control" name="model">
		<option value="tesla">Tesla</option>
		<option value="model 3">Model 3</option>
		<option value="model s">Model S</option>
		<option value="model x">Model X</option>
		<option value="cybertruck">CyberTruck</option>
	</select>
	<div class="form-group">
		<label for="year"></label> <input type="text" class="form-control"
			name="year" id="year" placeholder="Year">
	</div>
	<div class="form-group">
		<label for="mileage"></label> <input type="text" class="form-control"
			name="mileage" id="mileage" placeholder="Mileage">
	</div>
	<div class="form-group">
		<label for="vinNum"></label> <input type="text" class="form-control"
			name="vinNum" id="vinNum" placeholder="VIN Number">
	</div>
	<div class="form-group">
		<label for="price"></label> <input type="text" class="form-control"
			name="price" id="price" placeholder="Price">
	</div>
	<div class="form-group">
		<label for="pictures"></label> <input type="text" class="form-control"
			name="pictures" id="pictures" placeholder="Pictures">
	</div>
<br>
 <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Submit</button>
</form>

</body>
</html>