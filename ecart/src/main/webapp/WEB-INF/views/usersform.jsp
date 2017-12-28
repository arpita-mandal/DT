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
input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
 
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
    background-image: url("http://i.imgur.com/aYZX54L.png");
}
</style>

</head>
<body>

  <%@include file="menu.jsp" %> 
  ${error}
   
  <div class="container">
        <h1>Register<h1>  
       <form:form method="post" action="save">    
        <table class="table ">    
        <tr>    
          <th>User Id : </th>   
          </tr>
          <tr>
          <td><form:input path="userId"  /></td>  
         </tr>  
         
		<tr>    
          <th>Name : </th>   
          </tr>
          <tr>
          <td><form:input path="userName"  /></td>  
         </tr> 
         <tr>    
          <tr>    
          <th>Create Password :</th>  
          </tr>
          <tr>  
          <td><form:password path="password"  id="txtPassword" class="form-control" /></td>  
         </tr>   
         <tr>    
          <th>Confirm Password:</th>  
          </tr>
          <tr>  
          <td><input type="password" id="txtConfirmPassword" class="form-control" /></td>  
         </tr>   
            
       
          <th>Mobile No :</th>    
          </tr>
          <tr>
          <td><form:input path="phone" /></td>  
         </tr> 
         <tr>    
          <th>Address : </th>   
          </tr>
          <tr>
          <td><form:input path="userAddress"  /></td>  
         </tr> 
         <tr>   
         <th> <form:radiobutton path="gender" value="Male"/>Male
<form:radiobutton path="gender" value="Female"/>Female</th>
         <tr>    
          <td> </td>    
          <td><input class="btn-success" type="submit" value="Save" onclick="return Validate()"/></td>    
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