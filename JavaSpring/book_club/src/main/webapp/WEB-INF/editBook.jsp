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
		<h1>Edit Book</h1>
	</div>

	<div class="container">
	<form:form action="/books/${book.id}/edit" method="put" modelAttribute="book">
			<form:hidden path="book" />
			<div class="row mb-3">
				<form:label path="title" >Book Title</form:label>
				<form:errors path="title" class="text-danger" />
				<form:input path="title" class="form-control" />
			</div>
			<div class="row mb-3">
				<form:label path="author">Book Author</form:label>
			    <form:errors path="author" class="text-danger" />
				<form:input path="author" class="form-control"/>
			</div>
			<div class="row mb-3">
				<form:label path="thoughts">My thoughts:</form:label>
			    <form:errors path="thoughts" class="text-danger" />
				<form:input path="thoughts" class="form-control"/>
			</div>

			
			

			<div class="row mb-3">
				<input type="submit" value="Submit"/>
			</div>
	</form:form>
	</div>
			<div class="container">
				<form action="/books/${book.id}" method="post">
				<input type="hidden" name="_method" value="delete"/>
				<button type="submit">Delete</button>
				</form>
			
			</div>
	
		<div >
		<a href="/welcome">Back to shelves</a>
	</div>
	<div class="container">
		<a href="/logout">Log Out</a>
	</div>
	

</body>
</html>