<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
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
<body>

  <%@include file="menu.jsp" %> 
   
  
<form:form method="post" action="savebill" >  
    <style>
    table th,td{
    padding:10px
    }
    </style>
        
        <table style="width:100%">
        <tr>    
          <td>Id : </td>   
          <td><form:hidden path="billId"  /></td>  
         </tr> 
         <tr>    
          <td>Address :</td>    
          <td><form:input path="billAddress" /></td>  
         </tr>
         <tr>    
          <td> </td>    
          <td><input type="submit"   value="Submit" /></td>    
         </tr>
</table>
</form:form>
</body>
</html>
</body>
</html>