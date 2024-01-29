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
<title></title>
</head>
<body>
	<div class="container">
	<h1>Welcome</h1>
	<h2>Join our growing community.</h2>
	</div>
		
	<div class="container">
		<h1>Register</h1>
		<form:form action="/register" method="post" modelAttribute="newUser">
		<div class="container">
			<form:label path="userName">User Name:</form:label>
			<form:input type="text" path="userName" class="form-control"></form:input>
			<form:errors path="userName" class="text-danger"/>			
		</div>
		<div class="container">
			<form:label path="email" >Email:</form:label>
			<form:input type="text" path="email" class="form-control"	></form:input>
			<form:errors path="email" class="text-danger"/>			
		</div>
		<div class="container">
			<form:label path="password">Password:</form:label>
			<form:input type="password" path="password" class="form-control"	></form:input>
			<form:errors path="password" class="text-danger"/>			
		</div>
		<div class="container">
			<form:label path="confirm">Confirm PW:</form:label>
			<form:input type="password" path="confirm" class="form-control"	></form:input>
			<form:errors path="confirm" class="text-danger"/>			
		</div>		
		<div class="container">
			<input type="submit" value="Register"/>
		</div>	
		
		</form:form>
	</div>
	<div class="container"> 
		<h1>Log in</h1>
		<form:form action="/login" method="post" modelAttribute="newLogin">
		<div class="container">
			<form:label path="email">Email:</form:label>
			<form:input type="text" path="email" class="form-control"	/>
			<form:errors path="email" class="text-danger"/>			
		</div>
		<div class="container">
			<form:label path="password">Password:</form:label>
			<form:input type="password" path="password" class="form-control"	/>
			<form:errors path="password" class="text-danger"/>			
		</div>	
		<div class="container">
		<input type="submit" value="Log in"/>
		</div>
		</form:form>
	</div>
	
	
		
</body>
</html>