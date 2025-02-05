<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Showroom Management</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
        <script src="js/navbar.js"></script> <!-- Link to your JavaScript file -->
    
</head>

<body>

   <header class="header-section">
    <div class="navbar">
        <div class="header-section">
    <img src="bg/engine.png" class="logo-img" alt="Logo">
    <div class="header-text">Car Showroom</div>
</div>
        <div class="nav-links">
            <div class="dropdown">
                <button class="dropbtn">Login/Register</button>
                <div class="dropdown-content">
                    <a href="login.jsp">Login</a>
                    <a href="register.jsp">Register</a>
                    <a href="buyCarAlertFromIndex.jsp">buyCar</a>
                </div>
            </div>
            <button class="profile-btn" onclick="window.location.href='auth'">Profile</button>
        </div>
    </div>
</header>


   <!-- Hero Section with Showroom Information -->
    <div class="hero-section">
        <h2>Welcome to the Car Showroom Management System</h2>
        <p>Your one-stop solution to explore and purchase premium cars.</p>
    </div>
<!--   <a href="buyCar.jsp" class="buy-car-button">Buy Car</a> -->

        <div class="section">
            <h3>Cars</h3>
            <div class="card-grid">
                <a href="revuelto.jsp" class="card" style="background-image: url('image/revoulto.jpg');">
                    <div class="card-content">Lamborghini - Revoulto, 2023, 100 million</div>
                </a>
                <a href="dodgeDemon.jsp" class="card" style="background-image: url('image/dodge_demon.jpg');">
                    <div class="card-content">Dodge - Srt Demon, 2020, Price</div>
                </a>
                <a href="fenyrSuperSport.jsp" class="card" style="background-image: url('image/fenyr_supersport.jpg');">
                    <div class="card-content">W Motors - Fenyr SuperSport, 2016, Price</div>
                </a>
                <a href="porche.jsp" class="card" style="background-image: url('images/car3.jpg');">
                    <div class="card-content">Car 4: Brand - Model, Year, Price</div>
                </a>
            </div>
        </div>


        <div class="section">
            <h3>Car Brands</h3>
            <div class="car-brand-grid">
                <a href="brand1-details.jsp" class="brand-card">
                    <img src="image/nissan_logo.png" alt="Brand 1" class="brand-logo">
                    <div class="brand-card-content">Nissan</div>
                </a>
                <a href="porcheHome.jsp" class="brand-card">
                    <img src="image/porche_logo.png" alt="Brand 2" class="brand-logo">
                    <div class="brand-card-content">Porsche</div>
                </a>
                <a href="audiHome.jsp" class="brand-card">
                    <img src="image/audi_logo.png" alt="Brand 3" class="brand-logo">
                    <div class="brand-card-content">AUDI</div>
                </a>
                <a href="bentleyHome.jsp" class="brand-card">
                    <img src="image/bentley_logo.png" alt="Brand 4" class="brand-logo">
                    <div class="brand-card-content">Bentley</div>
                </a>
                <a href="bmwHome.jsp" class="brand-card">
                    <img src="image/bmw_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">BMW</div>
                </a>
    
                <a href="lamborghiniHome.jsp" class="brand-card">
                    <img src="image/lamborghini_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Lamborghini</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/Bugatti_logo.jpg" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Bugatti</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/chevrolet_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/dodge_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/farrari.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/honda_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/jaguar_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/jeep_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/koenigsegg_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/lexus_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/maserati_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/mazda_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/mclaren_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/mercedes_benz_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                
              
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/mitsubishi_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/Mustang_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/nissan_gtr_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/nissan_nismo_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/pagani_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/ford_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/rolls_royce_logo.jpg" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/toyota_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/volvo_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/wmotors_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a>
                <a href="brand5-details.jsp" class="brand-card">
                    <img src="image/zenvo_logo.png" alt="Brand 5" class="brand-logo">
                    <div class="brand-card-content">Brand 5: Description</div>
                </a> 
               
            </div>
        </div>
    </div>
    <!-- Footer Section -->
    <footer class="footer-section">
        <div class="footer-content">
            <p>&copy; 2024 Car Showroom Management. All Rights Reserved.</p>
            <div class="footer-links">
                <a href="privacy-policy.jsp">Privacy Policy</a>
                <a href="terms-conditions.jsp">Terms & Conditions</a>
                <a href="contact.jsp">Contact Us</a>
            </div>
        </div>
    </footer>
</body>

</html>
