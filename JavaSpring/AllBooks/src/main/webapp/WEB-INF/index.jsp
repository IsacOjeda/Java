<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" > 
<h1>All Books</h1>
<table style="border:50px;" class="table" >
    <thead>
        <tr>            
        	<th>ID</th>
            <th>Title</th>
            <th>Language</th>
            <th>Number of Pages</th>
        </tr>
    </thead>
    <tbody>
	<c:forEach var="book" items="${books}">
	<tr>
		<td><c:out value="${book.id }"/></td>
		<td> <a href="/books/{bookId}"><c:out value="${book.title }"/> </a>  </td>
		<td><c:out value="${book.language }"/></td>
		<td><c:out value="${book.numberOfPages }"/></td>
	</tr>
	</c:forEach>
    </tbody>
</table>
</div>
</body>
</html>