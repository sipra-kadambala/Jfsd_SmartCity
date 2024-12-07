<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Service Requests</title>
	<style>
	    /* General body styling */
	    body {
	        font-family: Arial, sans-serif;
	        background: linear-gradient(to right, #d4fc79, #96e6a1); /* Soft pastel green gradient */
	        color: #333;
	        margin: 0;
	        padding: 0;
	    }

	    /* Heading styling */
	    h2 {
	        text-align: center;
	        margin-top: 20px;
	        color: #2d3436; /* Soft charcoal gray */
	    }

	    h3 {
	        text-align: center;
	        margin-top: 20px;
	        color: #2d3436;
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
	        border: 2px solid #74b9ff; /* Light pastel blue */
	        border-radius: 25px;
	        transition: box-shadow 0.3s, border-color 0.3s;
	        color: #333;
	    }

	    /* Search box focus effects */
	    #searchInput:focus {
	        outline: none;
	        border-color: #55efc4; /* Mint green */
	        box-shadow: 0 0 8px rgba(85, 239, 196, 0.4);
	    }

	    /* Table styling */
	    table {
	        width: 80%;
	        margin: 20px auto;
	        border-collapse: collapse;
	        font-family: Arial, sans-serif;
	        background-color: #f8f9fa; /* Light pastel gray */
	        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	        border-radius: 8px;
	        overflow: hidden;
	    }

	    th, td {
	        padding: 15px;
	        text-align: left;
	        border-bottom: 1px solid #ddd;
	        color: #2d3436;
	    }

	    th {
	        background-color: #74b9ff; /* Light pastel blue */
	        color: white;
	        font-weight: bold;
	    }

	    tr:hover {
	        background-color: #dfe6e9; /* Very light gray */
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
    <%@ include file="AdminNavbar.jsp" %>
    <div class="table-header">Service Requests</div>
    <div class="search-container">
        <input type="text" id="searchInput" onkeyup="searchTable()" placeholder="Search requests...">
    </div>

    <table id="customerTable">
        <thead>
            <tr>
                <th>ID</th>
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
            <c:forEach var="request" items="${requestlist}"> <!-- Changed variable name -->
                <tr>
                    <td><c:out value="${request.id}" /></td> <!-- Accessing 'request' instead of 'requestlist' -->
                    <td><c:out value="${request.name}" /></td>
                    <td><c:out value="${request.contact}" /></td>
                    <td><c:out value="${request.requestType}" /></td>
                    <td><c:out value="${request.location}" /></td>
                    <td><c:out value="${request.description}" /></td>
                    <td><c:out value="${request.priority}" /></td>
                    <td><c:out value="${request.date}" /></td>
                    <td>
                        <form action="deleteRequest/${request.id}" method="post" onsubmit="return confirm('Are you sure you want to delete this request?');">
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
