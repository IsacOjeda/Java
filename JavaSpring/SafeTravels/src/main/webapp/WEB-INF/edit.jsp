<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Expense</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" >


	<form:form action="/edit/${expense.id}" mode="put" modelAttribute="expense">
	
	<div><h1>Edit Expense</h1></div>
	
			<div class="row mb-3">
				<form:label path="name" >Expense Name</form:label>
				<form:errors path="name" class="text-danger" />
				<form:input path="name" class="form-control" />
			</div>
			<div class="row mb-3">
				<form:label path="vendor">Vendor Name</form:label>
			    <form:errors path="vendor" class="text-danger" />
				<form:input path="vendor" class="form-control"/>
			</div>
			<div class="row mb-3">
				<form:label path="amount">Amount</form:label>
			    <form:errors path="amount" class="text-danger" />
				<form:input type="number" path="amount" class="form-control"/>
			</div>
			<div class="row mb-3">
				<form:label path="description">Notes</form:label>
			    <form:errors path="description" class="text-danger" />
				<form:input path="description" class="form-control"/>
			</div>
			<div class="row mb-3">
				<input type="submit" value="Submit"/>
			</div>	
	
	
	
	<a href="/">Home </a>
	
	</form:form>
</div>
</body>
</html>