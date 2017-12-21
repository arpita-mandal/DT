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
</style>
</head>
<body > 
   <%@ include file="menu.jsp" %>
        <h1>Edit Product</h1>  
       <form:form method="POST" action="/ecart/editsaveproduct" enctype="multipart/form-data">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="productId" /></td>  
         </tr>   
         <tr>    
          <td>Name : </td>   
          <td><form:input path="productName"  /></td>  
         </tr>    
         <tr>    
          <td>Price  :</td>    
          <td><form:input path="productPrice" /></td>  
         </tr>   
          
           
            
         <td><img src="${pageContext.request.contextPath}/${photo}" height="50" width="50"></td>
           <tr>
									<td><form:hidden path="productImage"/></td>
								</tr>
								<tr>
									<td>Choose Image</td>
									<td><input type="file" name="file"/></td>
								</tr>
         
         <tr>    
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr> 
           
        </table>    
       </form:form>    
       </body>
       </html>