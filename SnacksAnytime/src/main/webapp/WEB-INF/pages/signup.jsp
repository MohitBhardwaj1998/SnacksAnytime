<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<style>
	body{
	margin:0;
	padding: 0;
	width: 100%;
	height: 100vh;
	background-size: cover;
	font-family: sans-serif;
}
 .signup{
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
}

h1{
	margin: 0;
	padding: 0 0 20px;
	text-align: center;
	font-size: 22px;
	color:#fff;
}

.signup input{
width: 100%;
margin-bottom: 20px;
}
.signup input[type="text"], input[type="password"]{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size:16px; 
	font-family: Quicksand;
}
.signup input[type="submit"]{
	border: none;
	outline: none;height: 40px;
	background: #fb2525;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}
.signup input[type="submit"]:hover{
	cursor: pointer;
	background: #ffc107;
	color: #000;
}
.signup a{
font-family:cursive;
font-size: 13px;
line-height: 20px;
color: darkgrey;
padding-left: 70px;

}
.signup a:hover{
color: white;	
}

	

	</style>
		<link rel="stylesheet" type="text/css" href="signup.css">
		<title>Registration</title>
	</head>
	<body background="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\back.jpg">
	<jsp:include page="header.jsp"></jsp:include>
		<div class="signup">
			<img src="C:\Users\Mohit Bhardwaj\Sancks\src\main\webapp\WEB-INF\images\signup.png" class="piclogo"> 
			<h1 style="color:#fff;">Sign Up</h1>
			<form action="Signup" method="post">
				<input type="text" name="name" id="lname" placeholder="Enter Name"/>
				<input type="text" name="email" id="email"placeholder="Example@Email.com" />
				<input type="password"  name="pass" id="pass" placeholder="Password" />
				<input type="submit" value="Sign Up"/>
				<a href="${pageContext.request.contextPath }/login">Already Registered !</a>
				
				</form>
		</div>
	</body>
</html>