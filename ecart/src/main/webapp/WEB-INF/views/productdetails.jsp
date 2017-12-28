<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>TEE STORE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

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
    background-color: #2E4053;
    color: white;
}
</style>


</head>
<body>
<%@ include file="menu.jsp" %>

<div class="container">
 <div class="row">
        <div class="col-sm-6">
<div class="well">
<center>
<img src=" ${pageContext.request.contextPath}/${product.productImage}" height="400px" width="400px">
</div>
</div>
<div class="col-sm-6">
          <div class="well">
<p><h4><strong>Name: </strong>${product.productName}</h4></p>
<br>
<p><h4><strong>Price: </strong>${product.productPrice}</h4></p>
<br>
<p><h4><strong>Description: </strong></h4><h6>${product.productDescription}</h6></p>	
</div>
<center> <a href="${pageContext.request.contextPath}/cart/addItem/${product.productId}" class="btn btn-info btn-lg">
    <span class="glyphicon glyphicon-shopping-cart"></span> ADD TO BAG
   </a>
   
</center>

</center>
</div>
</div>

</div>
</body>
</html>
