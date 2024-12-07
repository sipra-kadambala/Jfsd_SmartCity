<%@page import="com.example.demo.model.ServiceRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="com.example.demo.model.Customer" %>

<%-- <% Customer c = (Customer) session.getAttribute("customer"); %> --%>

<%ServiceRequest c=(ServiceRequest) session.getAttribute("serviceRequest"); %>
<!DOCTYPE html>
<html>
<head>
    <title>Service Requests</title>
	<style>
	    /* General body styling */
	    body {
	        font-family: Arial, sans-serif;
	        background: linear-gradient(to right, #ff7f50, #ffcc33); /* Vibrant coral to bright yellow gradient */
	        color: #333;
	        margin: 0;
	        padding: 0;
	    }

	    /* Heading styling */
	    h2 {
	        text-align: center;
	        margin-top: 20px;
	        color: #d35400; /* Bright orange for emphasis */
	    }

	    h3 {
	        text-align: center;
	        margin-top: 20px;
	        color: #d35400;
	    }

	    /* Search box container */
	    .search-container {
	        display: flex;
	        justify-content: center;
	        margin: 20px;
	    }

	    /* Search box styling */
	    #searchInput {
	        padding: 12px 20px;
	        width: 40%;
	        font-size: 16px;
	        border: 2px solid #ff4500; /* Vivid orange border */
	        border-radius: 25px;
	        transition: box-shadow 0.3s, border-color 0.3s;
	        color: #333;
	    }

	    /* Search box focus effects */
	    #searchInput:focus {
	        outline: none;
	        border-color: #ffa500; /* Bright amber on focus */
	        box-shadow: 0 0 8px rgba(255, 165, 0, 0.5);
	    }

	    /* Table styling */
	    table {
	        width: 80%;
	        margin: 20px auto;
	        border-collapse: collapse;
	        font-family: Arial, sans-serif;
	        background-color: #fffacd; /* Light yellow background */
	        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	        border-radius: 8px;
	        overflow: hidden;
	    }

	    th, td {
	        padding: 15px;
	        text-align: left;
	        border-bottom: 1px solid #ddd;
	        color: #e74c3c; /* Bright red for text */
	    }

	    th {
	        background-color: #ff5733; /* Vivid red-orange header */
	        color: #fff;
	        font-weight: bold;
	    }

	    tr:hover {
	        background-color: #ffd700; /* Bright gold hover effect */
	    }

	    /* Table header styling */
	    .table-header {
	        text-align: center;
	        margin-top: 20px;
	        font-size: 24px;
	        color: #c0392b; /* Deep red for bold emphasis */
	    }
	</style>


    <script>
        function searchTable() {
            let input = document.getElementById("searchInput").value.toUpperCase();
            let table = document.getElementById("customerTable");
            let tr = table.getElementsByTagName("tr");

            for (let i = 1; i < tr.length; i++) { // Start from 1 to skip header
                let td = tr[i].getElementsByTagName("td");
                let found = false;

                for (let j = 0; j < td.length; j++) {
                    if (td[j]) {
                        let txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toUpperCase().indexOf(input) > -1) {
                            found = true;
                            break;
                        }
                    }
                }
                tr[i].style.display = found ? "" : "none"; // Show if found, otherwise hide
            }
        }
    </script>
</head>
<body>
    <%@ include file="CustomerNavbar.jsp" %>
    <div class="table-header">Service Requests</div>
    <div class="search-container">
        <input type="text" id="searchInput" onkeyup="searchTable()" placeholder="Search requests...">
    </div>

    <table id="customerTable">
        <thead>
            <tr>
                <th>Request ID</th>
<th>Customer ID</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Request Type</th>
                <th>Location</th>
                <th>Description</th>
                <th>Priority</th>
                <th>Date of Request</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
           <c:forEach var="customerlist" items="${customerlist}">
                <tr>
                <td><c:out value="${serviceRequest.id}" /></td>
                    <td><c:out value="${serviceRequest.usid}" /></td> <!-- Accessing individual 'ServiceRequest' fields -->
                    
                    <td><c:out value="${serviceRequest.name}" /></td>
                    <td><c:out value="${serviceRequest.contact}" /></td>
                    <td><c:out value="${serviceRequest.requestType}" /></td>
                    <td><c:out value="${serviceRequest.location}" /></td>
                    <td><c:out value="${serviceRequest.description}" /></td>
                    <td><c:out value="${serviceRequest.priority}" /></td>
                    <td><c:out value="${serviceRequest.date}" /></td>
                    <td>
                        <form action="usdeleteRequest/${serviceRequest.id}" method="post" onsubmit="return confirm('Are you sure you want to delete this request?');">
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
