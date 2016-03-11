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

    <section class="menu-top-banner background-2 page-title-center">
        <div class="container">
            <div class="page-title col-md-8">
                <h1>Contact Us</h1>
                <span>Get in touch</span>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h3 class="text-uppercase">Get In Touch</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum porttitor cursus. Duis nec nulla turpis. Nulla lacinia laoreet odio, non lacinia nisl malesuada vel. Aenean malesuada fermentum bibendum.</p>
                    <div class="m-t-30">
                        <div id="contact-form-result" class="alert alert-success fade in" role="alert">
                            <a href="#" class="close" data-dismiss="alert">&times;</a> We have <strong>successfully</strong> received your Message and will get Back to you as soon as possible.</div>
                            <form id="contact-form" name="contact-form" action="#" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Your Name</label>
                                        <input type="text" class="form-control required" name="senderName" placeholder="Enter name" id="name" aria-required="true" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email">Your Email</label>
                                        <input type="email" class="form-control" id="email" name="senderEmail" placeholder="Email" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="subject">Your Subject</label>
                                        <input type="text" class="form-control required" name="senderSubject" placeholder="Enter Subject" id="subject" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="comment">Your comment</label>
                                        <textarea class="form-control required" name="senderMessage" rows="9" placeholder="Enter comment" id="comment" required></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group text-center">
                                        <button class="btn btn-primary" type="submit"><i class="fa fa-paper-plane"></i>&nbsp;Send message</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <h3 class="text-uppercase">Address & Map</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <address>
                                <strong>Polo, Inc.</strong><br>
                                795 Folsom Ave, Suite 600<br>
                                San Francisco, CA 94107<br>
                                <abbr title="Phone">P:</abbr> (123) 456-7890
                            </address>
                        </div>
                        <div class="col-md-6">
                            <address>
                                <strong>Polo Office</strong><br>
                                795 Folsom Ave, Suite 600<br>
                                San Francisco, CA 94107<br>
                                <abbr title="Phone">P:</abbr> (123) 456-7890
                            </address>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
