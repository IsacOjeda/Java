<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Safe Travels</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<table class="table"> 
		<thead>
			<div class="container" >
			<h1>Safe Travels</h1>
			</div>
			<tr>
				<th>Expense</th>
				<th>Vendor</th>
				<th>Amount</th>
				<th>Action</th>
			</tr>
		</thead>
		<c:forEach var="expense" items="${expenses }">
			<tbody>
				<tr>
					<td><a href="/expense/${expense.id }" ><c:out value="${expense.name }"/></a></td>
					<td><c:out value="${expense.vendor }"/></td>
					<td><c:out value="${expense.amount}"/></td>
					<td><a href="/edit/${expense.id }">edit</a>
					<td>
					  <form action="/expenses/${expense.id }" method="post">
						<input type="hidden" name="_method" value="delete">
						<input type="submit" value="Delete">
					</form>
					</td>
				</tr>
		</c:forEach>
			</tbody>
		</table>
	</div>
 	<div class="container">
		<form:form action="/new" method ="post" modelAttribute="expense">
		<div class="container"><h1>Add Expense:</h1></div>
		
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
				<form:label path="amount">Expense Amount</form:label>
			    <form:errors path="amount" class="text-danger" />
				<form:input type="number" path="amount" class="form-control"/>
			</div>
			<div class="row mb-3">
				<form:label path="description">Description</form:label>
			    <form:errors path="description" class="text-danger" />
				<form:input path="description" class="form-control"/>
			</div>
			<div class="row mb-3">
				<input type="submit" value="Submit"/>
			</div>
		</form:form>
		</div> 
	
	
</body>
</html>