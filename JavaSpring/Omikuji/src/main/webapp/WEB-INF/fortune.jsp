<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="ISO-8859-1">
			<title>Omikuji</title>
			<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
			<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		</head>

		<body>
			<div style=width:300px; class="container">
				<h1>Heres your Omikuji!</h1>
				<p class="lead">
					In
					<c:out value="${num}" /> Years, you will
					live in
					<c:out value="${city}" /> with
					<c:out value="${person}" />
					as your roommate,
					<c:out value="${job }" /> for a living. The next time you
					see a
					<c:out value="${thing}" /> you will have good luck.
					Also,
					<c:out value="${somethingnice}" />
				</p>
			</div>

		</body>

		</html>