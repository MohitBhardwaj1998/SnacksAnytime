
<html lang="en">
<head>
<style>
.background {
	background-image: url('b1.jpg');
	background-repeat: no-repeat;
	position: relative;
	width: 100%;
	height: 800px;
	background-size: 100% 100%;
}

.corusel {
	border-radius: 30px;
}

.searchbar {
	margin-bottom: auto;
	margin-top: auto;
	height: 60px;
	background-color: #353b48;
	border-radius: 30px;
	padding: 10px;
}

.search_input {
	color: white;
	border: 0;
	outline: 0;
	background: none;
	width: 0;
	caret-color: transparent;
	line-height: 40px;
	transition: width 0.4s linear;
}

.searchbar:hover>.search_input {
	padding: 0 10px;
	width: 450px;
	caret-color: red;
	transition: width 0.4s linear;
}

.searchbar:hover>.search_icon {
	background: white;
	color: #e74c3c;
}

.search_icon {
	height: 40px;
	width: 40px;
	float: right;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	color: white;
}
</style>

<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/static/css/bootstrap.min.css" rel="stylesheet" />

<link href="/static/css/non-responsive.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="/static/css/style.css" rel="stylesheet" />

<link rel="icon" href="/image/apple-touch-icon.png" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="background">

	<div>
		<nav id="navbar-red" class="navbar navbar-inverse navbar-static-top"
			role="navigation">

			<div class="container">
				<ul class="nav navbar-nav">
					<button type="button" btn-lg class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#nav-collapse" />
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
				</ul>
			</div>
			<div class="collapse navbar-collapse" id="nav-collapse">

				<ul class="nav navbar-nav">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">SnacksTime</a>
					</div>

					<li><a href="#">Home</a></li>

					<li><a href="#">Cart</a></li>
					<ul class="dropdown-menu">
						<li><a href="#">Login</a></li>
					</ul>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Catagory<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Chips</a></li>
							<li><a href="#">Peanuts</a></li>
							<li><a href="#">Bhujiy</a></li>
							<li><a href="#">Drinks</a></li>
						</ul>
				</ul>
			</div>

		</nav>
	</div>

	<div class="container">

		<div class="d-flex justify-content-center">

			<div class="searchbar">

				<input class="search_input" type="text" name=""
					placeholder="Search..."> <a href="#" class="search_icon"><i
					class="glyphicon glyphicon-search"></i></a>

			</div>

		</div>

	</div>



	<div class="container">
		<center>
			<h1>SnacksTime</h1>
		</center>

		<div id="myCarousel" class="carousel slide data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img
						src="C:\Users\Niku\eclipse-workspace\SnacksAnytime\src\main\webapp\WEB-INF\views\pics\ch.jpg"
						alt="chips" style="width: 100%;">
				</div>

				<div class="item">
					<img
						src="C:\Users\Niku\eclipse-workspace\SnacksAnytime\src\main\webapp\WEB-INF\views\pics\coca.jpg"
						alt="Cold Drinks" style="width: 100%;">
				</div>

				<div class="item">
					<img
						src="C:\Users\Niku\eclipse-workspace\SnacksAnytime\src\main\webapp\WEB-INF\views\pics\n.jpg"
						alt="Namkeen" style="width: 100%;">
				</div>
				<div class="item">
					<img
						src="C:\Users\Niku\eclipse-workspace\SnacksAnytime\src\main\webapp\WEB-INF\views\pics\c.jpg"
						alt="cookies" style="width: 100%;">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<hr />

	<div class="row">
		<div class="col-xs-4">
			<div clas="panel panel-default">
				<div class="panel-body">
					<img src="/image/bestseller.png" class="img-responsive" />
				</div>
			</div>
		</div>
		<div class="col-xs-4">
			<div clas="panel panel-default">
				<div class="panel-body">
					<img src="/image/hours.png" class="img-responsive" />
				</div>
			</div>
		</div>
		<div class="col-xs-4">
			<div clas="panel panel-default">
				<div class="panel-body">
					<img src="/image/faq.png" class="img-responsive" />
				</div>
			</div>
		</div>
	</div>

	<div>
		<div class="home-headline">
			<span>Featured Books</span>
		</div>
		<hr style="margin-top: -15px;" />
	</div>


		
			</a>
		</div>
	</div>

	</div>
</body>
</html>