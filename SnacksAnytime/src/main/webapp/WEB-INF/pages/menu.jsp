<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>Menu</title>
<style>


.hvrbox,
.hvrbox * {
	box-sizing: border-box;
}
.hvrbox {
	position: relative;
	display: inline-block;
	overflow: hidden;
	max-width: 100%;
	height: auto;
}
.hvrbox img {
	max-width: 100%;
}
.hvrbox_background {
	width: 400px;
	height: 250px;
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat;
}
.hvrbox .hvrbox-layer_bottom {
	display: block;
}
.hvrbox .hvrbox-layer_top {
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.6);
	color: #fff;
	padding: 15px;
	-moz-transition: all 0.4s ease-in-out 0s;
	-webkit-transition: all 0.4s ease-in-out 0s;
	-ms-transition: all 0.4s ease-in-out 0s;
	transition: all 0.4s ease-in-out 0s;
}
.hvrbox:hover .hvrbox-layer_top,
.hvrbox.active .hvrbox-layer_top {
	opacity: 1;
}
.hvrbox .hvrbox-text {
	text-align: center;
	font-size: 18px;
	display: inline-block;
	position: absolute;
	top: 50%;
	left: 50%;
	-moz-transform: translate(-50%, -50%);
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
.hvrbox .hvrbox-text_mobile {
	font-size: 15px;
	border-top: 1px solid rgb(179, 179, 179); /* for old browsers */
	border-top: 1px solid rgba(179, 179, 179, 0.7);
	margin-top: 5px;
	padding-top: 2px;
	display: none;
}
.hvrbox.active .hvrbox-text_mobile {
	display: block;
}
.hvrbox .hvrbox-layer_image {
	padding: 0;
	background: none;
}

.hvrbox .hvrbox-layer_scale {
	border-radius: 50%;
	-moz-transform: scale(0);
	-webkit-transform: scale(0);
	-ms-transform: scale(0);
	transform: scale(0);
}
.hvrbox:hover .hvrbox-layer_scale,
.hvrbox.active .hvrbox-layer_scale {
	border-radius: 0%;
	-moz-transform: scale(1);
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1);
}



.hovereffect {
  width: 100%;
  height: 100%;
  float: left;
  overflow: hidden;
  position: relative;
  text-align: center;
  cursor: default;
  
}

.hovereffect .overlay {
  width: 100%;
  height: 100%;
  position: absolute;
  overflow: hidden;
  top: 0;
  left: 0;
  background-color: rgba(75,75,75,0.7);
  -webkit-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}

.hovereffect:hover .overlay {
  background-color: rgba(48, 152, 157, 0.4);
}

.hovereffect img {
  display: block;
  position: relative;
}

.hovereffect h2 {
  text-transform: uppercase;
  color: #fff;
  text-align: center;
  position: relative;
  font-size: 17px;
  padding: 10px;
  background: rgba(0, 0, 0, 0.6);
  -webkit-transform: translateY(45px);
  -ms-transform: translateY(45px);
  transform: translateY(45px);
  -webkit-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}

.hovereffect:hover h2 {
  -webkit-transform: translateY(5px);
  -ms-transform: translateY(5px);
  transform: translateY(5px);
}

.hovereffect a.info {
  display: inline-block;
  text-decoration: none;
  padding: 7px 14px;
  text-transform: uppercase;
  color: #fff;
  border: 1px solid #fff;
  background-color: transparent;
  opacity: 0;
  filter: alpha(opacity=0);
  -webkit-transform: scale(0);
  -ms-transform: scale(0);
  transform: scale(0);
  -webkit-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
  font-weight: normal;
  margin: -52px 0 0 0;
  padding: 62px 100px;
}

.hovereffect:hover a.info {
  opacity: 1;
  filter: alpha(opacity=100);
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}

.hovereffect a.info:hover {
  box-shadow: 0 0 5px #fff;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="hvrbox">
			<img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\div1.jpg" alt="" class="hvrbox-layer_bottom">
			<div class="hvrbox-layer_top hvrbox-layer_scale">
				<div class="hvrbox-text"><a href="${pageContext.request.contextPath }/cart">Grab it</a></div>
			</div>
		</div>
<div class="hvrbox">
			<img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\div2.jpg" alt="" class="hvrbox-layer_bottom">
			<div class="hvrbox-layer_top hvrbox-layer_scale">
				<div class="hvrbox-text"><a href="${pageContext.request.contextPath }/cart">Grab it</a></div>
			</div>
		</div>
<div class="hvrbox">
			<img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\div3.jpg" alt="" class="hvrbox-layer_bottom">
			<div class="hvrbox-layer_top hvrbox-layer_scale">
				<div class="hvrbox-text"><a href="${pageContext.request.contextPath }/cart">Grab it</a></div>
			</div>
		</div>
<div class="hvrbox">
			<img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\div4.jpg" alt="" class="hvrbox-layer_bottom">
			<div class="hvrbox-layer_top hvrbox-layer_scale">
				<div class="hvrbox-text"><a href="${pageContext.request.contextPath }/cart">Grab it</a></div>
			</div>
		</div>
		<div class="hvrbox">
			<img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\div5.jpg" alt="" class="hvrbox-layer_bottom">
			<div class="hvrbox-layer_top hvrbox-layer_scale">
				<div class="hvrbox-text"><a href="${pageContext.request.contextPath }/cart">Grab it</a></div>
			</div>
		</div><div class="hvrbox">
			<img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\div6.jpg" alt="" class="hvrbox-layer_bottom">
			<div class="hvrbox-layer_top hvrbox-layer_scale">
				<div class="hvrbox-text"><a href="${pageContext.request.contextPath }/cart">Grab it</a></div>
			</div>
		</div>
		
</body>
</html>