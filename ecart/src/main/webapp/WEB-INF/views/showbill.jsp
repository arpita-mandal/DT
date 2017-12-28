<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
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

</style>


</head>
<body>

  <%@include file="menu.jsp" %> 
   <div class="container">
   <div class="row">
        <div class="col-md-8 col-md-offset-2">
        
       <div class="panel panel-default text-center">
      
        <div class="panel-heading">
        <h1>Order Receipt</h1></div>
        <div class="panel-body">
        <p></p>
           <p><strong>Order Id: ${bill.billId}</strong></p> 
           
           <p><strong>Address: </strong>${bill.billAddress}</p>  
           <br>
           <p><strong>Order Date:</strong> ${bill.billDate}</p> 
   
 </center> </div>
  <div class="panel-footer">
   <strong><center>Total: ${bill.total}</center></strong>
     <button type="button" class="btn"><a href="${pageContext.request.contextPath}/home1">Continue Shopping</a></button>
  </div>
  </div>
  </div>
  </div>
  </div></body>
   </html>