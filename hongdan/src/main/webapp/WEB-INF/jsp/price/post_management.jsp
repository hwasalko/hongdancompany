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
				              <span>Post Management Service</span>
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
				            <h2>사후관리서비스 가격표</h2>
				        </div>
				      <div class="container portfolio">
				
				      <div class="filter-active-title">Show All</div>
				      <ul class="portfolio-filter" id="portfolio-filter" data-isotope-nav="isotope">
				          <li class="ptf-active" data-filter="*">Show All</li>
				          <li data-filter=".vip">VIP</li>
				          <li data-filter=".year">연간회원</li>
				          <li data-filter=".non">비회원</li>
				      </ul>
				
				
				  <!-- 포트폴리오 컨텐츠 영역 -->
				  <div id="isotope" class="isotope portfolio-items" data-isotope-item-space="3" data-isotope-mode="masonry" data-isotope-col="3" data-isotope-item=".portfolio-item">
				      
				      
				      <div class="portfolio-item vip">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/1.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">차량관리 정비 프로그램 <span style="color: olive;">[VIP]</span></h4>
				              <hr>
				          </div>				          
				          <div class="portfolio-details">				          				          
				              		<div class="menu-price">
							        	<p></p>
							        </div>
				              		<ul>
					              		<li>40가지 정기점검정비</li>	
					              		<li>실내외 손세차</li>
					              	</ul>
					              	
					              	<hr>
					              	<div class="menu-price">
							        	<p>연4회</p>
							        </div>
					              	<ul>
					              		<li>엔진클리닝/외장 잔기스 관리</li>
					              		<li>워셔액/부동액 보충 등 점검</li>
					              		<li>가죽시트케어 서비스</li>
					              		<li>실내크리닝</li>
					              	</ul>
					              	
					              	<hr>
					              	<div class="menu-price">
							        	<p>연4회</p>
							        </div>
					              	<ul>
					              		<li>최고급 광택 및 유리막 코팅</li>
					              		<li>실내크리닝/시트복원</li>
					              		<li>50만원 한도 쿠폰발급</li>
					              	</ul>
					              	
					              	<hr>
					              	<div class="menu-price">
							        	<p></p>
							        </div>
					              	<ul>
					              		<li>소량의 덴트/판금 도색작업</li>
					              		<li>부품교환이 필요한 경정비</li>
					              		<li>50만원 한도 쿠폰발급</li>
					              	</ul>
					              	
					              	<hr>
					              	<div class="menu-price">
							        	<p>연1회</p>
							        </div>
					              	<ul>
					              		<li>(장기간 여행 및 출장 시)</li>
					              		<li>차량관리안전 장기주차</li>
					              		<li>보유차량으로 배웅 픽업서비스</li>
					              	</ul>					              					              
				          </div>
				      </div>
				      				      
				      
				      <div class="portfolio-item year">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/1.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">차량관리 정비 프로그램 <span style="color: olive;">[연간회원]</span></h4>
				              <hr>
				          </div>				          
				          <div class="portfolio-details">				          				          
				              		<div class="menu-price">
							        	<p></p>
							        </div>
				              		<ul>
					              		<li>40가지 정기점검정비</li>	
					              		<li>실내외 손세차</li>
					              	</ul>
					              	
					              	<hr>
					              	<div class="menu-price">
							        	<p>연2회</p>
							        </div>
					              	<ul>
					              		<li>엔진클리닝/외장 잔기스 관리</li>
					              		<li>워셔액/부동액 보충 등 점검</li>
					              		<li>가죽시트케어 서비스</li>
					              		<li>실내크리닝</li>
					              	</ul>					              					              
				          </div>
				      </div>
				      
				      
				      <div class="portfolio-item non">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/1.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">차량관리 정비 프로그램 <span style="color: olive;">[비회원]</span></h4>
				              <hr>
				          </div>				          
				          <div class="portfolio-details">				          				          
				              		<div class="menu-price">
							        	<p></p>
							        </div>
				              		<ul>
					              		<li>40가지 정기점검정비</li>	
					              		<li>실내외 손세차</li>
					              	</ul>
					              	
					              	<hr>
					              	<div class="menu-price">
							        	<p>10만원<br><span style="color: maroon;">(회당)</span></p>
							        </div>
					              	<ul>
					              		<li>엔진클리닝/외장 잔기스 관리</li>
					              		<li>워셔액/부동액 보충 등 점검</li>
					              		<li>가죽시트케어 서비스</li>
					              		<li>실내크리닝</li>
					              	</ul>					              					              
				          </div>
				      </div>
				      
				      
				      <div class="portfolio-item vip">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/1.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">콜 서비스 <span style="color: olive;">[VIP]</span></h4>
				              <hr>
				          </div>				          
				          <div class="portfolio-details">				          				          
				              		<div class="menu-price">
							        	<p></p>
							        </div>
				              		<ul>
					              		<li>40가지 정기점검정비</li>	
					              		<li>실내외 손세차</li>
					              	</ul>
					              	
					              	<hr>
					              	<div class="menu-price">
							        	<p>연2회</p>
							        </div>
					              	<ul>
					              		<li>엔진클리닝/외장 잔기스 관리</li>
					              		<li>워셔액/부동액 보충 등 점검</li>
					              		<li>가죽시트케어 서비스</li>
					              		<li>실내크리닝</li>
					              	</ul>					              					              
				          </div>
				      </div>
				      
				      
				      <div class="portfolio-item vip">
				          <div class="portfolio-image effect social-links">
				              <img src="/images/menus/1.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="/images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">렌트 서비스 <span style="color: olive;">[VIP]</span></h4>
				              <hr>
				          </div>				          
				          <div class="portfolio-details">				          				          
				              		<div class="menu-price">
							        	<p></p>
							        </div>
				              		<ul>
					              		<li>당일 차량정비에 한하여 렌트제공</li>
					              	</ul>
					              	
					              	<hr>
					              	<div class="menu-price">
							        	<p>연2회</p>
							        </div>
					              	<ul>
					              		<li>엔진클리닝/외장 잔기스 관리</li>
					              		<li>워셔액/부동액 보충 등 점검</li>
					              		<li>가죽시트케어 서비스</li>
					              		<li>실내크리닝</li>
					              	</ul>					              					              
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
