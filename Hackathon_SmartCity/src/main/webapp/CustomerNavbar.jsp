<%@page import="com.example.demo.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%Customer co=(Customer)session.getAttribute("customer"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box; /* Changed to "border-box" for better layout management */
    color: #f5f5f5; /* Light gray for universal text color */
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100vh;
    background-color: #0a1128; /* Deep blue background */
    font-family: 'Poppins', sans-serif;
}

nav {
    width: auto;
}

nav ul {
    display: flex;
    align-items: center;
    gap: 2.5rem;
    justify-content: center;
    background-color: #1e2a47; /* Rich navy color */
    height: 60px;
    padding-inline: 1.8rem;
    list-style: none;
    border-radius: 0.5rem;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

.logo {
    transition: opacity 300ms ease;
    cursor: pointer;
    margin-right: auto;
    height: 50px;
    border-radius: 30px;
    background: linear-gradient(45deg, #00c6ff, #0072ff); /* Gradient for the logo */
}

a {
    text-decoration: none;
}

.link {
    position: relative;
    font-size: 0.9rem;
    color: #a8d0e6; /* Soft cyan */
}

.link::before {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    background-color: #00e6e6; /* Cyan underline effect */
    height: 2px;
    width: 100%;
    border-radius: 5px;
    transform: scaleX(0);
    transition: all 0.6s ease;
}

.link:hover::before {
    transform: scaleX(1);
}

.link1 {
    position: relative;
    font-size: 0.9rem;
    color: #ff7b7b; /* Soft red */
    text-decoration: none;
    border-radius: 10px; /* Radius for the main element */
    padding: 4px 8px; /* Padding for button-like appearance */
}

.link1::before {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    background-color: #f5f5f5; /* White underline effect */
    height: 4px; /* Noticeable effect */
    width: 100%;
    border-radius: 5px;
    transform: scaleX(0);
    transition: all 0.6s ease;
}

.link1:hover::before {
    transform: scaleX(1);
}

.logo:hover {
    opacity: 0.7;
}

.class {
    text-align: center;
    font-family: 'Arial', sans-serif;
    font-size: 28px;
    font-weight: bold;
    margin-top: 5px;
    padding: 10px;
    color: #1e2a47; /* Rich navy */
    background-color: #a8d0e6; /* Soft cyan */
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}
</style>

<title>JFSD</title>
</head>
<body bgcolor="lightgrey">

<h2 class="class">Smart City Application</h2>


   


    <nav>
     
        <ul>
           <img src="images/smartcitylogo.jpg" alt="Logo" class="logo" /> <!-- Logo image -->
            <li><a href="CustomerHome" class="link">Home</a></li>
            <li><a href="submitrequest" class="link">Request Servive</a></li>
            <li><a href="CustomerViewRequest" class="link">View Request Servive</a></li>
            <li><a href="CustomerProfile" class="link">Profile</a></li>
        
            
            <li><a href="customerLogin" class="link">Logout</a></li>
            
            <li class="link1">Welcome : <%=co.getName() %></li>
        </ul>
    </nav>
</body>

</html>