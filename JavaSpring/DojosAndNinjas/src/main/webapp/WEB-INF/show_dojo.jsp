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
<title><c:out value="${dojo.name}"></c:out></title>
</head>
<body>
<div class="container"><h1> <c:out value="${dojo.name}"/> Ninjas </h1></div>


	<div class="container">
		<table class="table"> 
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
		</thead>
		<c:forEach var="ninja" items="${dojo.ninjas }">
			<tbody>
				<tr>
					<td><c:out value="${ninja.first_name}"/></td>
					<td><c:out value="${ninja.last_name}"/></td>
					<td><c:out value="${ninja.age}"/></td>
				</tr>
		</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div class="container">
	<a href="/">Home</a>
	</div>




</body>
</html>