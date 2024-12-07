<%@page import="com.example.demo.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%Customer c=(Customer)session.getAttribute("customer"); %>
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


<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
<body>
<%@include file="CustomerNavbar.jsp" %>

<h2 style="align:right">Welcome : <%=c.getName() %></h2>

<div class="container">
        <h1>Welcome to Smart City Application</h1>
<h1 style="background-color: #F5DEB3; padding: 10px; color: brown; text-align: center; width:100%;">Public Services</h1>
<div class="card-container">
  <!-- Card 1 -->
  <section id="card1" class="card">
    <h3 class="card-heading">Transportation Services</h3> <!-- Card Title -->
    <img src="https://polyparts.com.my/wp-content/uploads/2022/11/Polyparts-Innovation-11.jpg" alt="Transportation servicesService" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
		Public bus and metro services
		Railways
	    Airports
		Real-time tracking system
		Coverage: City-wide
		Status tracking (active/maintenance/inactive)
     
                   </p>
    </div>
  </section>

  <!-- Card 2 -->
  <section id="card2" class="card">
    <h3 class="card-heading">Hospitals</h3> <!-- Card Title -->
    <img src="https://www.toyota-tsusho.com/english/about/project/upload_files/02_im01.jpg" alt="Hospital Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
		Hospitals,the services they provide, their infrastructure is an integral part of a high-quality health system that addresses the health needs of the population. This requires a systems-based approach, placing hospitals together within a broader health system framework.
      </p>
    </div>
  </section>

  <!-- Card 3 -->
  <section id="card3" class="card">
    <h3 class="card-heading">Education</h3> <!-- Card Title -->
    <img src="https://th.bing.com/th/id/OIP.gCOQE6CLhVlmOBAcvQzWhQHaCm?rs=1&pid=ImgDetMain" alt="Education Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
		India renowned for their outstanding educational opportunities which have become hotspots for students seeking quality education. We’ll delve into the unique characteristics of each city, including their prestigious institutions, innovative learning environments, and vibrant student communities.
      </p>
    </div>
  </section>
</div>
<a href="publicservices" style="text-decoration: none;">
    <button style="background-color: #4CAF50; color: white; padding: 10px 10px; border: none; border-radius: 5px; font-size: 14px; cursor: pointer; width: 200px; margin: auto; display: block;">
        Click here to know more
    </button>
</a>
<br>

<h1 style="background-color: #F5DEB3; padding: 10px; color: brown; text-align: center;">Infrastructure Services</h1>

<div class="card-container">
  <!-- Card 1 -->
  <section id="card1" class="card">
    <h3 class="card-heading">Road Network Infrastructure </h3> <!-- Card Title -->
    <img src="https://karnataka.b-cdn.net/wp-content/uploads/2016/09/nh4-karnataka.jpg"	Road conditions and maintenance
	Traffic signals and control systems
	Bridge maintenance and inspection
	Construction updates" alt="Road Services" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
		Road conditions and maintenance
		Traffic signals and control systems
		Bridge maintenance and inspection
		Construction updates
      </p>
    </div>
  </section>

  <!-- Card 2 -->
  <section id="card2" class="card">
    <h3 class="card-heading">Utility Infrastructure</h3> <!-- Card Title -->
    <img src="https://th.bing.com/th/id/OIP.mSK6NPZL2qCHvejpvPJZywHaE8?rs=1&pid=ImgDetMain" alt="Hospital Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
		Water supply networks
		Electrical grid systems
		Sewage systems
		Communication networks
      </p>
    </div>
  </section>

  <!-- Card 3 -->
  <section id="card3" class="card">
    <h3 class="card-heading">Public Facilities</h3> <!-- Card Title -->
    <img src="https://dnnh3qht4.blob.core.windows.net/portals/0/Images/untitled.png?sr=b&si=DNNFileManagerPolicy&sig=SJAP2A2TprzwDYluvG2%2BYES3fa2Geq%2B2BmsB3VXlLRc%3D" alt="Emergency Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
		Administrative buildings
		Emergency services
		Community centers
      </p>
    </div>
  </section>
</div>
<a href="infrastructure" style="text-decoration: none;">
    <button style="background-color: #4CAF50; color: white; padding: 10px 10px; border: none; border-radius: 5px; font-size: 14px; cursor: pointer; width: 200px; margin: auto; display: block;">
        Click here to know more
    </button>
</a>
<br>
<h1 style="background-color: #F5DEB3; padding: 10px; color: brown; text-align: center;">Amenities</h1>


<div class="card-container">
  <!-- Card 1 -->
  <section id="card1" class="card">
    <h3 class="card-heading">Cultural Venues</h3> <!-- Card Title -->
    <img src="https://1.bp.blogspot.com/-K4w7Twqu6zo/XwrIqbnw-II/AAAAAAAACxo/4YSekOILsCEkDOblRQVe7WQ0auOvNmUhACLcBGAsYHQ/s1600/Khuda%2BBaksh%2BLibrary%2BPatna.jpg" alt="cultural Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
        Description of railway services, schedules, and updates. Everything you need to know about the railway services in the city.
      </p>
    </div>
  </section>

  <!-- Card 2 -->
  <section id="card2" class="card">
    <h3 class="card-heading">Parks,Shopping and Markets</h3> <!-- Card Title -->
    <img src="https://res.cloudinary.com/sagacity/image/upload/c_crop,h_3347,w_5020,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1200/shutterstock_480258076_ju2njd.jpg" alt="Hospital Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
        Information on parks,shoppings complexs,Markets,and Malls resources available in the city.
      </p>
    </div>
  </section>

  <!-- Card 3 -->
  <section id="card3" class="card">
    <h3 class="card-heading">Tourism and Travel</h3> <!-- Card Title -->
    <img src="https://th.bing.com/th/id/OIP.oDOduQFqmerJNZGT2H7BdgHaED?rs=1&pid=ImgDetMain" alt="Education Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
		Details about tourist attractions, historical landmarks, and guided tours.
		Information on travel agencies and local guides.
      </p>
    </div>
  </section>
</div>

<a href="amenities" style="text-decoration: none;">
    <button style="background-color: #4CAF50; color: white; padding: 10px 10px; border: none; border-radius: 5px; font-size: 14px; cursor: pointer; width: 200px; margin: auto; display: block;">
        Click here to know more
    </button>
</a><br>

      



</body>
</html>