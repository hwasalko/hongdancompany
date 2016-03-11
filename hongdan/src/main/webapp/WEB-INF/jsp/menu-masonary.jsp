<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<title>Canteen | Restaurant Template</title>
 
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/fontawesome/css/font-awesome.min.css" type="text/css" rel="stylesheet">
<link href="vendor/animateit/animate.min.css" rel="stylesheet">
 
<link href="vendor/owlcarousel/owl.carousel.css" rel="stylesheet">
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<link rel="stylesheet" href="icons/flaticon.css">
<link href="css/theme-base.css" rel="stylesheet">
<link href="css/theme-elements.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
 <!--[if lt IE 9]>
 <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
 
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,800,700,600%7CRaleway:100,300,600,700,800" rel="stylesheet" type="text/css"/>
 
<link rel="stylesheet" type="text/css" href="css/custom.css" media="screen"/>
</head>
<body class="wide">
 
  <div class="loader-wrapper">
    <div class="loader">
        <img src="images/logo-sm.png" alt="Loading">
        <span class="loader-title">Loading...</span>
    </div>
  </div>
 
  <div class="wrapper">
    <header id="header" class="">
      <div id="header-wrap">
        <div class="container">
            <div id="logo">
                <a href="#" class="logo" data-dark-logo="images/logo-dark.png">
                <img src="images/logo.png" alt="Logo">
                </a>
            </div>
            <div class="nav-main-menu-responsive">
                <button data-toggle="collapse" data-target=".main-menu-collapse"><i class="fa fa-navicon"></i></button>
            </div>
            <div id="top-search">
                <a id="top-search-trigger">
                    <i class="fa fa-search"></i>
                    <i class="fa fa-close"></i>
                </a>
                <form action="#" method="get">
                    <input type="text" name="q" class="form-control" value="" placeholder="Start typing & press  &quot;Enter&quot;">
                </form>
            </div>
            <div class="navbar-collapse collapse main-menu-collapse navigation-wrap">
                <div class="container">
                    <nav id="mainMenu" class="main-menu mega-menu">
                        <ul class="main-menu nav nav-pills">
                            <li class="dropdown"><a href="index.html" class="nav-to">Home</a></li>
                            <li class="dropdown"> <a href="about.html" class="nav-to">About</a> </li>
                            <li class="dropdown"> <a href="services.html" class="nav-to">Service</a> </li>
                            <li class="dropdown"> <a href="#">Menus <i class="fa fa-angle-down"></i> </a>
                                <ul class="dropdown-menu">
                                    <li> <a href="menu.html">Basic</a> </li>
                                    <li> <a href="menu-masonary.html">Masonary</a> </li>
                                    <li> <a href="menu-without-parallax.html">Without Parallex</a> </li>
                                </ul>
                            </li>
                            <li class="dropdown"> <a href="reservation.html" class="nav-to">Reservation</a> </li>
                            <li class="dropdown"> <a href="contact.html" class="nav-to">Contact us</a> </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
      </div>
    </header>

    <section class="menu-top-banner page-title-center">
        <div class="container">
            <div class="page-title col-md-8">
                <h1>Menu</h1>
                <span>Your Taste is Our Goal</span>
            </div>
        </div>
    </section>


    <section class="p-b-0" id="section-about">
      <div class="container">
          <div class="heading heading-center m-b-40" data-animation="fadeInUp">
              <h2>WELCOME TO CANTEEN</h2>
              <span class="lead">Create amam ipsum dolor sit amet, consectetur adipiscing elit.</span>
          </div>
          <div class="row" data-animation="fadeInUp">
              <div class="col-md-12">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean diam dolor, tincidunt sit amet imperdiet viverra, accumsan at sem. Integer felis enim, aliquam id blandit ut, imperdiet vel nulla. Pellentesque et ex blandit, vehicula dui nec, facilisis magna. Mauris scelerisque ipsum sit amet vulputate lobortis. Duis blandit, nibh ac posuere placerat, mi leo pellentesque arcu, ac dictum odio lorem a purus. Etiam ac ipsum eu dolor eleifend feugiat.</p>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean diam dolor, tincidunt sit amet imperdiet viverra, accumsan at sem. Integer felis enim, aliquam id blandit ut, imperdiet vel nulla. Pellentesque et ex blandit, vehicula dui nec, facilisis magna. Mauris scelerisque ipsum sit amet vulputate lobortis. Duis blandit, nibh ac posuere placerat, mi leo pellentesque arcu, ac dictum odio lorem a purus. Etiam ac ipsum eu dolor eleifend feugiat.</p>
              </div>
          </div>
      </div>
    </section>

    <section id="content" class="background-grey">
        <div class="container portfolio">

        <div class="filter-active-title">Show All</div>
        <ul class="portfolio-filter" id="portfolio-filter" data-isotope-nav="isotope">
            <li class="ptf-active" data-filter="*">Show All</li>
            <li data-filter=".breakfast">Breakfast</li>
            <li data-filter=".lunch">Lunch</li>
            <li data-filter=".dinner">Dinner</li>
            <li data-filter=".coffee">Coffee</li>
            <li data-filter=".desert">Desert</li>
        </ul>


    <div id="isotope" class="isotope portfolio-items" data-isotope-item-space="3" data-isotope-mode="masonry" data-isotope-col="3" data-isotope-item=".portfolio-item">
        <div class="portfolio-item desert breakfast">
            <div class="portfolio-image effect social-links">
                <img src="images/menus/1.jpg" alt="">
                <div class="image-box-content">
                    <p>
                        <a href="images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
                    </p>
                </div>
            </div>
            <div class="portfolio-description">
                <h4 class="title">Fast Skateboard</h4>
            </div>
            <div class="menu-price">
                <p>$14</p>
            </div>
            <div class="portfolio-details">
                <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
            </div>
        </div>
        <div class="portfolio-item desert dinner">
            <div class="portfolio-image effect social-links">
                <img src="images/menus/1.jpg" alt="">
                <div class="image-box-content">
                    <p>
                        <a href="images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
                    </p>
                </div>
            </div>
            <div class="portfolio-description">
                <h4 class="title">Working hard</h4>
            </div>
            <div class="menu-price">
                <p>$14</p>
            </div>
            <div class="portfolio-details">
                <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
            </div>
        </div>
        <div class="portfolio-item desert dinner">
            <div class="portfolio-image effect social-links">
                <img src="images/menus/3.jpg" alt="">
                <div class="image-box-content">
                    <p>
                        <a href="images/menus/3.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
                    </p>
                </div>
            </div>
            <div class="portfolio-description">
                <h4 class="title">The feather man</h4>
            </div>
            <div class="menu-price">
                <p>$14</p>
            </div>
            <div class="portfolio-details">
                <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
            </div>
        </div>
        <div class="portfolio-item desert breakfast">
            <div class="portfolio-image effect social-links">
                <img src="images/menus/4.jpg" alt="">
                <div class="image-box-content">
                    <p>
                        <a href="images/menus/4.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
                    </p>
                </div>
            </div>
            <div class="portfolio-description">
                <h4 class="title">The long line</h4>
            </div>
            <div class="portfolio-details">
                <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
            </div>
        </div>
        <div class="portfolio-item lunch dinner">
            <div class="portfolio-image effect social-links">
                <img src="images/menus/21.jpg" alt="">
                <div class="image-box-content">
                    <p>
                        <a href="images/menus/21.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
                     </p>
                </div>
            </div>
            <div class="portfolio-description">
                <h4 class="title">Backwards</h4>
            </div>
            <div class="menu-price">
                <p>$14</p>
            </div>
            <div class="portfolio-details">
                <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
            </div>
        </div>
        <div class="portfolio-item desert breakfast lunch">
            <div class="portfolio-image effect social-links">
                <img src="images/menus/5.jpg" alt="">
                <div class="image-box-content">
                    <p>
                        <a href="images/menus/5.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
                     </p>
                </div>
            </div>
            <div class="portfolio-description">
                <h4 class="title">Disappointed horse</h4>
            </div>
            <div class="menu-price">
                <p>$14</p>
            </div>
            <div class="portfolio-details">
                <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
            </div>
        </div>
        <div class="portfolio-item desert breakfast">
            <div class="portfolio-image effect social-links">
                <img src="images/menus/22.jpg" alt="">
                <div class="image-box-content">
                    <p>
                        <a href="images/menus/22.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
                     </p>
                </div>
            </div>
            <div class="portfolio-description">
                <h4 class="title">Wire's</h4>
            </div>
            <div class="menu-price">
                <p>$14</p>
            </div>
            <div class="portfolio-details">
                <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
            </div>
        </div>
        <div class="portfolio-item desert coffee">
            <div class="portfolio-image effect social-links">
                <img src="images/menus/6.jpg" alt="">
                <div class="image-box-content">
                    <p>
                        <a href="images/menus/6.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
                    </p>
                </div>
            </div>
            <div class="portfolio-description">
                <h4 class="title">Forcing</h4>
            </div>
            <div class="menu-price">
                <p>$14</p>
            </div>
            <div class="portfolio-details">
                <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
            </div>
        </div>
        <div class="portfolio-item desert coffee lunch">
            <div class="portfolio-image effect social-links">
                <img src="images/menus/7.jpg" alt="">
                <div class="image-box-content">
                    <p>
                        <a href="images/menus/7.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
                    </p>
                </div>
            </div>
            <div class="portfolio-description">
                <h4 class="title">No words</h4>
            </div>
            <div class="menu-price">
                <p>$14</p>
            </div>
            <div class="portfolio-details">
                <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
            </div>
        </div>
    </div>

    </div>
        <hr class="space">
    </section>

    <footer class="background-dark text-grey bkp-04">
        <div class="footer-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="widget clearfix widget-categories">
                            <h4 class="widget-title">Our Services</h4>
                            <ul class="list list-arrow-icons">
                                <li> <a href="#" title="">Development </a> </li>
                                <li> <a href="#" title="">Branding </a> </li>
                                <li> <a href="#" title="">Marketing </a> </li>
                                <li> <a href="#" title="">Branding </a> </li>
                                <li> <a href="#" title="">Strategy solutions</a> </li>
                                <li> <a href="#" title="">Copywriting </a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="widget clearfix widget-categories">
                            <h4 class="widget-title">Blog categories</h4>
                            <ul class="list list-arrow-icons">
                                <li> <a href="#" title="">Development </a> </li>
                                <li> <a href="#" title="">Branding </a> </li>
                                <li> <a href="#" title="">Marketing </a> </li>
                                <li> <a href="#" title="">Branding </a> </li>
                                <li> <a href="#" title="">Strategy solutions</a> </li>
                                <li> <a href="#" title="">Copywriting </a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <h4 class="widget-title">Opening Times</h4>
                        <ul class="list list-arrow-icons">
                            <li>
                                <p>Monday
                                    <time datetime="00:01">1 pm - 10 pm</time>
                                </p>
                            </li>
                            <li>
                                <p>Tuesday
                                    <time datetime="00:01">1 pm - 10 pm</time>
                                </p>
                            </li>
                            <li>
                                <p>Wednesday
                                    <time datetime="00:01">1 pm - Midnight</time>
                                </p>
                            </li>
                            <li>
                                <p>Thursday
                                    <time datetime="00:01">1 pm - 10 pm</time>
                                </p>
                            </li>
                            <li>
                                <p>Friday
                                    <time datetime="00:01">1 pm - Midnight</time>
                                </p>
                            </li>
                            <li>
                                <p>Saturday <span class="label label-default">Closed</span></p>
                            </li>
                            <li>
                                <p>Sunday
                                    <time datetime="00:01">1 pm - 10 pm</time>
                                </p>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <div class="widget clearfix widget-contact-us" style="background-image: url('images/world-map.png'); background-position: 50% 55px; background-repeat: no-repeat">
                            <h4 class="widget-title">Contact us</h4>
                            <ul class="list-large list-icons">
                                <li><i class="fa fa-map-marker"></i>
                                    <strong>Address:</strong> 795 Folsom Ave, Suite 600
                                    <br>San Francisco, CA 94107</li>
                                <li><i class="fa fa-phone"></i><strong>Phone:</strong> (123) 456-7890 </li>
                                <li><i class="fa fa-clock-o"></i>Monday - Friday: <strong>08:00 - 22:00</strong>
                                    <br>Saturday, Sunday: <strong>Closed</strong>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-content">
            <div class="container">
                <div class="row">
                    <div class="copyright-text text-center">
                        &copy; 2015 Canteen - Restaurant Template. All Rights Reserved.
                    </div>
                </div>
            </div>
        </div>
    </footer>

  </div>
 
  <a class="gototop gototop-button" href="#"><i class="fa fa-chevron-up"></i></a>
 
  <script src="vendor/jquery/jquery-1.11.2.min.js"></script>
  <script src="vendor/plugins.js"></script>
  <script src="js/theme-functions.js"></script>
  <script src="js/custom.js"></script>
</body>
</html>
