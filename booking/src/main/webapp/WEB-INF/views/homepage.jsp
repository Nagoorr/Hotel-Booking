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

	<nav class="navbar navbar-expand-lg navbar-light bg-dark sticky-top">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<a class="navbar-brand" href="#" style="color: white">AboutUs</a>
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item active"></li>
			</ul>
			<a href="./loginpage" style="color: white; text-decoration: none">
				<button type="button" class="btn btn-primary"
					style="margin-right: 40px" href="login.html">User</button>
			</a> <a href="./addhotelpage" style="color: white; text-decoration: none">
				<button type="button" class="btn btn-primary"
					style="margin-right: 40px; text-decoration: none">Hotel</button>
			</a>
		</div>
	</nav>
	<div class="jumbotron">
		<div id="b1">
			<h1
				style="color: red; font-weight: 800; text-align: center; margin-top: -41px; margin-left: -95px">booking</h1>
		</div>
		<div id="b3">
			<h1
				style="color: orange; font-weight: 800; text-align: center; margin-left: 170px; margin-top: -55px; font-family: Arial, Helvetica, Sans, Sans-Serif, Sans Serif;">.com</h1>
		</div>
		<div id="b2">
			<h5 style="color: #37454D; text-align: center; margin-left: 50px;">Find
				your ideal hotel and compare prices from different websites</h5>
			<br>
		</div>
		<br>
		<form action="./gethotels" class="form-inline my-4 my-lg-0"
			method="get">
			<input class="form-control mr-sm-2" type="search" name="city"
				placeholder="location  eg.goa" aria-label="Search"
				style="margin-left: 200px; width: 300px; height: 50px; margin-bottom: -50px;"
				required="required"> <input class="form-control mr-sm-2"
				type="date" aria-label="Search" name="date"
				style="margin-left: 500px; width: 300px; height: 50px; margin-bottom: -50px"
				required="required"> <input class="form-control mr-sm-2"
				type="search" aria-label="Search" name="roomsrequired"
				placeholder="No Of Rooms Required"
				style="margin-left: 801px; width: 300px; height: 50px;"
				required="required">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h5 style="color: #37454D">Don't know where to go? Let us inspire
		you</h5>
	<br>
	<br>

	<div class="card-group">
		<div class="card">
			<img src="./resources/images/banglore.jpg" class="card-img-top"
				alt="...">
			<div class="card-body">
				<h5 class="card-title">
					<a href="#" style="color: #37454D">Hotels in Banglore</a>
				</h5>
				<p class="card-text">Most-booked hotels in Bangalore in the past
					month. The Lalit Ashok. Hotel in Sheshadripuram, Bangalore. Taj
					Yeshwantpur Bengaluru. Hotel in Yeshwantpur, Bangalore. FabHotel
					Arafa Inn Gandhinagar. Treebo Tryst Monarch Brigade Road,
					WelcomHotel Bengaluru.</p>
			</div>

		</div>
		<div class="card">
			<img src="./resources/images/goa.jpg" style="height: 311px"
				class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">
					<a href="#" style="color: #37454D">Hotels in Goa</a>
				</h5>
				<p class="card-text">Stay in Goa's best hotels! Patnem Garden
					Cottages. Patnem. Vivanta Panaji, Goa. Miramar Beach, Panaji.
					Treebo Trend Sindola Inn. Vagator. The Majorda Pristinne. Majorda.
					THE CHARMING NIGHT. Palolem Beach, Palolem. Royal wood Beach
					Resort. Canacona. Crystal Goa Emerald Edition.</p>
			</div>

		</div>
		<div class="card">
			<img src="./resources/images/mumbai.jpg" class="card-img-top"
				style="height: 311px" alt="...">
			<div class="card-body">
				<h5 class="card-title">
					<a href="#" style="color: #37454D">Hotels in Mumbai</a>
				</h5>
				<p class="card-text">Most-booked hotels in Mumbai in the past
					month. The Taj Mahal Tower Mumbai. Hotel in Colaba, Mumbai.
					President Mumbai. Trident Nariman Point. The Lalit Mumbai-Airport.
					Courtyard by Marriott Mumbai International Airport. The Leela
					Mumbai, Airport.</p>
			</div>
		</div>

		<div class="card">
			<img src="./resources/images/jaipur.jpg" class="card-img-top"
				style="height: 311px" alt="...">
			<div class="card-body">
				<h5 class="card-title">
					<a href="#" style="color: #37454D">Hotels in Delhi</a>
				</h5>
				<p class="card-text">New Delhi's best hotels with breakfast.
					Hotel Sweet Inn @ Airport. Roseate House New Delhi. Novotel New
					Delhi Aerocity - An AccorHotels Brand. Holiday Inn New Delhi
					International Airport. Le Meridien New Delhi.</p>
			</div>

		</div>
	</div>
	</div>
	</div>
	<div id="b4"
		style="color: #007fad; margin-top: 127px; margin-left: 83px;">
		<h3>Global hotel search</h3>
	</div>
	<div id="b5" style="color: #37454D; margin-top: 30px;">
		<h6>
			<p>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booking.com
				hotel search allows users to compare hotel prices in just a few
				clicks from<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;more
				than 400 booking sites for 1.8 million+ hotels in over 190
				countries. With 1.4<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;billion
				visits annually to our site, travellers regularly use the hotel
				comparison to<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;compare
				deals in the same city. Get information for weekend trips to cities
				like<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mumbai
				or Bengaluru and you can find the right hotel quickly and easily.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delhi
				and its surrounding area are great for trips that are a week or
				longer with the <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numerous
				hotels available.
			</p>
		</h6>
	</div>

	<div id="b6"
		style="color: #007fad; margin-top: -211px; margin-left: 750px;">
		<h3>Find cheap hotels on booking.com</h3>
	</div>
	<div id="b7"
		style="color: #37454D; margin-top: 30px; margin-left: 729px;">
		<h6>
			<p>
				You can easily find your ideal hotel and compare prices from <br>
				different websites. Simply enter where you want to go and your
				desired travel dates, and let our hotel search engine compare
				accommodation prices for you. To refine your search results, simply
				filter by price, distance (e.g. from the beach), star <br>category,
				facilities and more. From budget hostels to luxury suites,
				booking.com makes it easy to book online. You can search from a
				large variety of rooms and locations across India, like Shimla and
				Jaipur to popular cities and holiday destinations abroad!
		</h6>
	</div>
	<br>
	<br>
	<div id="b8" style="color: #007fad; margin-left: 72px;">
		<h3>Hotel reviews help you find your ideal hotel</h3>
	</div>
	<div id="b9" style="color: #37454D; margin-left: 56px;">
		<h6>
			<p>
				Over 175 million aggregated hotel ratings and more than 19 million
				images allow<br> you to find out more about where you're
				travelling. To get an extended overview of a <br> hotel
				property, shows the average rating and extensive reviews from other<br>
				booking sites, e.g. Hotels.com, Expedia, Agoda, leading hotels, etc.
				trivago makes it<br> easy for you to find information about
				your trip to Dubai, including the ideal hotel for<br> you.
			</p>
		</h6>
	</div>
	<div id="b10"
		style="color: #007fad; margin-left: 750px; margin-top: -174px;">
		<h3>How to book</h3>
	</div>
	<div id="b11" style="color: #37454D; margin-left: 732px;">
		<h6>
			<p>
				paramount is a hotel search with an extensive price comparison. The
				prices down come from numerous hotels and booking websites. This
				means that while users decides which hotel best suits their needs,
				the booking process itself is completed<br> through the booking
				sites (which are linked to our website). By clicking on the “view
				deal” button, you will be forwarded onto a booking site where you
				can complete the reservation for the hotel deal found on
				booking.com.
			</p>
		</h6>
	</div>

</body>
</html>