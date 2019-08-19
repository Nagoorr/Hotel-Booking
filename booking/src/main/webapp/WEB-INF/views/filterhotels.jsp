<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
				<li class="nav-item"><a class="nav-link" href="./homepage"><h5>HomePage</h5></a>
				</li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="booking-bg"></div>
						<form action="./filter" method="get">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Check In</span> <input
											class="form-control" type="date" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">City</span> <input
											class="form-control" type="text" required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Adults</span> <select
											class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</select> <span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Children</span> <select
											class="form-control">
											<option>0</option>
											<option>1</option>
											<option>2</option>
										</select> <span class="select-arrow"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<span class="form-label">No Of Rooms</span> <input
									class="form-control" type="text"
									placeholder="No Of Rooms Required">
							</div>
							<div class="form-group row">
								<div class="col-sm-10">
									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											id="gridCheck1" value="yes" name="wifi"> <label
											class="form-check-label" for="gridCheck1"> wifi </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input class="form-check-input" type="checkbox"
											id="gridCheck1" value="yes" name="meals"> <label
											class="form-check-label" for="gridCheck1"> meals </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input class="form-check-input" type="checkbox"
											id="gridCheck1" value="yes" name="resturant"> <label
											class="form-check-label" for="gridCheck1"> resturant
										</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
											class="form-check-input" name="airConditonal" type="checkbox"
											id="gridCheck1" value="yes"> <label
											class="form-check-label" for="gridCheck1"> air
											conditional </label>
									</div>
								</div>
							</div>
							<div class="form-btn">
								<button class="submit-btn">Filter</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>