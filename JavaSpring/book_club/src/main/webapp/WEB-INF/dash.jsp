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
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Welcome, <c:out value="${userName }"/>!</h1>
	</div>

	
	
		<div class="container">
		<table class="table"> 
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Author Name</th>
				<th>Posted By</th>
			</tr>
		</thead>
		<c:forEach var="book" items="${bookList }">
			<tbody>
				<tr>
					<td><c:out value="${book.id }"/></td>
					<td> <a href="/books/${book.id }"><c:out value="${book.title }"/></a>  </td>
					<td><c:out value="${book.author}"/></td>
					<td><c:out value="${book.user_name}"/></td>

				</tr>
		</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	
	
		<div class="container">
		<a href="books/new">Add a Book</a>
	</div>
	
	<div class="container">
		<a href="/logout">Log Out</a>
	</div>
	

</body>
</html>