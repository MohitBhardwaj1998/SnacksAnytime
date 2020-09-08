<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
</script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/nav.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
 <div class="page-header">
     <div class="container">
         <div class="row">
           <div class="col-md-6">
           	<div class="panel with-nav-tabs panel-primary">
           		<div class="panel-heading">
           			<ul class="nav nav-tabs">
           			   <li class="active"><a href="#tab1" data-toggle="tab">Category</a></li>
           			   <li><a href="#tab2" data-toggle="tab">Supplier</a></li>
           			   <li><a href="#tab3" data-toggle="tab">Product</a></li>
           			
           			</ul>
           		</div>
    <div class="panel-body">
      <div class="tab-content">
        
        <div class="tab-pane fade in active" id="tab1">
          <form method="post" action="<c:url value="/admin/saveCat"/>" class="form-signin">
           <span id="reauth-email" class="reauth-email"></span>
           <h4 class="input_title">Category Id</h4>
          <input class="form-control" type="number" name="cid" required/></td>
          
           <h4 class="input_title">Category Name</h4>
          <input class="form-control" type="text" name="cname" required/></td>
           
          <button class="btn btn-lg btn-success" type="submit">Submit</button>   
          <button class="btn btn-lg btn-warning" type="reset">Cancel</button>      
          </form>
                     
        </div>
        
        
         <div class="tab-pane fade in active" id="tab2">
          <form method="post" action="<c:url value="/admin/saveSupp"/>" class="form-signin">
           <span id="reauth-email" class="reauth-email"></span>
           <h4 class="input_title">Supplier Id</h4>
          <input class="form-control" type="number" name="sid" required/></td>
          
           <h4 class="input_title">Supplier Name</h4>
          <input class="form-control" type="text" name="sname" required/></td>
           
          <button class="btn btn-lg btn-info" type="submit">Submit</button>   
          <button class="btn btn-lg btn-primary" type="reset">Cancel</button>      
          </form>
                     
        </div>
      
      
      
      
      <div class="tab-pane fade in active" id="tab3">
          <form method="post" action="<c:url value="/admin/saveProd"/>" class="form-signin" enctype="multipart/form-data">
           <span id="reauth-email" class="reauth-email"></span>
           
           <h4 class="input_title">Product Name</h4>
          <input class="form-control" type="text" name="pName" required/><br>
          
           <h4 class="input_title">Product Price</h4>
          <input class="form-control" type="text" name="pPrice" required/><br>
          
           <h4 class="input_title">Product Description</h4>
          <input class="form-control" type="text" name="pDescription" required/><br>
          
           <h4 class="input_title">Product Stock</h4>
          <input class="form-control" type="text" name="pStock" required/><br>
          
          <div class="input_title">
          <td>Select Category</td>
          <td><select class="form-control" name="pCategory" required>
          		<option value="">--Category--</option>
          		<c:forEach items="${catList}"  var="cat">
          		   <option value="${cat.cid }">${cat.cname }</option>
          		
          		</c:forEach>
          		
          
          		</select>
          </div>
          
          
            <div class="input_title">
          <td>Select Supplier</td>
          <td><select class="form-control" name="pSupplier" required>
          		<option value="">--Supplier--</option>
          		<c:forEach items="${supList}"  var="sup">
          		   <option value="${sup.sid }">${sup.sname }</option>
          		
          		</c:forEach>
          		
          
          		</select>
          </div>
          
  <div class="fileinput fileinput-new" data-provides="fileinput">
    <tr>
      <td>Image</td>
      <td><input class="form-control" type="file" name="file" accept="image/*"></td>
    
    </tr>
  
  </div>
          
          
          <button class="btn btn-lg btn-info" type="submit">Submit</button>   
          <button class="btn btn-lg btn-error" type="reset">Cancel</button>      
          </form>
      
      
      </div>    	
           	
    </div>
           	
           </div>	
           	</div>
           
           
           </div>
         
         </div>
     
     
     </div>
 
 
 </div>


</div>


</body>
</html>