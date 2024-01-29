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

	
	<div >
		<a href="/welcome">Back to shelves</a>
	</div>
	<div class="container">
		<h1><c:out value="${book.title }"/> </h1>
	</div>
	
	<div class="container">
		<h2>By <c:out value="${book.author }"/></h2>
	</div>
	
	<div class="container">
		<h3><c:out value="${book.thoughts }"/> </h3>
	</div>

	
	<div class="container">
		<a href="/logout">Log Out</a>
	</div>
	

</body>
</html>