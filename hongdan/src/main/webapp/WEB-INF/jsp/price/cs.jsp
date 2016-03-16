<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

	<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />
	
	<body class="wide">
	 
			<jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
			
			<div class="wrapper">
			
				  <jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />
				
				
				  <section class="menu-top-banner page-title-center">
				      <div class="container">
				          <div class="page-title col-md-8">
				              <h1>PRICE</h1>
				              <span>C/S (Customer Service) 프로그램 가격표</span>
				          </div>
				      </div>
				  </section>	
				
				<!-- 
				  <section class="p-b-0" id="section-about">
				    <div class="container">
				        <div class="heading heading-center m-b-40" data-animation="fadeInUp">
				            <h2>CS 프로그램 가격표</h2>
				            <span class="lead">[비회원], [연간회원], [VIP] 서비스를 다음과 같이 제공합니다.</span>
				        </div>
				        <div class="row" data-animation="fadeInUp">
				            <div class="col-md-12">
				                <p></p>
				            </div>
				        </div>
				    </div>
				  </section>
				 -->
				  <section id="content" class="background-grey">
				  		<div class="heading heading-center m-b-40" data-animation="fadeInUp">
				            <h2>C/S 프로그램 가격표</h2>
				        </div>
				      <div class="container portfolio">
				
				      <div class="filter-active-title">C/S 프로그램 구성</div>
				      <ul class="portfolio-filter" id="portfolio-filter" data-isotope-nav="isotope">
				          <li class="ptf-active" data-filter="*">Show All</li>
				          <li data-filter=".nomember">비회원</li>
				          <li data-filter=".lunch">연간회원</li>
				          <li data-filter=".dinner">VIP</li>
				          <li data-filter=".coffee">Coffee</li>
				          <li data-filter=".desert">Desert</li>
				      </ul>
				
				
				  <!-- 포트폴리오 컨텐츠 영역 -->
				  <div id="isotope" class="isotope portfolio-items" data-isotope-item-space="3" data-isotope-mode="masonry" data-isotope-col="3" data-isotope-item=".portfolio-item">
				      
				      
				      <div class="portfolio-item nomember">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/1.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">차량관리 정비 프로그램 A<br>(VIP)</h4>
				          </div>
				          <div class="menu-price">
				              <p>￦100,000(회당)</p>
				          </div>
				          <div class="portfolio-details">
				              <p>
				              		<ul>
					              		<li>40가지 정기점검정비</li>
					              		<li>실내외 손세차</li>
					              	</ul>	
					              	<hr>
					              	<ul>
					              		<li>엔진클리닝/외장 잔기스 관리</li>
					              		<li>워셔액/부동액 보충 등 점검</li>
					              		<li>가죽시트케어 서비스</li>
					              		<li>실내크리닝</li>
					              	</ul>
					              	<hr>
					              	<ul>
					              		<li>엔진클리닝/외장 잔기스 관리</li>
					              		<li>워셔액/부동액 보충 등 점검</li>
					              		<li>가죽시트케어 서비스</li>
					              		<li>실내크리닝</li>
					              	</ul>
				              </p>
				          </div>
				      </div>
				      
				      <div class="portfolio-item desert dinner">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/1.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
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
				              <img src="/images/menus/3.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/3.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
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
				      
				      <div class="portfolio-item desert nomember">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/4.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/4.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
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
				              <img src="/images/menus/21.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/21.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
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
				      
				      <div class="portfolio-item desert nomember lunch">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/5.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/5.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
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
				      
				      <div class="portfolio-item desert nomember">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/22.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/22.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
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
				              <img src="/images/menus/6.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/6.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
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
				              <img src="/images/menus/7.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/7.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
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
				
				  
				  <jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
			
			</div>
			
			 <jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			 
	</body>
</html>
