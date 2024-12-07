<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<style>
       /* Main container styling */
      body {
    background: linear-gradient(to right, #ff7e5f, #feb47b);
    font-family: Arial, sans-serif;
    
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    animation: backgroundSlide 2s infinite alternate ease-in-out;
}

/* Keyframe for background gradient animation */
@keyframes backgroundSlide {
    0% { background: linear-gradient(to right, #ff7e5f, #feb47b); }
    100% { background: linear-gradient(to left, #f53844, #f5d020); }
}

.registration-container {
    width: 600px;
    padding: 20px;
    margin-left:500px;
    border: 2px solid #4CAF50;
    border-radius: 12px;
    background-color: #e8f5e9;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    animation: fadeIn 1.5s ease;
}

/* Fade-in animation */
@keyframes fadeIn {
    from { opacity: 0; transform: scale(0.9); }
    to { opacity: 1; transform: scale(1); }
}

.registration-heading {
    text-align: center;
    color: #2e7d32;
    font-size: 24px;
    font-weight: bold;
}

.input-field {
    width: 90%;
    padding: 15px;
    margin: 7px 0;
    
    border: 1px solid #a5d6a7;
    border-radius: 5px;
    font-size: 16px;
    background-color: white;
    color: black;
    transition: all 0.3s ease;
}

.input-field:hover {
    box-shadow: 0 0 10px rgba(56, 142, 60, 0.5);
    transform: scale(1.02);
}

.input-field:focus {
    border-color: #388e3c;
    box-shadow: 0 0 5px rgba(56, 142, 60, 0.5);
}

   .button-container {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }
    input[type="submit"],
    input[type="reset"] {
        width: 45%; /* Adjusted width */
        padding: 8px; /* Reduced padding */
        font-size: 14px; /* Reduced font size */
        font-weight: bold;
        color: white;
        background-color: #4CAF50;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
        transform: scale(1.05);
    }
    input[type="reset"]:hover {
        background-color: #e53935;
        transform: scale(1.05);
    }
label{
color:black;
}
option{
color:black;
}

<style>
    /* Main container styling */
    body {
        background: linear-gradient(to right, #a8edea, #fed6e3);
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        animation: backgroundSlide 4s infinite alternate ease-in-out;
    }

    /* Keyframe for background gradient animation */
    @keyframes backgroundSlide {
        0% { background: linear-gradient(to right, #a8edea, #fed6e3); }
        100% { background: linear-gradient(to left, #fbc2eb, #a6c1ee); }
    }

    .registration-container {
        width: 600px;
        padding: 20px;
        border: 2px solid #6c757d;
        border-radius: 15px;
        background-color: #fff9f9;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        animation: fadeIn 1.5s ease;
    }

    /* Fade-in animation */
    @keyframes fadeIn {
        from { opacity: 0; transform: scale(0.9); }
        to { opacity: 1; transform: scale(1); }
    }

    .registration-heading {
        text-align: center;
        color: #6c757d;
        font-size: 26px;
        font-weight: bold;
        margin-bottom: 20px;
    }

    .input-field {
        width: 95%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ced4da;
        border-radius: 8px;
        font-size: 16px;
        background-color: #f8f9fa;
        color: #495057;
        transition: all 0.3s ease;
    }

    .input-field:hover {
        box-shadow: 0 0 8px rgba(108, 117, 125, 0.5);
        transform: scale(1.02);
    }

    .input-field:focus {
        border-color: #6c757d;
        box-shadow: 0 0 5px rgba(108, 117, 125, 0.5);
    }

    label {
        font-weight: bold;
        color: #6c757d;
    }

    select, option {
        color: #495057;
        background-color: #f8f9fa;
    }

    .button-container {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }

    input[type="submit"],
    input[type="reset"] {
        width: 48%;
        padding: 10px;
        font-size: 16px;
        font-weight: bold;
        color: white;
        background-color: #6c757d;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #5a6268;
        transform: scale(1.05);
    }

    input[type="reset"]:hover {
        background-color: #e57373;
        transform: scale(1.05);
    }
</style>
</head>
<body>
<%@include file="mainNavbar.jsp" %>
<h3 align="center" style="color:red">
    <c:out value="${message}"></c:out><br/>
</h3>
<br>
<div class="registration-container">
    <h2 class="registration-heading">Registration Form</h2>
    <form action="insertcustomer" method="post">
        <label for="name">Name:</label>
        <input type="text" name="cname" class="input-field" required><br>

        <label for="gender">Gender:</label>
        <select name="cgender" class="input-field" required>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Others">Others</option>
        </select>

        <label for="dob">Date of Birth:</label>
        <input type="date" name="cdob" class="input-field" required><br>

        <label for="email">Email:</label>
        <input type="email" name="cemail" class="input-field" required><br>

        <label for="password">Password:</label>
        <input type="password" name="cpassword" class="input-field" required><br>

        <label for="location">Location:</label>
        <input type="text" name="clocation" class="input-field" required><br>

        <label for="contact">Contact:</label>
        <input type="number" name="ccontact" class="input-field" required><br>

        <div class="button-container">
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </div>
    </form>
</div>
</body>
</html>
