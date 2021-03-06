<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Add Hotel</title>
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
				<li class="nav-item"><a class="nav-link" href="./addhotelpage"><h5>AddHotel</h5>
						<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link"
					href="./updatehotelpage"><h5>UpdateHotel</h5></a></li>
				<li class="nav-item"><a class="nav-link"
					href="./deletehotelpage"><h5>DeleteHotel</h5></a></li>
				<li class="nav-item"><a class="nav-link" href="./homepage"><h5>HomePage</h5></a>
				</li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<form action="./addhotel" method="post">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Hotel Name</label> <input type="text"
							class="form-control" name="hotelName" placeholder="name"
							required="required">
					</div>
					<div class="form-group col-md-6">
						<label for="inputAddress">PhoneNo</label> <input type="text"
							class="form-control" name="phoneNo" placeholder="phoneno"
							required="required">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputAddress2">City</label> <input type="text"
							class="form-control" name="city" placeholder="city"
							required="required">
					</div>
					<div class="form-group col-md-6">
						<label for="inputAddress2">Address</label> <input type="text"
							class="form-control" name="address" placeholder="address"
							required="required">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">Email</label> <input type="email"
							class="form-control" name="email" placeholder="email"
							required="required">
					</div>
					<div class="form-group col-md-4">
						<label for="inputZip">AvreageRatePerNight</label> <input
							type="text" class="form-control" name="averageRatePerNight"
							placeholder="AverageRatePerNight" required="required">
					</div>
					<div class="form-group col-md-4">
						<label for="inputZip">NoOfRooms</label> <input type="text"
							class="form-control" name="noOfRooms" placeholder="No Of Rooms"
							required="required">
					</div>
				</div>
				<div class="form-row">

					<div class="form-group col-md-2">
						<label for="inputAddress">Wifi</label> <input type="checkbox"
							name="wifi" value="yes" class="form-control">
					</div>
					<div class="form-group col-md-2">
						<label for="inputPassword4">Resturant</label> <input
							type="checkbox" class="form-control" name="resturant" value="yes">
					</div>
					<div class="form-group col-md-2">
						<label for="inputCity">Meals</label> <input type="checkbox"
							class="form-control" name="meals" value="yes">
					</div>
					<div class="form-group col-md-2">
						<label for="inputZip">A/C</label> <input type="checkbox"
							class="form-control" name="airConditonal" value="yes">
					</div>
					<div class="form-group col-md-4">
						<label for="inputZip">Availbility</label> <input type="checkbox"
							class="form-control" name="isAvailabilty" value="yes">
					</div>
				</div>
				<br>
				<button type="submit" class="btn btn-primary">Add Hotel</button>
			</form>
		</div>
	</div>
</body>
</html>