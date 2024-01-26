<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Details</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" >
		<div class="row mb-3">
			<h1>Expense Details</h1>
		</div>
		<div class="row mb-3">
			<h2>Expense Name: <c:out value="${expense.name }"/> </h2>
		</div>
		<div class="row mb-3">
			<h2>Expense Vendor: <c:out value="${expense.vendor }"/></h2>
		</div>
		<div class="row mb-3">
			<h2>Expense Amount: $<c:out value="${expense.amount}"/></h2>
		</div>
		<div class="row mb-3">
		<h2>Expense Description: <c:out value="${expense.description}"/></h2>
		</div>
			<a href="/">Go Back </a>
		
	</div>

</body>
</html>