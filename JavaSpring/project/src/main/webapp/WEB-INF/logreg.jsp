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
<title>Admin login/Register</title>
</head>
<body>
	<div class="container">
		<h1>Register</h1>
	<form:form action="/register" method="post" modelAttribute="newUser">
	<div class="form-floating mb-3">
  		<form:input path="userName" type="text" class="form-control" id="floatingInput" placeholder="name@example.com"/>
  		<form:label path="userName" for="floatingInput">User Name</form:label>
  		<form:errors path="userName" class="text-danger"/>			
	</div>
	
	<div class="form-floating mb-3">
  		<form:input path="email" type="email" class="form-control" id="floatingInput" placeholder="name@example.com"/>
  		<form:label path="email" for="floatingInput">Email</form:label>
  		<form:errors path="email" class="text-danger"/>			
	</div>
	
	<div class="form-floating mb-3">
  		<form:input path="password" type="password" class="form-control" id="floatingInput" placeholder="name@example.com"/>
  		<form:label path="password" for="floatingInput">Password</form:label>
  		<form:errors path="password" class="text-danger"/>			
	</div>	
	
	<div class="form-floating mb-3">
  		<form:input path="confirm" type="password" class="form-control" id="floatingInput" placeholder="name@example.com"/>
  		<form:label path="confirm" for="floatingInput">Confirm Password</form:label>
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
			
	<div class="form-floating mb-3">
  		<form:input path="email" type="email" class="form-control" id="floatingInput" placeholder="name@example.com"/>
  		<form:label path="email" for="floatingInput">Email</form:label>
  		<form:errors path="email" class="text-danger"/>			
	</div>
	
	<div class="form-floating mb-3">
  		<form:input path="password" type="password" class="form-control" id="floatingInput" placeholder="name@example.com"/>
  		<form:label path="password" for="floatingInput">Password</form:label>
  		<form:errors path="password" class="text-danger"/>			
	</div>

		<div class="container">
		<input type="submit" value="Log in"/>
		</div>
		</form:form>
	
	
	</div>


</body>
</html>