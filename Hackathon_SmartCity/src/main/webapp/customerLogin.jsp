<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<title>user Login</title>
<style>
    /* Body and Container Styling */
    body {
        background: linear-gradient(to right, #b7e4c7, #a2d2ff); /* Pastel gradient */
        font-family: Arial, sans-serif;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        animation: backgroundSlide 2s infinite alternate ease-in-out;
    }

    /* Keyframe for background gradient animation */
    @keyframes backgroundSlide {
        0% { background: linear-gradient(to right, #b7e4c7, #a2d2ff); }
        100% { background: linear-gradient(to left, #f5c6ec, #cdb4db); }
    }

    .login-container {
        width: 400px;
        padding: 30px;
        margin-left: 500px;
        border: 2px solid #a7bed3; /* Soft pastel border */
        border-radius: 12px;
        background-color: #ffffff;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        animation: fadeIn 1s ease, slideIn 1s ease; /* Animation added */
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    @keyframes slideIn {
        from { transform: translateY(-50px); }
        to { transform: translateY(0); }
    }
    
    /* Heading */
    .login-heading {
        text-align: center;
        color: #748b97; /* Soft pastel shade */
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
        animation: bounceIn 1s ease; /* Animation added */
    }
    
    /* Bounce In Animation */
    @keyframes bounceIn {
        0%, 100% { transform: translateY(-5px); }
        50% { transform: translateY(5px); }
    }
    
    /* Input Field Styling */
    .input-field {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #cde4f6; /* Pastel input border */
        border-radius: 5px;
        font-size: 16px;
        background-color: #f9f9f9;
        color: #333;
        transition: all 0.3s ease; /* Animation added */
    }
    .input-field:focus {
        border-color: #a2d2ff;
        outline: none;
        box-shadow: 0 0 5px rgba(162, 210, 255, 0.5);
        transform: scale(1.05); /* Focus scaling animation */
    }
    
    /* Labels */
    label {
        font-weight: bold;
        color: #748b97; /* Soft pastel color */
        display: block;
        margin-bottom: 5px;
        animation: fadeInText 0.8s ease;
    }
    
    /* Fade In Animation for Labels */
    @keyframes fadeInText {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    
    /* Button Styling */
    .button-container {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }
    input[type="submit"],
    input[type="reset"] {
        width: 45%;
        padding: 8px;
        font-size: 14px;
        font-weight: bold;
        color: white;
        background-color: #a7bed3; /* Soft pastel button */
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #8fa6b1;
        transform: scale(1.05);
    }
    input[type="reset"]:hover {
        background-color: #e5b0ea;
        transform: scale(1.05);
    }
</style>
</head>
<body>
<%@include file="mainNavbar.jsp" %>
<br>
<h3 align="center" style="color:#f28482"> <!-- Soft pastel text color -->
    <c:out value="${msg}"></c:out><br/>
</h3>
<div class="login-container">
    <h2 class="login-heading">User Login</h2>
    <form action="checkCustomerLogin" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" class="input-field" required>
        <label for="password">Password:</label>
        <input type="password" name="password" class="input-field" required>
        <div class="button-container">
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">

        </div>
    </form>
</div>
</body>
</html>
