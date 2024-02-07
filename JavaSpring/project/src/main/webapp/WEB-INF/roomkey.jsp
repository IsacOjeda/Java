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
		<h1>Room key</h1>
		
		<div class="me-auto m-auto d-flex flex-column">
		<h1>Here is your room key!</h1>
		<img src="/images/qrcode_94725083_0664b249d8bf05b01a27d00df04f8bc1.png" style="height:250px; width:250px;" />
		</div>
</body>
</html>