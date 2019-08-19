
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Register</title>
</head>
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
				<li class="nav-item"><a class="nav-link" href="./registerpage"><h5>Register</h5>
						<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="./loginpage"><h5>Login</h5></a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="./userupdatepage"><h5>Update</h5></a></li>
				<li class="nav-item"><a class="nav-link"
					href="./deleteuserpage"><h5>Delete</h5></a></li>
				<li class="nav-item"><a class="nav-link" href="./homepage"><h5>HomePage</h5></a>
				</li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<div class="card" style="width: 40rem; border-color: azure">
		<div class="jumbotron">
			<form action="./register" method="post">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputfirstname">UserName</label> <input type="text"
							class="form-control" id="inputfirstname" name="userName"
							placeholder="enter the name" required="required">
					</div>
					<div class="form-group col-md-6">
						<label for="inputlastname">MobileNumber</label> <input type="text"
							class="form-control" id="inputlastname" name="mobileNo"
							placeholder="enter the mobile no" required="required">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Email</label> <input type="email"
							class="form-control" id="inputEmail4" name="email"
							placeholder="Email" required="required">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Password</label> <input
							type="password" name="password" class="form-control"
							id="inputPassword4" placeholder="Password" required="required">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">Address</label> <input type="text"
							class="form-control" name="address" id="inputCity"
							placeholder="enter address" required="required">
					</div>

					<div class="form-group col-md-6">
						<label for="inputPassword4">Phone</label> <input type="text"
							class="form-control" id="inputPhone" placeholder="phone"
							name="phone" required="required">
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
</body>
</html>
