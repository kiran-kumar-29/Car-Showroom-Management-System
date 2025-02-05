<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--=============== FAVICON ===============-->
        <link rel="shortcut icon" href="carImg/porche/favicon.png" type="image/x-icon">

        <!--=============== REMIX ICONS ===============-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

        <!--=============== SWIPER CSS ===============-->
        <link rel="stylesheet" href="css/swiper-bundle.min.css">

        <!--=============== CSS ===============-->
        <link rel="stylesheet" href="css/porche.css">

        <title>Car</title>
    </head>
    <body>
        <!--==================== HEADER ====================-->
        <header class="header" id="header">
            <nav class="nav container">
                <a href="#" class="nav__logo">
                    <i class="ri-steering-line"></i>
                    VK Motors
                </a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="#home" class="nav__link active-link">Home</a>
                        </li>
                        <li class="nav__item">
                            <a href="#about" class="nav__link">About</a>
                        </li>
                        <li class="nav__item">
                            <a href="#popular" class="nav__link">Popular</a>
                        </li>
                        <li class="nav__item">
                            <a href="#featured" class="nav__link">Featured</a>
                        </li>
                    </ul>

                    <div class="nav__close" id="nav-close">
                        <i class="ri-close-line"></i>
                    </div>
                </div>

                <!-- Toogle button -->
                <div class="nav__toogle" id="nav-toogle">
                    <i class="ri-menu-line"></i>
                </div>
            </nav>
        </header>

        <!--==================== MAIN ====================-->
        <main class="main">
            <!--==================== HOME ====================-->
            <section class="home section" id="home">
                <div class="shape shape__big"></div>
                <div class="shape shape__small"></div>

                <div class="home__container container grid">
                    <div class="home__data">
                        <h1 class="home__title">
                          AUDI
                        </h1>
                        Advancement through Technology

                        <h2 class="home__subtitle">
                            
                        </h2>

                        <h3 class="home__elec">
                            <i class="ri-flashlight-fill"></i> 
                        </h3>
                    </div>

                    <img src="image/audi_logo.png" alt="Home image" class="home__img">

                    <div class="home__car">
                        <div class="home__car-data">
                            <div class="home__car-icon">
                                <i class=""></i>
                            </div>

                            <h2 class="home__car-number">24°</h2>
                            <h3 class="home__car-name">TEMPERATURE</h3>
                        </div>
                        
                        <div class="home__car-data">
                            <div class="home__car-icon">
                                <i class=""></i>
                            </div>

                            <h2 class="home__car-number">873</h2>
                            <h3 class="home__car-name">MILEAGE</h3>
                        </div>

                        <div class="home__car-data">
                            <div class="home__car-icon">
                                <i class=""></i>
                            </div>

                            <h2 class="home__car-number">94%</h2>
                            <h3 class="home__car-name">BATTERY</h3>
                        </div>

                    </div>

                    <a href="#" class="home__button">START</a>
                </div>
            </section>

            <!--==================== ABOUT ====================-->
            <section class="about section" id="about">
                <div class="about__container container grid">
                    <div class="about__group">
                        <img src="carImg/audi/audi.jpg" alt="about image" class="about__img">

                        <div class="about__card">
                            <h3 class="about__card-title">2.500+</h3>
                            <p class="about__card-description">
                                Supercharges placed along popular routes
                            </p>
                        </div>
                    </div>

                    <div class="about__data">
                        <h2 class="section__title about__title">
                           AUDI:  <br> Advancement through Technology.
                        </h2>

                        <p class="about__description">
The tagline for Audi's S models, including the Audi S7 and others, is typically "Vorsprung durch Technik," which translates to "Advancement through Technology." This phrase reflects Audi's commitment to innovation and performance. However, specific marketing campaigns may feature different taglines emphasizing the sportiness and luxury of the S lineup. If you're looking for a particular model's tagline or campaign, let me know!                        </p>

                        <a href="#" class="button">Know More!!!</a>
                    </div>
                </div>
            </section>

            <!--==================== POPULAR ====================-->
            <section class="popular section" id="popular">
                <h2 class="section__title">
                    Choose Your Dream  <br> AUDI
                </h2>

                <div class="popular__container container swiper">
                    <div class="swiper-wrapper">
                        <article class="popular__card swiper-slide">
                            <div class="shape shape__smaller"></div>

                            <h2 class="popular__title">AUDI</h2>
                            <h3 class="popular__subtitle">R8</h3>

                            <img src="carImg/audi/r8.png" alt="popular image" class="popular__img">

                            <div class="popular__data">
                                <div class="popular__data-group">
                                    <i class="ri-dashboard-3-line"></i> 3.1 sec
                                </div>
                                <div class="popular__data-group">
                                    <i class="ri-funds-box-line"></i> 330 km/h
                                </div>
                                <div class="popular__data-group">
                                    <i class="ri-charging-pile-2-line"></i> 5.2-liter V10
                                </div>
                            </div>

                            <h3 class="popular__price">$175,900</h3>

                            <button class="button popular__button">
                                <i class="ri-shopping-bag-2-line"></i>
                            </button>
                        </article>
                        
                        <article class="popular__card swiper-slide">
                            <div class="shape shape__smaller"></div>

                            <h2 class="popular__title">AUDI</h2>
                            <h3 class="popular__subtitle">Q8-E-Tron</h3>

                            <img src="carImg/audi/q8-etron.png" alt="popular image" class="popular__img">

                            <div class="popular__data">
                                <div class="popular__data-group">
                                    <i class="ri-dashboard-3-line"></i> 5.6 sec
                                </div>
                                <div class="popular__data-group">
                                    <i class="ri-funds-box-line"></i> 200 km/h
                                </div>
                                <div class="popular__data-group">
                                    <i class="ri-charging-pile-2-line"></i>  Dual electric motors
                                </div>
                            </div>

                            <h3 class="popular__price">$114,900</h3>

                            <button class="button popular__button">
                                <i class="ri-shopping-bag-2-line"></i>
                            </button>
                        </article>

                        <article class="popular__card swiper-slide">
                            <div class="shape shape__smaller"></div>

                            <h2 class="popular__title">AUDI</h2>
                            <h3 class="popular__subtitle">RS7-Sportback</h3>

                            <img src="carImg/audi/Audi_RS7_Sportback.png" alt="popular image" class="popular__img">

                            <div class="popular__data">
                                <div class="popular__data-group">
                                    <i class="ri-dashboard-3-line"></i>3.6 sec
                                </div>
                                <div class="popular__data-group">
                                    <i class="ri-funds-box-line"></i>305 km/h
                                </div>
                                <div class="popular__data-group">
                                    <i class="ri-charging-pile-2-line"></i>4.0-liter V8<br>twin-turbocharged
                                </div>
                            </div>

                            <h3 class="popular__price">$150,900</h3>

                            <button class="button popular__button">
                                <i class="ri-shopping-bag-2-line"></i>
                            </button>
                        </article>

                        <article class="popular__card swiper-slide">
                            <div class="shape shape__smaller"></div>

                            <h2 class="popular__title">AUDI</h2>
                            <h3 class="popular__subtitle">E-Tron</h3>

                            <img src="carImg/audi/e-tron.png" alt="popular image" class="popular__img">

                            <div class="popular__data">
                                <div class="popular__data-group">
                                    <i class="ri-dashboard-3-line"></i>5.6sec
                                </div>
                                <div class="popular__data-group">
                                    <i class="ri-funds-box-line"></i>200 km/h
                                </div>
                                <div class="popular__data-group">
                                    <i class="ri-charging-pile-2-line"></i>300kW<br>Dual electric motors
                                </div>
                            </div>

                            <h3 class="popular__price">$125,900</h3>

                            <button class="button popular__button">
                                <i class="ri-shopping-bag-2-line"></i>
                            </button>
                        </article>

                       
                    </div>

                    <div class="swiper-pagination"></div>
                </div>
            </section>

            <!--==================== FEATURES ====================-->
         <!--    <section class="features section">
                <h2 class="section__title">
                    More Features
                </h2>

                <div class="features__container container grid">
                    <div class="features__group">
                        <img src="carImg/porche/features.png" alt="Features image" class="features__img">
                    
                        <div class="features__card features__card-1">
                            <h3 class="features__card-title">800v</h3>
                            <p class="features__card-description">Turbo <br> Chargin</p>
                        </div>
                        <div class="features__card features__card-2">
                            <h3 class="features__card-title">350</h3>
                            <p class="features__card-description">Km <br> Range</p>
                        </div>
                        <div class="features__card features__card-3">
                            <h3 class="features__card-title">480</h3>
                            <p class="features__card-description">Km <br> Travel</p>
                        </div>
                    </div>
                </div>

                <img src="carImg/porche/map.svg" alt="Features map" class="features__map">
            </section>  --> 

            <!--==================== FEATURED ====================-->
            <section class="featured section" id="featured">
                <h2 class="section__title">
                    Featured Luxury Cars 
                </h2>

                <div class="featured__container container">
                    <ul class="featured__filters">
                        <li>
                            <button class="featured__item active-featured" data-filter="all">
                                <span>All</span>
                            </button>
                        </li>
                        <li>
                            <button class="featured__item" data-filter=".tesla">
                                <img src="carImg/porche/logo3.png" alt="Featured image">
                            </button>
                        </li>
                        <li>
                            <button class="featured__item" data-filter=".audi">
                                <img src="carImg/porche/logo2.png" alt="Featured image">
                            </button>
                        </li>
                        <li>
                            <button class="featured__item" data-filter=".porsche">
                                <img src="carImg/porche/logo1.png" alt="Featured image">
                            </button>
                        </li>
                    </ul>

                    <div class="featured__content grid">
                        <article class="featured__card mix tesla">
                            <div class="shape shape__smaller"></div>

                            <h2 class="featured__title">Tesla</h2>

                            <h3 class="featured__subtitle">Model X</h3>

                            <img src="carImg/porche/featured1.png" alt="Featured image" class="featured__img">

                            <h3 class="featured__price">$98,900</h3>

                            <button class="button featured__button">
                                <i class="ri-shopping-bag-2-line"></i>
                            </button>
                        </article>
                        
                        <article class="featured__card mix tesla">
                            <div class="shape shape__smaller"></div>

                            <h2 class="featured__title">Tesla</h2>

                            <h3 class="featured__subtitle">Model 3</h3>

                            <img src="assets/img/featured2.png" alt="Featured image" class="featured__img">

                            <h3 class="featured__price">$45,900</h3>

                            <button class="button featured__button">
                                <i class="ri-shopping-bag-2-line"></i>
                            </button>
                        </article>
                        
                        <article class="featured__card mix audi">
                            <div class="shape shape__smaller"></div>

                            <h2 class="featured__title">Audi</h2>

                            <h3 class="featured__subtitle">E-tron</h3>

                            <img src="assets/img/featured3.png" alt="Featured image" class="featured__img">

                            <h3 class="featured__price">$175,900</h3>

                            <button class="button featured__button">
                                <i class="ri-shopping-bag-2-line"></i>
                            </button>
                        </article>
                        
                        <article class="featured__card mix porsche">
                            <div class="shape shape__smaller"></div>

                            <h2 class="featured__title">Porsche</h2>

                            <h3 class="featured__subtitle">Boxster 987</h3>

                            <img src="assets/img/featured4.png" alt="Featured image" class="featured__img">

                            <h3 class="featured__price">$126,900</h3>

                            <button class="button featured__button">
                                <i class="ri-shopping-bag-2-line"></i>
                            </button>
                        </article>
                        
                        <article class="featured__card mix porsche">
                            <div class="shape shape__smaller"></div>

                            <h2 class="featured__title">Porsche</h2>

                            <h3 class="featured__subtitle">Panamera</h3>

                            <img src="carImg/porche/featured1.png" alt="Featured image" class="featured__img">

                            <h3 class="featured__price">$126,900</h3>

                            <button class="button featured__button">
                                <i class="ri-shopping-bag-2-line"></i>
                            </button>
                        </article>
                        
                    </div>
                </div>
            </section>

            <!--==================== OFFER ====================
            <section class="offer section">
                <div class="offer__container container grid">
                    <img src="carImg/porche/offer-bg.png" alt="Offer background" class="offer__bg">

                    <div class="offer__data">
                        <h2 class="section__title offer__title">
                            Do You Want To Receive <br> Special Offers?
                        </h2>

                        <p class="offer__description">
                            Be the first to receive all the information about our 
                            products and new cars by email by subscribing to our 
                            mailing list.
                        </p>

                        <a href="#" class="button">
                            Subscribe Now
                        </a>
                    </div>

                    <img src="carImg/porche/offer.png" alt="Offer image" class="offer__img">
                </div>
            </section> -->

            <!--==================== LOGOS ====================-->  
            <section class="logos section">
                <div class="logos__container container grid">
                    <div class="logos__content">
                        <img src="carImg/porche/logo1.png" alt="Logo image" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="carImg/porche/logo2.png" alt="Logo image" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="carImg/porche/logo3.png" alt="Logo image" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="carImg/porche/logo4.png" alt="Logo image" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="carImg/porche/logo5.png" alt="Logo image" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="carImg/porche/logo6.png" alt="Logo image" class="logos__img">
                    </div>
                </div>
            </section>
        </main>

        <!--==================== FOOTER ====================-->
        <footer class="footer section">
            <div class="shape shape__big"></div>
            <div class="shape shape__small"></div>

            <div class="footer__container container grid">
                <div class="footer__content">
                    <a href="#" class="footer__logo">
                        <i class="ri-steering-line"></i> Elecar
                    </a>
                    <p class="footer__description">
                        We offer the best electric cars of <br> 
                        the most recognized brands in <br> 
                        the world.
                    </p>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">
                        Company
                    </h3>

                    <ul class="footer__links">
                        <li>
                            <a href="#" class="footer__link">About</a>
                        </li>
                        <li>
                            <a href="#" class="footer__link">Cars</a>
                        </li>
                        <li>
                            <a href="#" class="footer__link">History</a>
                        </li>
                        <li>
                            <a href="#" class="footer__link">Shop</a>
                        </li>
                    </ul>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">
                        Information
                    </h3>

                    <ul class="footer__links">
                        <li>
                            <a href="#" class="footer__link">Request a quote</a>
                        </li>
                        <li>
                            <a href="#" class="footer__link">Find a dealer</a>
                        </li>
                        <li>
                            <a href="#" class="footer__link">Contact us</a>
                        </li>
                        <li>
                            <a href="#" class="footer__link">Services</a>
                        </li>
                    </ul>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">
                        Follow us
                    </h3>

                    <ul class="footer__social">
                        <a href="https://www.facebook.com/" target="_blank" class="footer__social-link">
                            <i class="ri-facebook-fill"></i>
                        </a>
                        <a href="https://www.instagram.com/" target="_blank" class="footer__social-link">
                            <i class="ri-instagram-line"></i>
                        </a>
                        <a href="https://twitter.com/
                        " target="_blank" class="footer__social-link">
                            <i class="ri-twitter-line"></i>
                        </a>
                    </ul>
                </div>
            </div>

            <span class="footer__copy">
                &#169; All rigths reserved
            </span>
        </footer>


        <!--========== SCROLL UP ==========-->
        <a href="#" class="scrollup" id="scroll-up">
            <i class="ri-arrow-up-line"></i>
        </a>

        <!--=============== SCROLL REVEAL ===============-->
        <script src="js/scrollreveal.min.js"></script>

        <!--=============== SWIPER JS ===============-->
        <script src="js/swiper-bundle.min.js"></script>

        <!--=============== MIXITUP JS ===============-->
        <script src="js/mixitup.min.js"></script>

        <!--=============== MAIN JS ===============-->
        <script src="js/main.js"></script>
    </body>
</html>
