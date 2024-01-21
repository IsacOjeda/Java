<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Fruit Store</title>
</head>
<body>
<div  style="background-color:black;" class="container" >
<h1 style="color:white;">Fruit Store</h1>
	<table style="background-color:grey;" class="table" >
	<tbody >
	<tr>
		<th>Name</th>
		<th style="color:gold;">Price</th>
	</tr>
	<c:forEach var="fruit" items="${fruits }">
	<tr>
		<td><c:out value="${fruit.name }"/>  </td>
		<td style="color:gold;"><c:out value="${fruit.price }"/></td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
</div>
</body>
</html>