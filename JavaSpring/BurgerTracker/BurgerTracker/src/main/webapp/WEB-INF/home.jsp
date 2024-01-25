<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<table class="table"> 
		<thead>
			<div class="container" ><h1>Burger Tracker</h1></div>
			<tr>
				<th>Burger Name</th>
				<th>Restaurant Name</th>
				<th>Rating(out of 5)</th>
				<th>Action</th>
			</tr>
		</thead>
		<c:forEach var="burger" items="${burgers }">
			<tbody>
				<tr>
					<td><c:out value="${burger.burger_name }"/></td>
					<td><c:out value="${burger.restaurant_name }"/></td>
					<td><c:out value="${burger.rating }"/></td>
					<td><a href="/edit/${burger.id }">edit</a>
				</tr>
		</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="container">
		<form:form action="/new" method ="post" modelAttribute="burger">
		<div class="container"><h1>Add A Burger:</h1></div>
		
			<div class="row mb-3">
				<form:label path="burger_name" >Burger Name</form:label>
				<form:errors path="burger_name" class="text-danger" />
				<form:input path="burger_name" class="form-control" />
			</div>
			<div class="row mb-3">
				<form:label path="restaurant_name">Restaurant Name</form:label>
			    <form:errors path="restaurant_name" class="text-danger" />
				<form:input path="restaurant_name" class="form-control"/>
			</div>
			<div class="row mb-3">
				<form:label path="rating">Rating</form:label>
			    <form:errors path="rating" class="text-danger" />
				<form:input type="number" path="rating" class="form-control"/>
			</div>
			<div class="row mb-3">
				<form:label path="notes">Notes</form:label>
			    <form:errors path="notes" class="text-danger" />
				<form:input path="notes" class="form-control"/>
			</div>
			<div class="row mb-3">
				<input type="submit" value="Submit"/>
			</div>
		</form:form>
		</div>
	
	
</body>
</html>