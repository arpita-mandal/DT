<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html lang="en">

<head>
  <title>THE ROYAL STORE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>    
  <%@ include file="menu.jsp" %>
<h2 align="center">USERS LIST</h2>  
<table border="2" width="100%" cellpadding="2" align="center" style="border-radius: 5px; background-color: #f2f2f2; padding: 45px; font-size: 100%; height=100px; width=100px; ">  
<tr>
<th align="center">Id</th>
<th align="center">Name</th>
<th align="center">Address</th>
<th align="center">User Image</th>
<th align="center">Edit</th>
<th align="center">Delete</th>
</tr>  
   <c:forEach var="user" items="${list}">   
   <tr>  
   <td align="center">${user.userId}</td>  
   <td align="center">${user.userName}</td>  
   <td align="center">${user.userAddress}</td>
   
     
  <td align="center"><img src="${pageContext.request.contextPath}/${user.userImage}" height="50" width="50"></td>
   <td align="center"><a href="editusers/${user.userId}"><span class="glyphicon glyphicon-edit"></span></a></td>  
   <td align="center"><a href="deleteusers/${user.userId}"><span class="glyphicon glyphicon-trash"></span></a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="usersform">Add New User</a>  
   </body>
   </html>