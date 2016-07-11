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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<!--  
    <section class="discover">
        <div class="container">
            <div class="heading heading-center m-b-40" data-animation="fadeInUp">
                <h2>INTRODUCE OUR COMPANY</h2>
                <span class="lead">Hongdan Company 1st AUTO를 소개합니다.</span>
            </div>
            <div class="row" data-animation="fadeInUp">
                <div class="col-md-3 col-sm-3">
                    <img class="img-responsive" src="images/food1.jpg" alt="Food">
                </div>
                <div class="col-md-3 col-sm-3">
                    <img class="img-responsive" src="images/food2.jpg" alt="Girl">
                </div>
                <div class="col-md-6 col-sm-6">
                    <p>안녕하세요....안녕하세요....안녕하세요....안녕하세요....안녕하세요....안녕하세요....안녕하세요....안녕하세요....안녕하세요....</p>
                    <p>Hongdan Company에 오신걸 환영합니다.Hongdan Company에 오신걸 환영합니다.Hongdan Company에 오신걸 환영합니다.Hongdan Company에 오신걸 환영합니다.Hongdan Company에 오신걸 환영합니다.</p>
                    <a href="/about" class="button border rounded red"><strong>More About US</strong></a>
                </div>
            </div>
        </div>
    </section>
-->

	<section class="discover">
        <div class="container">
            <div class="heading heading-center m-b-40" data-animation="fadeInUp">
                <h2>INTRODUCE OUR COMPANY</h2>
            </div>
            <div class="row" data-animation="fadeInUp">
                <div class="col-md-offset-md1 col-md-4 col-sm-offset-1 col-sm-4">
                    <img class="img-responsive" src="images/about/company_2.jpg" >
                    <br>
                    <img class="img-responsive" src="images/about/company_3.jpg" >
                </div>
                <div class="col-md-6 col-sm-6">
                    	<p style= "font-family: 'Nanum Gothic';">
                        	1st AUTO는 우리나라 최초로 <span class="text-primary" style="font-weight: bold;">차량 종합 관리 대행 서비스</span>를 제공합니다.
                        </p>	
                        
                        <p style= "font-family: 'Nanum Gothic';">
                        	1st AUTO는 고객분들께서 차량 유지관리 시 부담해야 하는 소중한 시간과 각종 스트레스에서 온전히 중요한 업무와 일상에 전념할 수 있도록 도와드릴 뿐 아니라, 소중한 고객의 차량이 언제나 최상의 컨디션을 유지하게 해 드립니다.
                        </p>
                        
                        <p style= "font-family: 'Nanum Gothic';">	
                        	수입차 시장은 급성장하고 있지만 각 수입사와 딜러의 A/S 센터나 고객 서비스는 차량 판매대수에 비해 질적, 양적으로 모두 부족한 것이 사실입니다. 또한, 차량은 기계적 특성상 꾸준히 관리해주고 점검해주어야 하는데 수입차의 작업은 국산차에 비하여 많은 시간을 요구하고 그 부품값이나 공임 또한 상대적으로 고가이기 때문에 소유자는 차량 유지에 있어서 시간적, 정신적, 경제적으로 부담스러울 수 밖에 없습니다.
                        </p>	
                        
                        <p style= "font-family: 'Nanum Gothic';">
                        	정식 A/S 센터는 일반 유지관리 작업에 있어서도 사전 예약을 해야하고, 정해진 시간에 입고하여도 오랜 대기 시간이 걸리며 규정된 유지관리 작업 외(사고차 작업 등)에는 많은 비용이 소요 됩니다. 하지만 비용문제 때문에 상대적으로 저렴한 외부 정비 업체를 이용하기에는 불충분하고 불투명한 정보, 오너의 부족한 경험과 선입견으로 인해 ...
                        </p>	
                        
                        <a href="/about" class="button border rounded red"><strong>More About US</strong></a>
                </div>
            </div>
        </div>
    </section>



    <section class="background-grey">
        <div class="container">
            <div class="heading heading-center m-b-40" data-animation="fadeInUp">
            	<h2 style="font-family: 'Noto Sans KR', sans-serif;">제공 서비스</h2>
			     <span class="lead" style="font-family: 'Nanum Brush Script', cursive;">Hongdan Company에서 제공하는 서비스를 소개합니다.</span>
            </div>
            <div class="row text-center">
			        
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="/services">
			                            <img class="image-icon" src="images/service/car_management.png" >
			                        </a>
			                    </div>
			                    <h5 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">차량관리정비 프로그램 제공</h5>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="/services">
			                            <img class="image-icon" src="images/service/call.png" >
			                        </a>
			                    </div>
			                    <h5 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">콜 서비스</h5>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="/services">
			                            <img class="image-icon" src="images/service/rent-a-car.png" >
			                        </a>
			                    </div>
			                    <h5 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">렌트 서비스</h5>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="/services">
			                            <img class="image-icon" src="images/service/buy_car.png" >
			                        </a>
			                    </div>
			                    <h5 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">차량구입 프로그램 제공</h5>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="/services">
			                            <img class="image-icon" src="images/service/counsult-new-car.png" >
			                        </a>
			                    </div>
			                    <h5 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">신차구입상담</h5>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="/services">
			                            <img class="image-icon" src="images/service/sell-car.png" >
			                        </a>
			                    </div>
			                    <h5 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">기존차량매각</h5>
			                </div>
			            </div>
			        </div>
        </div>
    </section>

    <section class="bkp-02">
        <div class="container">
            <div class="heading heading-center m-b-40" data-animation="fadeInUp">
                <h2 class="color-white">차량관리서비스 가격표</h2>
                <span class="lead color-white">회원등급별로 최적의 서비스를 제공합니다.</span>
            </div>
            <div class="menu-area">
                <div class="row text-center">
                    <div class="col-md-12">
                        <div class="chef-menu-wrapper">
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/main/member-vip.png">
                                <div class="w3-menu-top">
                                    <h3>VIP회원</h3>
                                    <h5 class="colorf"><i class="fa fa-krw"></i> 1,000,000</h5>
                                </div>
                                <div class="w3-menu-dts">차량관리정비프로그램, 콜서비스, 렌트서비스, 차량구입프로그램 제공</div>
                            </div>
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/main/member-year.png">
                                <div class="w3-menu-top">
                                    <h3>연간회원</h3>
                                    <h5 class="colorf"><i class="fa fa-krw"></i> 500,000</h5>
                                </div>
                                <div class="w3-menu-dts">차량관리정비프로그램, 렌트서비스, 차량구입프로그램 제공</div>
                            </div>
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/main/member-none.png">
                                <div class="w3-menu-top">
                                	<h3>비회원</h3>
                                    <h5 class="colorf">N/A</h5>
                                </div>
                                <div class="w3-menu-dts">차량관리정비프로그램, 렌트서비스, 차량구입프로그램 제공</div>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </section>


<!-- 
    <section class="parallax p-t-100 p-b-100">
        <div class="container">
            <div class="heading heading-center m-b-40" data-animation="fadeInUp">
                <h2>숫자로 보는 Hongdan Company</h2>
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
 -->


<!-- 
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
 -->

	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
    

  </div>
 
	<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />

</body>
</html>
