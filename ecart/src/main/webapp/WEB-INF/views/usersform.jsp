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
  ${error}
   
  <div class="container">
        <h1>Register<h1>  
       <form:form method="post" action="save">    
        <table class="table table-bordered">    
        <tr>    
          <th>User Id : </th>   
          <td><form:input path="userId"  /></td>  
         </tr>  
         
		<tr>    
          <th>Name : </th>   
          <td><form:input path="userName"  /></td>  
         </tr> 
         <tr>    
          <tr>    
          <td>Create Password:</td>    
          <td><form:password path="password"  id="txtPassword" /></td>  
         </tr>   
         <tr>    
          <td>Confirm Password:</td>    
          <td><input type="password" id="txtConfirmPassword" /></td>  
         </tr>   
            
         
         <tr>    
          <th>Email :</th>    
          <td><form:input path="email" /></td>  
         </tr> 
         <tr>    
          <th>Address : </th>   
          <td><form:input path="userAddress"  /></td>  
         </tr> 
         <tr>   
         <td> <form:radiobutton path="gender" value="Male"/>Male
<form:radiobutton path="gender" value="Female"/>Female</td>
         <tr>    
          <td> </td>    
          <td><input class="btn-success" type="submit" value="Save" /></td>    
         </tr>    
        </table>    
        
         <script type="text/javascript">
    function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script> 
   
        
       </form:form>    
</div>
</body>
</html>