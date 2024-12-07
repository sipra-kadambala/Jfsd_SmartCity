<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    background: linear-gradient(to right, #d4fc79, #96e6a1); /* Light pastel green gradient */
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

h3 {
    color: #333; /* Darker shade for contrast */
    font-family: 'Trebuchet MS', sans-serif;
}
</style>

</head>
<body>
<%@include file="AdminNavbar.jsp" %>
<h2>Admin Home page</h2>
<br>
<h3>Total Customers : <c:out value="${count}"></c:out></h3>
<h3>Total Requests : <c:out value="${requestcount}"></c:out></h3>
</body>
</html>