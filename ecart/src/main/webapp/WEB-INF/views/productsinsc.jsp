<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <title>TEE STORE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px Lato, sans-serif;
          background-image: url("https://i.imgur.com/9oPouXw.jpg");
      
      }
  .panel {
      border: 1px solid #D6DBDF; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #D6DBDF;
      background-color: #fff !important;
      color: #5D6D7E  ;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #D6DBDF !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
      background-color: #5D6D7E  ;
      color: #fff;
  }
  
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<%@ include file="menu.jsp" %>

<!-- Container (Pricing Section) -->
<div id="product" class="container-fluid">
 
  <div class="row slideanim">
  <c:forEach var="product" items="${productList}">  
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
      
        <div class="panel-heading">
        
          <h1>${product.productName}</h1>
        </div>
        <div class="panel-body">
          <p><a href="${pageContext.request.contextPath}/ProductDetails/${product.productId}"><img src="${pageContext.request.contextPath}/${product.productImage}" height="250" width="200"></a></p>
          
          <p></p>
          <p><strong>${product.productPrice}</strong></p>
         
        </div>
        <div class="panel-footer">
          <h3>${product.productPrice}</h3>
          <a href="${pageContext.request.contextPath}/ProductDetails/${product.productId}"><button class="btn btn-lg">
                         <span  class="glyphicon glyphicon-ok"></span>   View
                        </button></a>
          
        </div>
       
      </div>      
    </div>   </c:forEach>
  </div>
</div>





</body>
</html>
