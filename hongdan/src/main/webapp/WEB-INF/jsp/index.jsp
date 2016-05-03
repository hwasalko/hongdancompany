<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="kr">

<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />

<body class="wide">
 
  <jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
 
  <div class="wrapper">
    
    <jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />



    <section id="slider" class="no-padding">
        <div id="slider-carousel" class="boxed-slider">
            <div style="background-image:url('images/main/main_bg1.jpg');" class="owl-bg-img">
                <div class="container container-fullscreen">
                    <div class="text-middle slider-content">
                        <div class="text-center text-light">
                            <h4>Hongdan Company 1st Auto</h4>
                            <h1 class="text-uppercase">Hongdan Company</h1>
                            <h1 >1st Auto</h1>
                            <i class="fa fa-cutlery"></i>
                            <p>OPENING HOURS </p>
                            <p>Monday - Friday: <span>08:00 A.M. - 23:00 P.M.</span></p>
                            <p>Monday - Friday: <span>08:00 A.M. - 23:00 P.M.</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div style="background-image:url('images/main/main_bg2.jpg');" class="owl-bg-img">
                <div class="container container-fullscreen">
                    <div class="text-middle slider-content">
                        <div class="text-center text-light">
                            <h4>Everything, Easy, One stop</h4>
                            <h1 class="text-uppercase">Auto Total Service</h1>
                            <a href="#" class="button border rounded transparent"><strong>CALL US: 1234 0404</strong></a>
                        </div>
                    </div>
                </div>
            </div>
            <div style="background-image:url('images/main/main_bg3.jpg');" class="owl-bg-img">
                <div class="container container-fullscreen">
                    <div class="text-middle slider-content">
                        <div class="text-center text-light">
                            <h4>The Real</h4>
                            <h1 class="text-uppercase">Best Partner</h1>
                            <p>
                                212 Ave, Brooklyn, NewYork <br />
                                Since January 17, 2014
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="discover">
        <div class="container">
            <div class="heading heading-center m-b-40" data-animation="fadeInUp">
                <h2><span>Discover</span> OUR STORY</h2>
                <span class="lead">Create amam ipsum dolor sit amet, consectetur adipiscing elit.</span>
            </div>
            <div class="row" data-animation="fadeInUp">
                <div class="col-md-3 col-sm-3">
                    <img class="img-responsive" src="images/food1.jpg" alt="Food">
                </div>
                <div class="col-md-3 col-sm-3">
                    <img class="img-responsive" src="images/food2.jpg" alt="Girl">
                </div>
                <div class="col-md-6 col-sm-6">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean diam dolor, tincidunt sit amet imperdiet viverra, accumsan at sem. Integer felis enim, aliquam id blandit ut, imperdiet vel nulla. Pellentesque et ex blandit, vehicula dui nec, facilisis magna. Mauris scelerisque ipsum sit amet vulputate lobortis. Duis blandit, nibh ac posuere placerat, mi leo pellentesque arcu, ac dictum odio lorem a purus. Etiam ac ipsum eu dolor eleifend feugiat.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean diam dolor, tincidunt sit amet imperdiet viverra, accumsan at sem. Integer felis enim, aliquam id blandit ut, imperdiet vel nulla. Pellentesque et ex blandit, vehicula dui nec, facilisis magna. Mauris scelerisque ipsum sit amet vulputate lobortis. Duis blandit, nibh ac posuere placerat, mi leo pellentesque arcu, ac dictum odio lorem a purus. Etiam ac ipsum eu dolor eleifend feugiat.</p>
                    <a href="#" class="button border rounded red"><strong>More About US</strong></a>
                </div>
            </div>
        </div>
    </section>

    <section class="p-b-0 bkp-01">
        <div class="container">
           <div class="delievery">
             <h2><font color="black">FAST DELIVERY</font></h2>
             <p>Sollicitudin vitae nibh moresa at magna eu augue semper.</p>
             <a href="#" class="button border rounded transparent"><strong>CALL US: 1234 0404</strong></a>
           </div>
        </div>
    </section>


    <section class="background-grey">
        <div class="container">
            <div class="heading heading-center m-b-40" data-animation="fadeInUp">
                <h2>Our Features</h2>
                <span class="lead">Create amam ipsum dolor sit amet, consectetur adipiscing elit.</span>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <div class="icon-box medium">
                        <div class="icon">
                            <a href="#">
                                <i class="flaticon-heating5"></i>
                            </a>
                        </div>
                        <h4 class="subtitle">Hot Fish</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="icon-box medium">
                        <div class="icon">
                            <a href="#">
                                <i class="flaticon-food32"></i>
                            </a>
                        </div>
                        <h4 class="subtitle">Hot Fish</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="icon-box medium">
                        <div class="icon">
                            <a href="#">
                                <i class="flaticon-soup4"></i>
                            </a>
                        </div>
                        <h4 class="subtitle">Hot Fish</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="icon-box medium">
                        <div class="icon">
                            <a href="#">
                                <i class="flaticon-pizza4"></i>
                            </a>
                        </div>
                        <h4 class="subtitle">Hot Fish</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="icon-box medium">
                        <div class="icon">
                            <a href="#">
                                <i class="flaticon-covered16"></i>
                            </a>
                        </div>
                        <h4 class="subtitle">Hot Fish</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="icon-box medium">
                        <div class="icon">
                            <a href="#">
                                <i class="flaticon-plate7"></i>
                            </a>
                        </div>
                        <h4 class="subtitle">Hot Fish</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bkp-02">
        <div class="container">
            <div class="heading heading-center m-b-40" data-animation="fadeInUp">
                <h2 class="color-white">CHEF SELECTION'S MENU</h2>
                <span class="lead color-white">Create amam ipsum dolor sit amet, consectetur adipiscing elit.</span>
            </div>
            <div class="menu-area">
                <div class="row text-center">
                    <div class="col-md-6">
                        <div class="chef-menu-wrapper">
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/chef/food-p1.jpg">
                                <div class="w3-menu-top">
                                    <h3>MINOSHI</h3>
                                    <h5 class="colorf">$9.70</h5>
                                </div>
                                <div class="w3-menu-dts">Verno slices, Dolre oil, Green onions, Mushroom, Tomatoes</div>
                            </div>
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/chef/food-p1.jpg">
                                <div class="w3-menu-top">
                                    <h3>MINOSHI</h3>
                                    <h5 class="colorf">$9.70</h5>
                                </div>
                                <div class="w3-menu-dts">Verno slices, Dolre oil, Green onions, Mushroom, Tomatoes</div>
                            </div>
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/chef/food-p1.jpg">
                                <div class="w3-menu-top">
                                    <h3>MINOSHI</h3>
                                    <h5 class="colorf">$9.70</h5>
                                </div>
                                <div class="w3-menu-dts">Verno slices, Dolre oil, Green onions, Mushroom, Tomatoes</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="chef-menu-wrapper">
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/chef/food-p1.jpg">
                                <div class="w3-menu-top">
                                    <h3>MINOSHI</h3>
                                    <h5 class="colorf">$9.70</h5>
                                </div>
                                <div class="w3-menu-dts">Verno slices, Dolre oil, Green onions, Mushroom, Tomatoes</div>
                            </div>
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/chef/food-p1.jpg">
                                <div class="w3-menu-top">
                                    <h3>MINOSHI</h3>
                                    <h5 class="colorf">$9.70</h5>
                                </div>
                                <div class="w3-menu-dts">Verno slices, Dolre oil, Green onions, Mushroom, Tomatoes</div>
                            </div>
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/chef/food-p1.jpg">
                                <div class="w3-menu-top">
                                    <h3>MINOSHI</h3>
                                    <h5 class="colorf">$9.70</h5>
                                </div>
                                <div class="w3-menu-dts">Verno slices, Dolre oil, Green onions, Mushroom, Tomatoes</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="parallax p-t-100 p-b-100">
        <div class="container">
            <div class="heading heading-center m-b-40" data-animation="fadeInUp">
                <h2>Facts About US</h2>
                <span class="lead">Create amam ipsum dolor sit amet, consectetur adipiscing elit.</span>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="text-center block-count-box">
                        <i class="icon-counter li_food" style="color:#d0ae5e"></i>
                        <span class="max-count">136</span>
                        <h5>Unique Meals in Menu</h5>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="text-center block-count-box">
                        <i class="icon-counter li_like" style="color:#d0ae5e"></i>
                        <span class="max-count">1900</span>
                        <h5>Satisfied Customers on facebook</h5>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="text-center block-count-box">
                        <i class="icon-counter li_bulb" style="color:#d0ae5e"></i>
                        <span class="max-count">18</span>
                        <h5>Mew Recipe per Month</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bkp-03 special-offer">
        <div class="container">
           <div class="row">
               <div class="col-md-5">
                   <img alt="" class="img-responsive" src="images/burger.png">
               </div>
               <div class="col-md-7">
                   <h4><span>Today Deals</span>Everyday Affordable Value</h4>
                   <p>Best Dinner Recipes for main Dishes</p>
                   <a href="#" class="button border rounded red"><strong>CALL US: 1234 0404</strong></a>
               </div>
           </div>
        </div>
    </section>


    <section>
       <div class="container">
           <div class="heading heading-center m-b-40">
               <h2>TESTIMONIAL</h2>
               <span class="lead">Consectetur adipiscing elit. amam ipsum dolor sit amet.</span>
           </div>
           <hr class="space">
           <div class="carousel" data-carousel-col="1" data-carousel-dots="true" data-isotope-item="testimonial">
               <div class="testimonial">
                   <div class="testimonial-description">
                       <p>The world is a dangerous place to live; not because of the people who are evil, but because of the people who don't do anything about it.</p>
                   </div>
                   <div class="testimonial-image">
                       <img class="round" src="images/team/4.jpg" alt="image">
                       <h4>MARK DOE</h4>
                       <p>CEO</p>
                   </div>
               </div>
               <div class="testimonial">
                   <div class="testimonial-description">
                       <p>Art is the only serious thing in the world. And the artist is the only person who is never serious.</p>
                   </div>
                   <div class="testimonial-image">
                       <img class="round" src="images/team/4.jpg" alt="image">
                       <h4>MARK DOE</h4>
                       <p>CEO</p>
                   </div>
               </div>
               <div class="testimonial">
                   <div class="testimonial-description">
                       <p>The world is a dangerous place to live; not because of the people who are evil, but because of the people who don't do anything about it.</p>
                   </div>
                   <div class="testimonial-image">
                       <img class="round" src="images/team/4.jpg" alt="image">
                       <h4>MARK DOE</h4>
                       <p>CEO</p>
                   </div>
               </div>
               <div class="testimonial">
                   <div class="testimonial-description">
                       <p>The world is a dangerous place to live; not because of the people who are evil, but because of the people who don't do anything about it.</p>
                   </div>
                   <div class="testimonial-image">
                       <img class="round" src="images/team/4.jpg" alt="image">
                       <h4>MARK DOE</h4>
                       <p>CEO</p>
                   </div>
               </div>
           </div>
       </div>
    </section>


    <section class="background-grey p-b-40">
       <div class="container">
            <div class="heading heading-center">
            <h2>BEST PARTNERSHIP</h2>
            <p>베스트 파트너를 통해 최고의 Total A/S 서비스를 제공합니다.</p>
       </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="image-box circle-image medium"> <img class="" src="images/team/c1.jpg" alt=""> </div>
                        <div class="image-box-description text-center">
                            <h4>홍길동</h4>
                            <p>수석 엔지니어</p>
                            <hr class="line">
                            <div>썬팅 전문업체</div>
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
                    <div class="image-box circle-image medium"> <img alt="" src="images/team/c2.jpg"> </div>
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
                    <div class="image-box circle-image medium"> <img src="images/team/c3.jpg" alt=""> </div>
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
                    <div class="image-box circle-image medium"> <img src="images/team/c5.jpg" alt=""> </div>
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


	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
    

  </div>
 
	<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />

</body>
</html>
