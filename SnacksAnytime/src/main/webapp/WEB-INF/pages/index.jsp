<!DOCTYPE html>
<html lang="en">
<head>
  <title>HaveSome Snacks</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
  <style>	
  .container2{
		width: 90%;
		padding:10px;
		margin: 100px auto;
		display: flex;
		justify-content: center;

	}
	.box{
		width: 250px;
		height: 250px;
		margin: 0px 10px;
		transition: 1s; 
	}
	.box:hover{
		transform: scale(1.3);
		z-index: 2;
	}
	.h{
	font-szie:20px;
	
	}
	</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="item active">
        <img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\snack.jpg" alt="snack" style="width:100%;">
      </div>

      <div class="item">
        <img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\snack2.jpg" alt="snack2" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\snack3.jpg" alt="snack3" style="width:100%;">
      </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
	<div class="container2">
	
		<div class="box"><img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\bodydiv2.png"></div>
			<div class="box"><img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\bodydiv3.png"></div>
				<div class="box"><img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\bodydiv4.png"></div>
					<div class="box"><img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\bodydiv5.png"></div>

		</div>
		
		<marquee behavior="alternate">This Is UnderConstruction</marquee>
		<div style ="width: 100%; text-align:center;padding-top:30px;"class="w3-third w3-container w3-black"><h3>ComingSoon</h3></div>
</body>
</html>
