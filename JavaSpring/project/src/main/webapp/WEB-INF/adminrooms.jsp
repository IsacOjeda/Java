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
	<a href="/logout">Log out</a>

	<a href="/rooms/new">Create A Room</a>
	<h1>Admin rooms</h1>
	
	
			<div class="row mb-3">
	</div>
		<c:forEach var="room" items="${roomList }">
			<ul>	
			<div class="container">
			<h2>Room: <c:out value="${room.id }"/> </h2>	
			<h3>Floor:  <c:out value="${room.floor }"/></h3>	
			<h3>Status:  <c:out value="${room.status }"/></h3>	
			<div class="container">
				<a href="/rooms/${room.id}">View Now</a>
			</div>

			
			</div>
			</ul>
		</c:forEach>
	</div>
</body>
</html>