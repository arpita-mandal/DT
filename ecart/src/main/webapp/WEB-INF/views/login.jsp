<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
 <c:if test="${param.error == 'true'}">
         <div style="color:red;margin:10px 0px;">
          
                Login Failed!!!<br />
                Reason :  ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                 
         </div>
    </c:if>
<%@include file="menu.jsp" %>
<h2 style="color: #595959;text-align: center;"> Login</h2>

<form  name='f' action="${pageContext.request.contextPath}/j_spring_security_check" method='POST'>
  
  <div class="container">
  <div class="form-group">
    <label><b>Username</b></label>
    <input type="text" class="form-control"	 placeholder="Enter Username" name="username" required>
<br>
<br>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password"  class="form-control" name="password" required>
<br>
    <input type="checkbox" checked="checked"> Remember me
    <br>
    <br>
     New User? Click Here 
       <a href="${pageContext.request.contextPath}/usersform" class="btn btn-info btn-sm style:"background:#808080;">
         <span class="glyphicon glyphicon-user"></span>Signup</a>
         <br>
  <center >      
 
    <button type="submit" class="btn btn-primary btn-lg btn-success" >Login</button>
    </center>
  <br>
   <center>
  
</div>
  </div>
<br>
<br>
</form>
</body>
</html>