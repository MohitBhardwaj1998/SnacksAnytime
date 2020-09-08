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
	<title>Login Page</title>
<style>
body {
		margin:0;
	padding: 0;
	width: 100%;
	height: 100vh;
	background-size: cover;
	font-family: sans-serif;
}
 .box{
 	border-radius:5px;
	position: absolute;
	margin-top:80px;
	padding:top:20px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 400px;
	height: 450px;
	background: #051019;
	padding: 50px;
	box-sizing: border-box;
	border: 1px solid rgba(0, 0, 0, .1);
	box-shadow: 0 5px 10px rgba(0, 0, 0, .2)
 }
.piclogo{
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
	left: calc(50% - 50px);
	padding-top:10px;
}

h1{
	margin: 0;
	padding: 0 0 20px;
	text-align: center;
	font-size: 22px;
	color:#fff;
}

.box input{
width: 100%;
margin-bottom: 20px;
}
.box input[type="text"], input[type="password"]{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size:16px; 
	font-family: Quicksand;
}
.box input[type="submit"]{
	border: none;
	outline: none;height: 40px;
	background: #fb2525;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}
.box input[type="submit"]:hover{
	cursor: pointer;
	background: #ffc107;
	color: #000;
}
.box a{
font-family:cursive;
font-size: 13px;
line-height: 20px;
color: darkgrey;
padding-left: 23px;

}
.loginbox a:hover{
color: white;	
}

</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="login.css">
<title>LoginPage</title>
</head>
<body background="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\back.jpg">
<jsp:include page="header.jsp"></jsp:include>
	<div class="box">
	
		<img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\LoginLogo.png" class="piclogo">
		<h1 style="color:#fff;">Login</h1>
		    <form action="log" method="post">
			<input type="text"  name="uname" id="uname" placeholder="Username"  />
			 <input type="password"  name="upass"
					id="upass" placeholder="password" />
			  <input type="submit" value="Login" /> <a href="${pageContext.request.contextPath }/forgotpass">ForgotPassword</a> 
				<a href="${pageContext.request.contextPath }/signup">Register Now</a>
		</form>
	</div>
</body>
</html>