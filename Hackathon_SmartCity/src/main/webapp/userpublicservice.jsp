<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Public Services in Vijayawada</title>
    <style>
        /* Main container styling */
       .container {
    text-align: center; /* Center the buttons in the container */
    margin: 20px; /* Add some margin around the container */
}
body{
    background: linear-gradient(to right, #8B4513, #D2691E);
    
    }
       
.container button {
    background-color: #007BFF; /* Bootstrap primary color */
    color: white; /* Text color */
    border: none; /* Remove default border */
    border-radius: 5px; /* Rounded corners */
    padding: 12px 20px; /* Padding for button */
    margin: 10px; /* Space between buttons */
    font-size: 16px; /* Font size */
    cursor: pointer; /* Pointer cursor on hover */
    transition: background-color 0.3s, transform 0.2s; /* Smooth transitions */
}

.container button:hover {
    background-color: #0056b3; /* Darker shade on hover */
    transform: translateY(-2px); /* Slight lift effect */
}

.container button:active {
    transform: translateY(0); /* Reset position when clicked */
    background-color: #004494; /* Even darker shade on active */
}


        /* Card container styling */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            gap: 20px;
           
        }

        /* General card styling */
        .card {
            width: 300px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10p;
            text-align: center;
            color: white;
            background-size: cover;
            background-position: center;
            transition: transform 0.3s;
            font-family: Arial, sans-serif;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card-title {
            font-size: 24px;
            margin: 10px 0;
        }

        .card button {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .card button:hover {
            background-color: rgba(0, 0, 0, 0.7);
        }

        /* Specific card color backgrounds */
        .card-apsrtc {
            background-color: #2c3e50;
            background-image: url('/HackathonProject/src/main/resources/static/images/bus.jpg'); /* Replace with actual image path */
        }

        .card-railways {
            background-color: #4CAF50;
            background-image: url('https://static.toiimg.com/thumb/msid-105440376,width-1280,height-720,resizemode-4/105440376.jpg'); /* Replace with actual image path */
        }

        .card-cabs {
            background-color: #f39c12;
            background-image: url('https://d2r2ijn7njrktv.cloudfront.net/apnlive/uploads/2022/07/03142439/auto-cab-price-hike-1-1024x576.jpg'); /* Replace with actual image path */
        }

        .card-airport {
            background-color: #3498db;
            background-image: url('https://wallpaperaccess.com/full/1264539.jpg'); /* Replace with actual image path */
        }

        /* Healthcare card backgrounds */
        .card-hospital {
            background-color: #e74c3c;
            background-image: url('https://biovoicenews.com/wp-content/uploads/2022/08/Manipal-Hospitals-Pune-min-564x420.jpg'); /* Replace with actual image path */
        }

        .card-phc {
            background-color: #8e44ad;
            background-image: url('https://th.bing.com/th/id/OIP.rVygOHVV3AIrKxE7AOtZAwHaEL?rs=1&pid=ImgDetMain'); /* Replace with actual image path */
        }

        .card-uhc {
            background-color: #2980b9;
            background-image: url('https://www.buildingbetterhealthcare.com/article-image-alias/case-study-mcavoy-delivers-urgent-ward-2.jpeg'); /* Replace with actual image path */
        }

        /* Education Services card backgrounds */
        .card-public-schools {
            background-color: #e67e22;
            background-image: url('https://images.indianexpress.com/2020/02/andhra-pradesh-education.jpg?resize=450'); /* Replace with actual image path */
        }

        .card-colleges {
            background-color: #16a085;
            background-image: url('https://cdn.shopify.com/s/files/1/0045/4842/7889/files/Chandigarh-University-mobile.jpg?v=1587064419'); /* Replace with actual image path */
        }

        .card-libraries {
            background-color: #f1c40f;
            background-image: url('https://th.bing.com/th/id/R.f864b4ebebbff980e1790898076def21?rik=uGP7b06S8%2f7egA&riu=http%3a%2f%2fmedia.architecturaldigest.com%2fphotos%2f55f1e22c302ba71f301830e6%2fmaster%2fpass%2fdam-images-travel-2015-university-libraries-stunning-university-libraries-05.jpg&ehk=Oxu2w%2fydHNJhuuo7x8xWT14DgEiTr1eK6KFF6Mm3FM0%3d&risl=&pid=ImgRaw&r=0'); /* Replace with actual image path */
        }

        /* Law and Order card backgrounds */
        .card-police {
            background-color: #c0392b;
            background-image: url('https://cdn.wallpapersafari.com/46/19/6Lfzp9.jpg'); /* Replace with actual image path */
        }

        .card-fire {
            background-color: #e74c3c;
            background-image: url('https://th.bing.com/th/id/OIP.Uvw-CHZrz7Kwi4rp7orqbQAAAA?rs=1&pid=ImgDetMain'); /* Replace with actual image path */
        }

        /* Water and Sanitation card backgrounds */
        .card-water-supply {
            background-color: #3498db;
            background-image: url('images/water.jpg'); /* Replace with actual image path */
        }

        .card-sewage {
            background-color: #2ecc71;
            background-image: url('images/sewage.jpg'); /* Replace with actual image path */
        }

        /* Electricity Supply card backgrounds */
        .card-electrical {
            background-color: #8e44ad;
            background-image: url('images/electricity.jpg'); /* Replace with actual image path */
        }

        /* PDS card backgrounds */
        .card-ration {
            background-color: #f39c12;
            background-image: url('images/ration.jpg'); /* Replace with actual image path */
        }

        /* Social Welfare card backgrounds */
        .card-welfare {
            background-color: #2c3e50;
            background-image: url('images/welfare.jpg'); /* Replace with actual image path */
        }

        .card-women-child {
            background-color: #e74c3c;
            background-image: url('images/women-child.jpg'); /* Replace with actual image path */
        }

        /* Tourism card backgrounds */
        .card-tourist {
            background-color: #3498db;
            background-image: url('images/tourism.jpg'); /* Replace with actual image path */
        }

        .card-cultural {
            background-color: #e67e22;
            background-image: url('images/cultural.jpg'); /* Replace with actual image path */
        }

        /* Agricultural Services card backgrounds */
        .card-agricultural {
            background-color: #16a085;
            background-image: url('images/agriculture.jpg'); /* Replace with actual image path */
        }

        .card-market {
            background-color: #f1c40f;
            background-image: url('images/market.jpg'); /* Replace with actual image path */
        }

        /* Toggleable section styling */
        #publicServicesSection, #healthcareServicesSection, #educationServicesSection, #lawOrderSection, #waterSanitationSection, #electricitySection, #pdsSection, #socialWelfareSection, #tourismSection, #agriculturalSection {
            display: none;
            margin-top: 50px;
        }
    </style>

    <script>
        function toggleSection(sectionId) {
            const section = document.getElementById(sectionId);
            if (section.style.display === 'none' || section.style.display === '') {
                section.style.display = 'block';
                section.scrollIntoView({ behavior: 'smooth' });
            } else {
                section.style.display = 'none';
            }
        }
    </script>
    
    <!-- Ionicons CDN -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <!-- Add your CSS file if it's external -->
    <link rel="stylesheet" href="path/to/your/style.css">

    
</head>
<body>
<%@include file="CustomerNavbar.jsp" %>
    <div class="container">
        <!-- Buttons to toggle sections -->
        <button onclick="toggleSection('publicServicesSection')">Transportation Services</button>
        <button onclick="toggleSection('healthcareServicesSection')">Healthcare Services</button>
        <button onclick="toggleSection('educationServicesSection')"> Education Services</button>
        <button onclick="toggleSection('waterSanitationSection')"> Water and Sanitation</button>
        <button onclick="toggleSection('electricitySection')">Electricity Supply</button>
        <button onclick="toggleSection('pdsSection')">Public Distribution System (PDS)</button>
        <button onclick="toggleSection('socialWelfareSection')">Social Welfare Services</button>
        <button onclick="toggleSection('tourismSection')">Tourism and Cultural Services</button>
        <button onclick="toggleSection('agriculturalSection')">Agricultural Services</button>
    </div>

    <!-- Transportation Services Section -->
    <div id="publicServicesSection">
        <h2 style="text-align:center; color: #333;">Transportation Services</h2>
        <div class="card-container">
            <div class="card card-apsrtc">
                <div class="card-title">APSRTC</div>
                <p>Extensive bus network for intra-city and inter-city travel.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-railways">
                <div class="card-title" style=" text-shadow: 1px 1px 2px black;">Railways</div>
                <p>Vijayawada Junction connects to cities across India.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-cabs">
                <div class="card-title" style="text-shadow: 1px 1px 2px black;">Auto-rickshaws & Cabs</div>
                <p>Available for convenient local commuting within the district.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-airport">
                <div class="card-title" style="text-shadow: 1px 1px 2px black;;">Air Transport</div>
                <p style="text-shadow: 1px 1px 4px black;">Vijayawada Airport offers flights to major cities in India.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Healthcare Services Section -->
    <div id="healthcareServicesSection">
        <h2 style="text-align:center; color: #333;">Healthcare Services</h2>
        <div class="card-container">
            <div class="card card-hospital">
                <div class="card-title">Government Hospitals</div>
                <p>Large hospitals like Government General Hospital for affordable healthcare.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-phc">
                <div class="card-title">Primary Health Centers</div>
                <p>Smaller health centers in rural and suburban areas.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-uhc">
                <div class="card-title">Urban Health Centers</div>
                <p>Provide vaccinations, health check-ups, and maternal and child healthcare.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Education Services Section -->
    <div id="educationServicesSection">
        <h2 style="text-align:center; color: #333; ">Education Services</h2>
        <div class="card-container">
            <div class="card card-public-schools">
                <div class="card-title" style="text-shadow: 1px 1px 4px black;">Public Schools</div>
                <p style="text-shadow: 1px 1px 4px black;">Government-run primary, secondary, and higher secondary schools.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-colleges">
                <div class="card-title" style="text-shadow: 1px 1px 4px black;">Colleges and Universities</div>
                <p style="text-shadow: 1px 1px 4px black;">Notable institutions like Andhra Loyola College and polytechnic colleges.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-libraries">
                <div class="card-title">Libraries</div>
                <p>Public libraries for education and research, some with digital resources.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Law and Order Section -->
    <div id="lawOrderSection">
        <h2 style="text-align:center; color: #333;">Law and Order</h2>
        <div class="card-container">
            <div class="card card-police">
                <div class="card-title" style="text-shadow: 1px 1px 4px black;">Police Services</div>
                <p style="text-shadow: 1px 1px 4px black;">Numerous police stations and a dedicated women's police station.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-fire">
                <div class="card-title" style="text-shadow: 1px 1px 4px black;">Fire Services</div>
                <p style="text-shadow: 1px 1px 4px black;">Fire stations in urban and suburban areas for emergency response.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Water and Sanitation Section -->
    <div id="waterSanitationSection">
        <h2 style="text-align:center; color: #333;">Water and Sanitation</h2>
        <div class="card-container">
            <div class="card card-water-supply">
                <div class="card-title">Municipal Water Supply</div>
                <p>Drinking water provided by the Vijayawada Municipal Corporation.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-sewage">
                <div class="card-title">Sewage and Waste Management</div>
                <p>Regular waste collection and sewage management services.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Electricity Supply Section -->
    <div id="electricitySection">
        <h2 style="text-align:center; color: #333;">Electricity Supply</h2>
        <div class="card-container">
            <div class="card card-electrical">
                <div class="card-title">APSPDCL</div>
                <p>Responsible for electricity distribution and maintenance in the district.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Public Distribution System Section -->
    <div id="pdsSection">
        <h2 style="text-align:center; color: #333;">Public Distribution System (PDS)</h2>
        <div class="card-container">
            <div class="card card-ration">
                <div class="card-title">Ration Shops</div>
                <p>Affordable food grains and essential goods for eligible citizens.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Social Welfare Services Section -->
    <div id="socialWelfareSection">
        <h2 style="text-align:center; color: #333;">Social Welfare Services</h2>
        <div class="card-container">
            <div class="card card-welfare">
                <div class="card-title">Welfare Schemes</div>
                <p>Government programs for disadvantaged groups and minorities.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-women-child">
                <div class="card-title">Women and Child Welfare</div>
                <p>Services like Anganwadi centers and nutrition education schemes.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Tourism and Cultural Services Section -->
    <div id="tourismSection">
        <h2 style="text-align:center; color: #333;">Tourism and Cultural Services</h2>
        <div class="card-container">
            <div class="card card-tourist">
                <div class="card-title">Tourist Information Centers</div>
                <p>Facilities guiding tourists visiting Kanaka Durga Temple, Bhavani Island, and more.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-cultural">
                <div class="card-title">Cultural Events</div>
                <p>Organized events for festivals like Dasara and Ugadi.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Agricultural Services Section -->
    <div id="agriculturalSection">
        <h2 style="text-align:center; color: #333;">Agricultural Services</h2>
        <div class="card-container">
            <div class="card card-agricultural">
                <div class="card-title">Agricultural Advisory Centers</div>
                <p>Support for farmers with subsidies, seeds, and training.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-market">
                <div class="card-title">Market Yards</div>
                <p>Facilities for trading and purchasing agricultural produce at fair prices.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>
</body>
</html>
