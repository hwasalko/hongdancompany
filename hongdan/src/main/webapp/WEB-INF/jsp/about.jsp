<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

<jsp:include page="include/inc_head.jsp" flush="true" />

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
                <h1>ABOUT US</h1>
                <span>Work is easy when you have all tools around you!</span>
            </div>
        </div>
    </section>


    <section class="p-b-10">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="heading heading text-left">
                        <h2>THE COMPANY</h2>
                        <span class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor. </span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="heading heading text-left">
                        <h2>Our Vision</h2>
                        <span class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor. </span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="background-grey">
        <div class="container">
            <div class="heading heading-center">
                <h2>OUR TEAM</h2>
                <span class="lead">Create amaLorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="image-box circle-image small">
                        <img class="" src="images/team/c1.jpg" alt="">
                    </div>
                    <div class="image-box-description text-center">
                        <h4>Mark Henry</h4>
                        <p>GRILL  CHEF</p>
                        <hr class="line">
                        <div>Nullam vulputate euis od urna non pharetra thasellus</div>
                        <div class="social-icons social-icons-border m-t-10 text-center">
                            <ul>
                                <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="social-google"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="social-pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li class="social-vimeo"><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
                                <li class="social-linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="image-box circle-image small">
                        <img class="" src="images/team/c2.jpg" alt="">
                    </div>
                    <div class="image-box-description text-center">
                        <h4>Jhon Loe</h4>
                        <p>FISH CHEF</p>
                        <hr class="line">
                        <div>Nullam vulputate euis od urna non pharetra thasellus</div>
                        <div class="social-icons social-icons-border m-t-10 text-center">
                            <ul>
                                <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="social-google"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="social-pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li class="social-vimeo"><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
                                <li class="social-linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="image-box circle-image small">
                        <img src="images/team/c3.jpg" alt="">
                    </div>
                    <div class="image-box-description text-center ">
                        <h4>MARK DOE</h4>
                        <p>Cafe Chef</p>
                        <hr class="line">
                        <div>Nullam vulputate euis od urna non pharetra thasellus</div>
                        <div class="social-icons social-icons-border m-t-10 text-center">
                            <ul>
                                <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="social-google"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="social-pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li class="social-vimeo"><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
                                <li class="social-linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="image-box circle-image small">
                        <img src="images/team/c5.jpg" alt="">
                    </div>
                    <div class="image-box-description text-center">
                        <h4>SARAH DOE</h4>
                        <p>Bakery Chef</p>
                        <hr class="line">
                        <div>Nullam vulputate euis od urna non pharetra thasellus</div>
                        <div class="social-icons social-icons-border m-t-10 text-center">
                            <ul>
                                <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="social-google"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="social-pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li class="social-vimeo"><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
                                <li class="social-linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="p-b-10">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="carousel portfolio-basic-image" data-carousel-col="1">
                        <img alt="image" src="images/menus/1.jpg">
                        <img alt="image" src="images/menus/2.jpg">
                        <img alt="image" src="images/menus/3.jpg">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="heading heading text-left">
                        <h2>Our Vision</h2>
                        <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor. </span>
                        <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor. </span>
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
