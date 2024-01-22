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
			<h1>Send an Omikuji!</h1>
			<div class="container" style="width:300px">
				<p>
					<c:out value="${cityError }" />
				</p>
				<p>
					<c:out value="${personError }" />
				</p>
				<p>
					<c:out value="${jobError }" />
				</p>
				<p>
					<c:out value="${thingError }" />
				</p>
				<p>
					<c:out value="${somethingniceError }" />
				</p>
				<form class="container" action="/omikuji" method="POST">
					<label>Pick any number from 5 to 25</label>
					<input type="number" name="num" min="5" max="25">

					<label>Enter the name of any city</label>
					<input type="text" name="city">

					<label>Enter the name of any real person</label>
					<input type="text" name="person">

					<label>Enter Professional endeavor or hobby: </label>
					<input type="text" name="job">

					<label>Enter any type of living thing</label>
					<input type="text" name="thing">

					<label>Say something nice to someone:</label>
					<input type="text" name="somethingnice">

					<label>Send and Show a friend</label>
					<input type="submit" value="Send">


				</form>

			</div>


		</body>

		</html>