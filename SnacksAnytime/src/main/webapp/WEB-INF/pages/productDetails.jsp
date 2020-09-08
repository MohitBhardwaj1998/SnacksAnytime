<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix ="spring" uri="http://www.springframework.org/tags" %>
http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<br>
<h2>Product Detail</h2>
<div class="container">
   <div class="row">
      <div class="col-xs-4 item-photo">
      	<img style="max-width:100%; margin-top:30px;"
      	src="${pageContext.request.contextPath}/resources/${product.imageName }"/>
      	
       </div>
       
       <div class="col-xs-6" style="border:2px solid blue">
         <h3>Product Name: ${product.pname }</h3>
         <h4>${product.description }</h4>
       <br>
       <h4>Price:${product.price } INR </h4>
       <h5>Supplier: ${product.supplier.sname }</h5>
       <hr>
       
       <div class="section" style="padding-bottom: 20px;">
         <form action="${pageContext.request.contextPath}/addtocart" method="post">
           
         <input type="hidden" value="${product.price }" name="pPrice">
         <input type="hidden" value="${product.pname }" name="pName">
         <input type="hidden" value="${product.imageName }" name="imageName">
         
         <input type="number" class="form-control" name="quant" required/><br>
         
       <input class="btn btn-success btn-lg" type="submit" value="Add To Cart">
         
         </form>
         
        <h5><span style="color:red" class="glyphicon glyphicon-heart" style="cursor:pointer;"></span> Wish List</h5> 
       </div>
       
       
       </div></div>
      <hr><br><br>
      <div class="sol-xs-9">
        <ul class="menu-items">
          <li class="active">Detail Specification</li>
        </ul>
      <p>All Products are checked by Indian Food Quality Board
      
      
       
   
   </div>
</div>
</body>
</html>