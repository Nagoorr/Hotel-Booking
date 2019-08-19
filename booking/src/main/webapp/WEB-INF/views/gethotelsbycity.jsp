<%@page import="com.hotel.booking.dto.Hotel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotels List By City</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<a class="navbar-brand" href="#" style="padding-left: 3%"> <img
			src="./resources/images/finix.jpeg" width="50" height="30"><b
			style="padding-left: 20%">booking.com</b>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNavDropdown"
			style="padding-left: 10%;">
			<ul class="navbar-nav" style="padding-top: 1%">
				<li class="nav-item"><a class="nav-link"
					href="./filterhotelspage"><h5>FilterHotels</h5></a></li>
				<li class="nav-item"><a class="nav-link" href="./homepage"><h5>HomePage</h5></a>
				</li>
			</ul>
		</div>
	</nav>
	<%
		List<Hotel> list = (List<Hotel>) request.getAttribute("list");

		if (list != null) {
			out.print("<h1> Hotel Details are: </h1>");
			for (Hotel hotel : list) {
				out.print("<h3> Hotel Name: " + hotel.getHotelName() + "</h3>");
				out.print("<h3> Wifi: " + hotel.getWifi() + "</h3>");
				out.print("<h3> A/C: " + hotel.getAirConditonal() + "</h3>");
				out.print("<h3> Resturant: " + hotel.getResturant() + "</h3>");
				out.print("<h3> Phone No: " + hotel.getPhoneNo() + "</h3>");
				out.print("<h3> Meals: " + hotel.getMeals() + "</h3>");
				out.print("<h3> Email: " + hotel.getEmail() + "</h3>");
				out.print("<h3> City: " + hotel.getCity() + "</h3>");
				out.print("<h3> Price: " + hotel.getAverageRatePerNight() + "</h3>");
	%>
	<br>
	<br>
	<form action="./addratings" method="post">
		<h4>Add Review</h4>
		<br>
		<div class="form-check">
			<input class="form-check-input" type="radio" value="1" name="ratings"
				id="defaultCheck1"> <label class="form-check-label"
				for="defaultCheck1"> 1 </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
				class="form-check-input" type="radio" value="2" name="ratings"
				id="defaultCheck1"> <label class="form-check-label"
				for="defaultCheck1"> 2 </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
				class="form-check-input" type="radio" value="3" name="ratings"
				id="defaultCheck1"> <label class="form-check-label"
				for="defaultCheck1"> 3 </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
				class="form-check-input" type="radio" value="4" name="ratings"
				id="defaultCheck1"> <label class="form-check-label"
				for="defaultCheck1"> 4</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
				class="form-check-input" type="radio" value="5" name="ratings"
				id="defaultCheck1"> <label class="form-check-label"
				for="defaultCheck1"> 5</label>
		</div>
		<br> <input class="form-control mr-sm-2" type="text"
			name="reviews" placeholder="Comments for hotel" aria-label="Search"
			style="width: 300px; height: 100px;" required="required"><br>
		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Submit</button>

	</form>

	<%
		out.println();
			}
		}

		else {
			out.print("<h1> No Hotels Found please enter the valid location </h1>");
		}
	%>
</body>
</html>