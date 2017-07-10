<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <%@ include file="menu.jsp" %>
  <html>
  <head>
  <title>THE ROYAL STORE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >
        <h1 style="color: #595959;">Signup</h1>  
       <form:form method="post" action="save" enctype="multipart/form-data">    
        <table >    
        <tr>    
          <td style="color: #595959;">User Id : </td>   
          <td style="color: #595959;"><form:input path="userId"  /></td>  
         </tr>    
         <tr>    
          <td style="color: #595959;">Name : </td>   
          <td style="color: #595959;"><form:input path="userName"  /></td>  
         </tr>    
         <tr>    
         <tr>    
          <td style="color: #595959;">Password : </td>   
          <td style="color: #595959;"><form:input path="password"  /></td>  
         </tr>
         <tr>    
          <td style="color: #595959;">Address :</td>    
          <td><form:input path="userAddress" /></td>  
         </tr>   
         <tr>    
          <td style="color: #595959;">Email :</td>    
          <td><form:input path="email" /></td>  
         </tr>   
         <tr>    
            
            <td style="color: #595959;">
                <form:checkbox path="gender" value="Male" />Male 
                <form:checkbox path="gender" value="Female" />Female 
            </td>
      
        </tr>
        <tr>
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>   
       </body> 
       </html>
