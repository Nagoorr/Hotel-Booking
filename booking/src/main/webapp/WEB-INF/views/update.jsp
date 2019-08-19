<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
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
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<form action="./userupdate" method="post">
				<div class="form-row">
					<div class="form-group col-md-4">


						<label for="inputAddress2">UserName</label> <input type="text"
							class="form-control" name="userName"
							placeholder="Current User Name" required="required">
					</div>
					<div class="form-row">
						<div class="form-group col-md-4"
							style="width: 390px; margin-left: 6px">
							<label for="inputPassword4">MobileNo</label> <input type="text"
								class="form-control" name="mobileNo" placeholder="Update mobile"
								required="required">
						</div>

						<div class="form-row">
							<div class="form-group col-md-6"
								style="margin-left: 50px; width: 700px">
								<label for="inputEmail4">Password</label> <input type="password"
									class="form-control" name="password"
									placeholder="Update Password" required="required">
							</div>
						</div>

						<label for="inputZip"
							style="margin-left: 8px; margin-top: 8px; width: 370px">Phone
							<input type="text" class="form-control" name="phone"
							placeholder="Update phone" required="required">
						</label>
						<div class="form-group col-md-4" style="margin-left: 50px">
							<label for="inputState">Address</label> <input type="text"
								class="form-control" name="address" placeholder="Update Address"
								required="required">
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-4" style="margin-left:">
						<label for="inputCity">Email</label> <input type="email"
							class="form-control" name="email" placeholder=" Update Email"
							required="required">
					</div>
				</div>

				<button type="submit" class="btn btn-primary"
					style="margin-left: 150px; margin-top: 40px">Update</button>
			</form>
		</div>
	</div>

</body>
</html>