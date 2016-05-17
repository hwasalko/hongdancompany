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
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean diam dolor, tincidunt sit amet imperdiet viverra, accumsan at sem. Integer felis enim, aliquam id blandit ut, imperdiet vel nulla. Pellentesque et ex blandit, vehicula dui nec, facilisis magna. Mauris scelerisque ipsum sit amet vulputate lobortis. Duis blandit, nibh ac posuere placerat, mi leo pellentesque arcu, ac dictum odio lorem a purus. Etiam ac ipsum eu dolor eleifend feugiat.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean diam dolor, tincidunt sit amet imperdiet viverra, accumsan at sem. Integer felis enim, aliquam id blandit ut, imperdiet vel nulla. Pellentesque et ex blandit, vehicula dui nec, facilisis magna. Mauris scelerisque ipsum sit amet vulputate lobortis. Duis blandit, nibh ac posuere placerat, mi leo pellentesque arcu, ac dictum odio lorem a purus. Etiam ac ipsum eu dolor eleifend feugiat.</p>
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
			                        <a href="#">
			                            <i class="flaticon-heating5"></i>
			                        </a>
			                    </div>
			                    <h4 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">차량관리정비 프로그램 제공</h4>
			                    <p style="font-family: 'Jeju Hallasan', cursive; color: olive;">
			                    	40가지 정기점검정비, 실내외 손세차 <br>
			                    	엔진클리닝 / 외장 잔기스 관리<br>
			                    	워셔액 / 부동액 보충 등 점검 등
			                    </p>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="#">
			                            <i class="flaticon-food32"></i>
			                        </a>
			                    </div>
			                    <h4 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">콜 서비스</h4>
			                    <p style="font-family: 'Jeju Hallasan', cursive; color: olive;">
			                    	사고 및 보험견적 / 수리 / 정비튜닝<br>
			                    	휠/타이어 업그레이드, A/V장착, 썬팅/광택<br>
			                    	A/V장착 / 썬팅 / 광택
			                    </p>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="#">
			                            <i class="flaticon-soup4"></i>
			                        </a>
			                    </div>
			                    <h4 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">렌트 서비스</h4>
			                    <p style="font-family: 'Jeju Hallasan', cursive; color: olive;">
			                    	당일 차량정비에 한하여 렌트제공<br><br><br>
			                    </p>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="#">
			                            <i class="flaticon-pizza4"></i>
			                        </a>
			                    </div>
			                    <h4 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">차량구입 프로그램 제공</h4>
			                    <p style="font-family: 'Jeju Hallasan', cursive; color: olive;">
			                    	메이커 별 차량정보 컨설팅 및 시승<br>
			                    	구입 전과정 비교견적<br>
			                    	최대할인 및 신차검수
			                    </p>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="#">
			                            <i class="flaticon-covered16"></i>
			                        </a>
			                    </div>
			                    <h4 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">신차구입상담</h4>
			                    <p style="font-family: 'Jeju Hallasan', cursive; color: olive;">
			                    	1:!상담 차량구입관련 컨설팅<br><br><br>
			                    </p>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="icon-box medium">
			                    <div class="icon">
			                        <a href="#">
			                            <i class="flaticon-plate7"></i>
			                        </a>
			                    </div>
			                    <h4 class="subtitle" style="font-family: 'Noto Sans KR', sans-serif;">기존차량매각</h4>
			                    <p style="font-family: 'Jeju Hallasan', cursive; color: olive;">
			                    	점검 및 매각 전과정 컨설팅 및 상담<br><br><br>
			                    </p>
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
                                <img alt="Menu 1" src="images/chef/food-p1.jpg">
                                <div class="w3-menu-top">
                                    <h3>VIP회원</h3>
                                    <h5 class="colorf">￦1,000,000</h5>
                                </div>
                                <div class="w3-menu-dts">차량관리정비프로그램, 콜서비스, 렌트서비스, 차량구입프로그램 제공</div>
                            </div>
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/chef/food-p1.jpg">
                                <div class="w3-menu-top">
                                    <h3>연간회원</h3>
                                    <h5 class="colorf">￦500,000</h5>
                                </div>
                                <div class="w3-menu-dts">차량관리정비프로그램, 렌트서비스, 차량구입프로그램 제공</div>
                            </div>
                            <div class="food-menu-w3">
                                <img alt="Menu 1" src="images/chef/food-p1.jpg">
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
