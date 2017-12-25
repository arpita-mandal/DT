<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html>
<html lang="en">

<head>
  <title>TEE STORE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <link rel="stylesheet" href="<c:url value="/resources/css/menu2.css"/>">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

<%@include file="menu.jsp" %>
<body>

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
  <li data-target="#myCarousel" data-slide-to="3"></li>
  <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="https://i.imgur.com/FZRaQhX.jpg" alt="him "style="width:100%;">
        <div class="carousel-caption">
          <h3>FOR HIM</h3>
          <p>Keeping it Cool!</p>
        </div>
      </div>

      <div class="item">
        <img src="https://i.imgur.com/waEeIlm.jpg" alt="her" style="width:100%;">
        <div class="carousel-caption">
          <h3>FOR HER</h3>
          <p>Keeping it Sassy!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="https://i.imgur.com/lPRNN1J.jpg" alt="goodvibes" style="width:100%;">
        <div class="carousel-caption">
          <h3>GOOD VIBES</h3>
          <p>Rise up sunshine!</p>
        </div>
      </div>
  
  <div class="item">
        <img src="https://i.imgur.com/NuGJia4.jpg" alt="nyr" style="width:100%;">
        <div class="carousel-caption">
          <h3>CHRISTMAS SALE</h3>
          <p>Santa is finally here!</p>
        </div>
      </div>
      
  <div class="item">
        <img src="https://i.imgur.com/0drHgfU.jpg" alt="hoodie" style="width:100%;">
        <div class="carousel-caption">
          <h3>HOODIE UP GIRL</h3>
          <p>According to your mood</p>
        </div>
      </div>
    
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<div class="container">
  <h2>What's trending?</h2>
  <p></p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>For Him</th>
        <th>For Her</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><img src="https://i.imgur.com/Y5pOnKH.jpg" alt="trendhim" style="width:100%;"></td>
        <td><img src="https://i.imgur.com/tF975kW.jpg" alt="trendher" style="width:100%;"></td>
        
      </tr>
      
    </tbody>
  </table>
  <h2>Mobile Covers</h2>
  <td><img src="https://i.imgur.com/4XvQZ7q.jpg" alt="covers" style="width:100%;"></td>

<div class="container">
  <h2>Mugs</h2>
  <h4>Choose from a wide range</h4>
  <p></p>            
  <table class="table table-striped">
    
    <tbody>
      <tr>
        <td><img src="https://i.imgur.com/TuIYhKb.jpg" alt="mug1" style="width:100%;"></td>
        <td><img src="https://i.imgur.com/a0Akugz.jpg" alt="mug2" style="width:100%;"></td>
        <td> <img src="https://i.imgur.com/euZL5gP.jpg" alt="mug3" style="width:100%;"></td>
        
      </tr>
      </tbody>
  </table>
  <h2> Posters</h2>
          <td><img src="https://i.imgur.com/WF43eYu.jpg" alt="poster" style="width:100%;"></td>
  
  
</div>


</body>
</div>



</body>
</html>
