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
<div class="container">
	<h2>All Product List</h2>
<table class="table table-hover" id="category" class="display" border="1" width="80" align="Center">
<tr>
<th> Sr No.</th><th>PID</th><th>Name</th><th>Supplier</th><th>Category</th>
<th>Price</th><th style="width:15">Description</th>
<th>Image</th><th>View Details</th>
<c:if test="${empty productList }"><tr><td colspan="9" align="center">No record exists</td></tr>
</c:if>
<c:forEach var="c" varStatus="st" items="${productList }">
<tr>
<td><c:out value="${st.count}"></c:out></td>
<td><c:out value="${c.pid}"></c:out></td>
<td><c:out value="${c.pname}"></c:out></td>
<td><c:out value="${c.supplier.sname}"></c:out></td>
<td><c:out value="${c.category.cname}"></c:out></td>
<td><c:out value="${c.price}"></c:out></td>
<td class="span2"><c:out value="${c.description}"></c:out></td>
<td><img src="${pageContext.request.contextPath}/resources/${c.imageName}" height="50px" width="50px"></td>
<td class="span4">
 <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
 <a class="btn btn-info" role="button" href="<c:url value="/prodDetails/${c.pid}"/>">Details</a>
          			
</td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>