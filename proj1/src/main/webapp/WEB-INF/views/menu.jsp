<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
       <c:if test="${pageContext.request.userPrincipal.name != null}">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/home1">
      <img src="https://i.imgur.com/Rr7fSRn.jpg" class="img-circle" width="100" height="100"/></a>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name == null}">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/">
      <img src="https://i.imgur.com/Rr7fSRn.jpg" class="img-circle" width="100" height="100"/></a>
      </c:if>
 	 </div>
 	 
<div class="collapse navbar-collapse" id="myNavbar">
<div class="row">
                

      <ul class="nav navbar-nav">
<c:if test="${pageContext.request.userPrincipal.name != null}">
        <li><a href="${pageContext.request.contextPath}/home1">Home</a></li>
        </c:if>
         <c:if test="${pageContext.request.userPrincipal.name == null}">
       <li> <a href="${pageContext.request.contextPath}/">Home</a></li>       
        </c:if></ul>

                    <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
        
                <ul class="nav navbar-nav navbar-right">
      <c:if test="${pageContext.request.userPrincipal.name == null}">
      
        <li><a href="${pageContext.request.contextPath}/usersform"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${pageContext.request.contextPath}/loginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="${pageContext.request.contextPath}/loginPage"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
        </c:if>
        
          </ul>
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${pageContext.request.userPrincipal.name != null}">
      <h3 style=" text-align: right ;color:#0B151F;">Welcome, ${pageContext.request.userPrincipal.name}</h3>
      <li><a href="${pageContext.request.contextPath}/cart/showCart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
        <li><a href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-log-out"></span> Log-out</a></li>
        
        </c:if>
        </ul>
        
        </div>
        
         <div class="row">               
    			<ul class="nav navbar-nav ">
    			
    			<c:forEach items="${categoryList}" var="category">
            <li><a href="${pageContext.request.contextPath}/showProductsByCategory/${category.categoryId}">${category.categoryName}</a></li>
             </c:forEach>
          
   
<security:authorize access="hasRole('ROLE_ADMIN')">				
  <li class="dropdown">
        
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage Products <span class="caret"></span></a>
         <!-- <ul class="dropdown-menu">  is used to create the sub menu items -->
          <ul class="dropdown-menu">
          
          <!-- display category names as menu option  -->
           <li><a href="${pageContext.request.contextPath}/manageProduct">Add Product</a></li>
           <li><a href="${pageContext.request.contextPath}/viewproducts">View Product</a></li>
           </ul>
        </li> 
   </security:authorize>
      
<security:authorize access="hasRole('ROLE_ADMIN')">				
  <li class="dropdown">
        
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage Users <span class="caret"></span></a>
         <!-- <ul class="dropdown-menu">  is used to create the sub menu items -->
          <ul class="dropdown-menu">
          
          <!-- display category names as menu option  -->
           <li><a href="${pageContext.request.contextPath}/viewusers"> View and Edit Users</a></li>
           
           </ul>
        </li> 
   </security:authorize>
    </ul>
    
    </div>
    </div>
    </div>
  
    </nav>
