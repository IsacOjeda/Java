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
	<div class="container">
	<h1>Reserve</h1>
	<h1>Room <c:out value="${oneRoom.id }"/></h1>
	<h3>Floor: <c:out value="${oneRoom.floor }"/></h3>
	<h3>Type: <c:out value="${oneRoom.type }"/></h3>
	<h3>Status: <c:out value="${oneRoom.status }"/></h3>
	

	
	<form:form action="rooms/${oneRoom.id}" method="post" modelAttribute="oneRoom">
		<div class="form-floating mb-3">
  		<form:input path="guestName" type="text" class="form-control" id="floatingInput" placeholder="name@example.com"/>
  		<form:label path="guestName" for="floatingInput">Guest Name:</form:label>
  		<form:errors path="guestName" class="text-danger"/>			
	</div>
	
	<div class="form-floating mb-3">
  		<form:input path="guestEmail" type="email" class="form-control" id="floatingInput" placeholder="name@example.com"/>
  		<form:label path="guestEmail" for="floatingInput">Guest Email:</form:label>
  		<form:errors path="guestEmail" class="text-danger"/>			
	</div>	
	</form:form>
	</div>
</body>
</html>