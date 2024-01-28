<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div>
		<form:form action="/ninjas/new" method="POST" modelAttribute="ninja">
			<form:label path="first_name">First Name </form:label>
			<form:input type="text" path="first_name"/>
			<form:label path="last_name">Last Name</form:label>
			<form:input type="text" path="last_name"/>
			<form:label path="age">Age</form:label>
			<form:input type="text" path="age"/>
			
			<form:select path="dojo">
				<c:forEach var="dojo" items= "${dojos }">
					<option value="${dojo.id }">${dojo.name }</option>
				</c:forEach>
			</form:select>
			<input type = "submit" value="Add Ninja">
		</form:form>	
	</div>
	<div class="container">
	<a href="/">Home</a>
	</div>




</body>
</html>