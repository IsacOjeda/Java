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
<title>Insert title here</title>
</head>
<body>
	<h1>Admin Add room</h1>
	
	<div class="container"> 
<div class="continer">
	<a href="/home">Home</a>
</div>
	<form:form action="/rooms/new" method="post" modelAttribute="newRoom">
		<form:hidden path="room" />
	<div class="form-floating mb-3">
  		<form:select path="type" type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
  			<form:option path="type" value="Super Deluxe - 6 Rooms">Super Deluxe - 6 Beds</form:option>
  			<form:option path="type" value="Deluxe - 5 Rooms">Deluxe - 5 Beds</form:option>
   			<form:option path="type" value="Large - 4 Rooms">Large - 4 Beds</form:option>
   			<form:option path="type" value="Medium - 3 Rooms">Medium - 3 Beds</form:option>
   			<form:option path="type" value="Small - 2 Rooms">Small - 2 Beds</form:option>
   			<form:option path="type" value="Extra Small - 1 Room">Extra Small - 1 Bed</form:option>
  		</form:select>
  		<form:label path="type" for="floatingInput">Room Type:</form:label>
  		<form:errors path="type" class="text-danger"/>			
	</div>
	
	<div class="form-floating mb-3">
  		<form:select path="floor" type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
  			<form:option path="floor"  value="1">1</form:option>
  			<form:option path="floor" value="2">2</form:option>
   			<form:option path="floor" value="3">3</form:option>
   			<form:option path="floor" value="4">4</form:option>
   			<form:option path="floor" value="5">5</form:option>
   			<form:option path="floor" value="6">6</form:option>
   			<form:option path="floor" value="7">7</form:option>
   			<form:option path="floor" value="8">8</form:option>
   			<form:option path="floor" value="9">9</form:option>
   			<form:option path="floor" value="10">10</form:option>
   			<form:option path="floor" value="11">11</form:option>
   			<form:option path="floor" value="12">12</form:option>

  		</form:select>
  		<form:label path="type" for="floatingInput">Floor:</form:label>
  		<form:errors path="type" class="text-danger"/>			
	</div>
	
	<div class="form-floating mb-3">
  		<form:select path="status" type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
  			<form:option path="status"  value="Vacant Clean">Vacant Clean</form:option>
  			<form:option path="status" value="Vacant Dirty">Vacant Dirty</form:option>
   			<form:option path="status" value="Occupied">Occupied</form:option>
  		</form:select>
  		<form:label path="type" for="floatingInput">Room Status:</form:label>
  		<form:errors path="type" class="text-danger"/>
  		<form:errors path="floor" class="text-danger"/>			
  		<form:errors path="guestName" class="text-danger"/>			
  		<form:errors path="guestEmail" class="text-danger"/>			
  		<form:errors path="guestDoB" class="text-danger"/>			
  		<form:errors path="checkIn" class="text-danger"/>			
  		<form:errors path="checkOut" class="text-danger"/>			
  		<form:errors path="status" class="text-danger"/>			
  		<form:errors path="type" class="text-danger"/>			
  		<form:errors path="type" class="text-danger"/>			
			
	</div>
	

	
	

		<div class="container">
			<input type="submit" value="Add Room"/>
		</div>	
	</form:form>
</div>
	
	
	
	
</body>
</html>