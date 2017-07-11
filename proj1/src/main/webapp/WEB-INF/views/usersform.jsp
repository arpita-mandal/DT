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
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}
</style>

</head>
<body>

<h2 style="color: #595959;text-align: center;">Signup</h2>

<div style="border-radius: 5px;background-color: #f2f2f2;padding: 20px;">
  <form method="post" action="save" enctype="multipart/form-data">
    <label for="userId">User Id</label>
    <input type="text" id="userId" name="userId" placeholder="Your user name..">

    <label for="userName">Name</label>
    <input type="text" id="userName" name="userName" placeholder="Your name..">
    
    <label for="userName">Address</label>
    <input type="text" id="userAddress" name="userAddress" placeholder="Your address..">
  
    <label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="Your email address..">
    
<label for="password">Password</label>
    <input type="text" id="password" name="password" placeholder="Your password..">
  
    <input type="radio" name="gender" value="male" checked> Male
  <input type="radio" name="gender" value="female"> Female
  <input type="radio" name="gender" value="other"> Other
  
    <input type="submit" value="Submit">
  </form>
</div>

</body>

       </html>
