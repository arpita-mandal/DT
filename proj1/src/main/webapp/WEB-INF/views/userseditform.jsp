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
<body style="border-radius: 5px; background-color: #f2f2f2">  
<%@ include file="menu.jsp" %>
        <h1>Edit Users</h1>  
       <form:form method="POST" action="/proj1/editsave" enctype="multipart/form-data">
        
        <table style="border-radius: 5px; background-color: #f2f2f2; padding: 45px; font-size: 150%; margin-left:10px;">    
        <tr>  
        <td></td>    
         <td><form:hidden  path="userId" /></td>  
         </tr>   
         <tr >    
          <td >Name:</td>   
          <td style=" width: 75%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc ;border-radius: 4px; box-sizing: border-box;"><form:input path="userName"  /></td>  
         </tr>    
		<tr>
          <td>Address:</td>    
          <td style=" width: 75%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc;border-radius: 4px; box-sizing: border-box;"><form:input path="userAddress" /></td>  
         </tr>
           <tr>
           <td><img src="${pageContext.request.contextPath}/${photo}" height="50" width="50"></td>
									<td><form:hidden path="userImage"/></td>
								</tr>
								<tr>
									<td>Choose Image</td>
									<td><input type="file" name="file"/></td>
								</tr>
         
             
           
         <tr   >    
          <td> </td>    
          <td style=" width: 75% ;color: white;padding: 14px 20px; margin: 8px 0; border: none; border-radius: 4px"><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>    
 </body>
 </html>      