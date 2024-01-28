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
<title>New Dojo</title>
</head>
<body>
	<div class="container">
		<form:form action="/dojos/new" method="post" modelAttribute="dojo">
			<form:label path="name">Dojo Name:</form:label>
			<form:input type="text" path="name"></form:input>
			<input type="submit" value="Create Dojo"></input>
		</form:form>
	</div>
	<div class="container">
	<a href="/">Home</a>
	</div>

</body>
</html>