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

<div class="container" >


	<form:form action="/edit/${burger.id}" mode="put" modelAttribute="burger">
	
	<div><h1>Edit Burger</h1></div>
	
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
	
	
	
	<a href="/">Home </a>
	
	</form:form>
</div>

</body>
</html>