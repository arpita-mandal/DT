<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html lang="en">

<head>
  <title>TEE STORE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}


input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
   
    border-radius: 4px;
    cursor: pointer;
}
body {
    background-image: url("https://i.imgur.com/9oPouXw.jpg");
}
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #D2B4DE;
    color: white;
}
</style>

</head>
<body >    
  <%@ include file="menu.jsp" %>
<h1>PRODUCTS LIST</h1>  
<table class="table table-condensed" border="2" width="70%" cellpadding="2">  
<tr>
	<th><h4><center><b>Id</b></center><h4></th>
	<th><h4><center><b>Name</b></center></h4></th>
	<th><h4><center><b>Price</b></center></h4></th>
	<th><h4><center><b>Image</b></center></h4></th>
	<th><h4><center><b>Edit</b></center></h4></th>
	<th><h4><center><b>Delete</b></center></h4></th>
	
	</tr>  
   <c:forEach var="product" items="${list}">   
   <tr>  
   <td><center>${product.productId}</center></td>  
   <td><center>${product.productName}</center></td>  
   <td><center>${product.productPrice}</center></td>
     
   <td><img src="${pageContext.request.contextPath}/${product.productImage}" height="150" width="150"></td>
   <td><a href="editproducts/${product.productId}"><span class="glyphicon glyphicon-edit"></span></a></td>  
   <td><a href="deleteproducts/${product.productId}"><span class="glyphicon glyphicon-trash"></span></a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="manageProduct" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-plus"></span>Add New product</a>
     
   </body>
   </html>