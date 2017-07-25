<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<!DOCTYPE html>
<html>
<head>
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<title>Cart</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<h2>${errMsg}</h2>
<div class="container">
 <table class="table">
    <thead>
    <c:set var="total" scope="session" />
<tr><th>Name</th><th>Quantity</th><th>Category Name</th><th>Product Price</th><th>Delete</th></tr>  
   <c:forEach var="content" items="${cartContent}">   
   <tr>  
   
   <td  width="20%">${content.product.productName}</td>  
   <td>${content.quantity}</td>
   <td> ${content.product.subcategory.subcategoryName} </td>
   <td>${content.subTotal}</td>
   <td><a href="${pageContext.request.contextPath}/cart/deletefromcart/${content.cartItemId}">Delete</a></td>

   <c:set var="total"  value="${total + content.subTotal }" scope="session"/>
     
   
   </tr>
   </c:forEach>  
   <tr><td colspan="4">Total:  ${total}</td> </tr>
   <a href="${pageContext.request.contextPath}/billform">Checkout</a>
   </table>  
   
   
   
   
   
   </div>
</body>
</html>