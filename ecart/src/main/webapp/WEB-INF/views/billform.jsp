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
    background-color: #2E4053;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
   
    border-radius: 4px;
    cursor: pointer;
}
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

  <%@include file="menu.jsp" %> 
   
  
<form:form method="post" action="savebill" >  
    <style>
    table th,td{
    padding:10px
    }
    </style>
        <h2>Enter Delivery Address</h2>
        <table style="width:100%">
        
         <tr>    
          <td>Address :</td>    
          <td><form:input path="billAddress" /></td>  
         </tr>
         <tr>    
          <td> </td>    
          <td><input type="submit"   value="Continue" /></td>    
         </tr>
</table>
</form:form>
</body>
</html>
</body>
</html>