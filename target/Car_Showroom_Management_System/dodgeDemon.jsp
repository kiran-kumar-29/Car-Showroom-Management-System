<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dodge SRT Demon</title>
    <link rel="stylesheet" href="css/dodgeDemon.css">
</head>
<body>
<div class="container">
    <h1>Dodge SRT Demon</h1>
    <div class="slideshow-container">
        <div class="mySlides fade">
            <img src="image/dodge_demon.jpg" alt="Dodge SRT Demon 1" class="demon-image">
        </div>
        <div class="mySlides fade">
            <img src="image/dodge-demon-side.jpg" alt="Dodge SRT Demon 2" class="demon-image">
        </div>
        <div class="mySlides fade">
            <img src="image/dodge-demon-rear.jpg" alt="Dodge SRT Demon 3" class="demon-image">
        </div>
        <div class="mySlides fade">
            <img src="image/dodge-demon-interior.jpg" alt="Dodge SRT Demon 4" class="demon-image">
        </div>
        <div class="mySlides fade">
            <img src="image/dodge-demon-engine.jpg" alt="Dodge SRT Demon 5" class="demon-image">
        </div>
        <div class="mySlides fade">
            <img src="image/dodge-demon-night.jpg" alt="Dodge SRT Demon 6" class="demon-image">
        </div>

        <!-- Navigation buttons -->
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>

    <div class="specs">
        <h2>Specifications</h2>
        <ul>
            <li>Engine: Supercharged V8</li>
            <li>Power: 840 horsepower</li>
            <li>0-60 mph: 2.3 seconds</li>
            <li>Top speed: 168 mph</li>
        </ul>
    </div>

    <div class="description">
        <h2>Description</h2>
        <p>The Dodge SRT Demon is a high-performance muscle car designed for drag racing enthusiasts. With its monstrous V8 engine and aggressive styling, it delivers unmatched power and acceleration.</p>
    </div>

    <div class="design-features">
        <h2>Design Features</h2>
        <ul>
            <li>Aggressive stance with a wide body kit and hood scoop.</li>
            <li>Lightweight components to enhance speed and performance.</li>
            <li>Bold front fascia with iconic Dodge styling.</li>
            <li>High-performance interior with racing-inspired seats.</li>
        </ul>
    </div>

    <div class="performance-features">
        <h2>Performance Features</h2>
        <ul>
            <li>Drag Mode suspension for optimized launch control.</li>
            <li>Specialized drag radials for maximum grip on the track.</li>
            <li>High-output supercharger system for peak performance.</li>
            <li>Advanced cooling system for consistent performance during high-speed runs.</li>
        </ul>
    </div>

    <div class="technology">
        <h2>Technology</h2>
        <ul>
            <li>Infotainment system with performance telemetry display.</li>
            <li>High-quality audio system for an immersive sound experience.</li>
            <li>Driver assistance features for improved handling and safety.</li>
            <li>Customizable driving modes for street and track settings.</li>
        </ul>
    </div>
</div>

<!-- JavaScript for Slideshow functionality -->
<script>
    let slideIndex = 0;
    showSlides(slideIndex);

    function showSlides(n) {
        let slides = document.getElementsByClassName("mySlides");
        if (n >= slides.length) {slideIndex = 0}    
        if (n < 0) {slideIndex = slides.length - 1}
        
        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
        }
        slides[slideIndex].style.display = "block";  
    }

    function plusSlides(n) {
        slideIndex += n;
        showSlides(slideIndex);
    }
</script>
</body>
</html>
