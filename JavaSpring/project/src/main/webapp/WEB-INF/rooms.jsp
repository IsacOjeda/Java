<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Tipton Rooms</title>
</head>
<body>

	<nav style="height:110px; width:1221px;" class="navbar navbar-light bg-dark mt-5 sticky-top me-auto m-auto">
  		<div style="background-color:#191A2E;"  class="container h-75">
    	<a  style="color:#D6E5E2; font-family:century-gothic;" class="navbar-brand fs-1" href="/">The Tipton</a>
    	<h4 class="fs-2" style="color:#D6E5E2; font-family:century-gothic;">Stay</h4>
    	<h4 class="fs-2" style="color:#D6E5E2; font-family:century-gothic;">Dine</h4>
    	<h4 class="fs-2" style="color:#D6E5E2; font-family:century-gothic;">Gather</h4>
    	<h4 class="fs-2" style="color:#D6E5E2; font-family:century-gothic;">Contact</h4>
    	
    	<button class="fs-1 " style="color:black; border-color:#FFFFFF; font-family:century-gothic; background-color:#191A2E;">	<a style="color:#D6E5E2;" class="text-decoration-none" href=/rooms>Book Now</a>  </button>
  		</div>
	</nav>
	
		
	
		<c:forEach var="room" items="${roomList }">
	<c:if test="${room.status == 'Vacant Clean'}">
			<ul>	
	<div class="me-auto m-auto d-flex flex-row" style="width:1188px; height:488px;">
	<div class="me-auto m-auto d-flex align-content-center flex-wrap border border-2 border-dark"  style="width:500px; height:400px;">
	<div style="font-family:century-gothic;" class=" m-auto text-center d-flex align-items-center p-2 flex-wrap flex-column  " >
			<h1><c:out value="${room.type }"/> </h1> 	
			<h2>Floor:  <c:out value="${room.floor }"/>	</h2>		 
			<div class="container">
			<button><a href="/rooms/reserve/${room.id}">Book Now</a> </button>	
			</div>
	 
	 
	 
	 </div></div>
	<img style="width:597px; height:488px; object-fit: cover;"  src=/images/shutterstock_30411274.jpg/>
			</ul>
</div>
	</c:if >
		</c:forEach>
	
	
	
	
	
	
	</div>
			<div class="container">

			
	</div>
	
<div class="me-auto m-auto d-flex  " style="width:1229px; height:188px; background-color:green;">

	<div style="width:270px; height:188px; background-color:#212529;">
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">The Tipton</p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">123 Ocean View Avenue</p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">Harbor Heights, Rivertown</p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">Sunset Bay, CA 90210</p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">United States</p>

	</div>
	
		<div style="width:270px; height:188px; background-color:#212529;">
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=#>Sitemap</a></p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=#>Careers</a></p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=#>Media</a></p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=/admin/register/login>Admin login</a></p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=#>Privacy Policy</a></p>
		</div>
	
	<div style="width:688px; height:188px; background-color:#212529;">
		<img style="width:688px; height:188px; object-fit: cover;" src="/images/0_CErpSUz_aT1zX9be.png"/>
	
	
	</div>



</div>	
	
</body>
</html>