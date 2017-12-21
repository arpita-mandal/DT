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
</style>
</head>
<body style="background:  #e6e6e6">
 <c:if test="${param.error == 'true'}">
         <div style="color:red;margin:10px 0px;">
          
                Login Failed!!!<br />
                Reason :  ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                 
         </div>
    </c:if>
<%@include file="menu.jsp" %>
<h2 style="color: #595959;text-align: center;"> Login</h2>
<form name='f' action="${pageContext.request.contextPath}/j_spring_security_check" 

method='POST'>

<div class="container"  >
  <form>
    <div class="form-group" style="margin-top: 50px; color: #595959; width: 75%;">
      <label class="control-label col-sm-2" for="username">User Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="username" placeholder="Enter Username" name="username" required>
      </div>
      
    </div>
    <br>
    <div class="form-group" style="margin-top: 50px; color: #595959; width:75%;">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password" required>
      </div>
    </div>
    <div class="form-group" style="margin-top: 50px; color: #595959;">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group" style="margin-top: 50px; color: #595959; width: 75%">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
      <div class="form-group" style="margin-top: 50px; color: #595959;">        
      <div class="col-sm-offset-2 col-sm-10">
      New User? Click Here 
       <a href="${pageContext.request.contextPath}/usersform" class="btn btn-info btn-sm style:"background:#808080;">
         <span class="glyphicon glyphicon-user"></span>Signup</a></div> 
      </div>
      
</div>


    </form>


</div>
  </form>
</body>

</html>