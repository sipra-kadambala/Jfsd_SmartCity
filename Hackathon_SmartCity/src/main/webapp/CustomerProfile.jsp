<%@ page import="com.example.demo.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% Customer c = (Customer) session.getAttribute("customer"); %>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>
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

</head>
<body>
<%@ include file="CustomerNavbar.jsp" %>
<h3 align="center" style="color:red">
<c:out value="${message}"></c:out><br/></h3>
<div class="card">
    <div class="card-header">
        <h3>Welcome, <%= c.getName() %>!</h3>
        <p>Customer Profile</p>
    </div>
    <div class="card-body">
        <div class="info-row">
            <span class="label">ID:</span>
            <span class="value"><%= c.getId() %></span>
        </div>
        <div class="info-row">
            <span class="label">Name:</span>
            <span class="value"><%= c.getName() %></span>
        </div>
        <div class="info-row">
            <span class="label">Gender:</span>
            <span class="value"><%= c.getGender() %></span>
        </div>
        <div class="info-row">
            <span class="label">Email:</span>
            <span class="value"><%= c.getEmail() %></span>
        </div>
        <div class="info-row">
            <span class="label">Date of Birth:</span>
            <span class="value"><%= c.getDob() %></span>
        </div>
        <div class="info-row">
            <span class="label">Location:</span>
            <span class="value"><%= c.getLocation() %></span>
        </div>
        <div class="info-row">
            <span class="label">Contact:</span>
            <span class="value"><%= c.getContact() %></span>
        </div>
        <div class="info-row">
            <span class="label">Password:</span>
            <span class="value"><%= c.getPassword() %></span>
        </div>
    </div>
   <div class="card-footer">
    <a href="updateCustomer/<%= c.getId() %>" class="btn">Edit Profile</a>
   
</div>
    
</div>

</body>
</html>
