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
   <h1>Order Receipt</h1>  
   <div class="container">
   <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
   <table class="table table-striped"  border="2" width="70%" cellpadding="2">  
   <center><tr><th>Order Id</th><th>Address</th></tr></center>  
   <tr>  
   <td>${bill.billId}</td>    
   <td>${bill.billAddress}</td></tr>
   <tr>
   <td colspan="2">Total: ${bill.total}</td>
   </tr>
   </table>
   <button type="button" class="btn"><a href="${pageContext.request.contextPath}/home1">Continue Shopping</a></button>
   </div></div></div></body>
   </html>