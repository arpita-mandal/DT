<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
  <title>TEE STORE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
</head>
<body >
<%@ include file="menu.jsp" %>

<table border="5" width="70%" cellpadding="10">  
<tr><th></th><th>Name</th></tr>  




    
   <tr>  
   
   <c:forEach var="subcategory" items="${subcategorylist}">  
    <td>${subcategory.subcategoryName}</td> 
    <td>${subcategory.subcategoryImage}</td>  
     
   <td><a href="${pageContext.request.contextPath}/subcategoryProductDetails/${subcategory.subcategoryId}">Show</a></td> 
   </c:forEach>
   </tr>  
     
   </table>  
</body>
</html>