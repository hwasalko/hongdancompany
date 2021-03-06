<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

	<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />
	
	<head>
		<style type="text/css">
				
			/* 카드형 UI 스타일시트 추가 */	
			.shape{	
				border-style: solid; border-width: 0 70px 40px 0; float:right; height: 0px; width: 0px;
				-ms-transform:rotate(360deg); /* IE 9 */
				-o-transform: rotate(360deg);  /* Opera 10.5 */
				-webkit-transform:rotate(360deg); /* Safari and Chrome */
				transform:rotate(360deg);
			}
			.offer{
				background:#fff; border:1px solid #ddd; box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); margin: 15px 0; overflow:hidden;
			}
			.offer-radius{
				border-radius:7px;
			}
			.offer-danger {	border-color: #d9534f; }
			.offer-danger .shape{
				border-color: transparent #d9534f transparent transparent;
				border-color: rgba(255,255,255,0) #d9534f rgba(255,255,255,0) rgba(255,255,255,0);
			}
			.offer-success {	border-color: #5cb85c; }
			.offer-success .shape{
				border-color: transparent #5cb85c transparent transparent;
				border-color: rgba(255,255,255,0) #5cb85c rgba(255,255,255,0) rgba(255,255,255,0);
			}
			.offer-default {	border-color: #999999; }
			.offer-default .shape{
				border-color: transparent #999999 transparent transparent;
				border-color: rgba(255,255,255,0) #999999 rgba(255,255,255,0) rgba(255,255,255,0);
			}
			.offer-primary {	border-color: #428bca; }
			.offer-primary .shape{
				border-color: transparent #428bca transparent transparent;
				border-color: rgba(255,255,255,0) #428bca rgba(255,255,255,0) rgba(255,255,255,0);
			}
			.offer-info {	border-color: #5bc0de; }
			.offer-info .shape{
				border-color: transparent #5bc0de transparent transparent;
				border-color: rgba(255,255,255,0) #5bc0de rgba(255,255,255,0) rgba(255,255,255,0);
			}
			.offer-warning {	border-color: #f0ad4e; }
			.offer-warning .shape{
				border-color: transparent #f0ad4e transparent transparent;
				border-color: rgba(255,255,255,0) #f0ad4e rgba(255,255,255,0) rgba(255,255,255,0);
			}
			
			.shape-text{
				color:#fff; font-size:12px; font-weight:bold; position:relative; right:-40px; top:-2px; white-space: nowrap;
				-ms-transform:rotate(30deg); /* IE 9 */
				-o-transform: rotate(360deg);  /* Opera 10.5 */
				-webkit-transform:rotate(30deg); /* Safari and Chrome */
				transform:rotate(30deg);
			}	
			.offer-content{
				padding:10px 20px 10px;
			}	
				
		</style>
	</head>
	
	<body class="wide" >
	
	 
			<jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
			
			<div class="wrapper">
			
				  <jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />
				
				
				  <section class="price-top-banner page-title-center">
				      <div class="container">
				          <div class="page-title col-md-8">
				              <h1>PRICE</h1>
				              <span>Car Management Service</span>
				          </div>
				      </div>
				  </section>	
				
				

				  <section id="content" class="background-grey">
				  
				  <div class="container portfolio">
				  
				  		<!-- Navigation -->	
						<ol class="breadcrumb">
							  <li><a href="/">Home</a></li>
							  <li><a href="/price/car_management_each">PRICE</a></li>
							  <li class="active">차량관리서비스(회원)</li>
						</ol>	
				  
				  		<div class="heading heading-center m-b-40" data-animation="fadeInUp">
				  			<h3 style="font-family: 'Nanum Gothic', sans-serif;">차량관리서비스 가격</h3>
					  		<!--
					  			<h2>차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'Jeju Gothic', sans-serif;">차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'Jeju Hallasan', cursive;">차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'Jeju Myeongjo', serif;">차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'KoPub Batang', serif;">차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'Nanum Brush Script', cursive;">차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'Nanum Gothic', sans-serif;">차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'Nanum Gothic Coding', monospace;">차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'Nanum Myeongjo', serif;">차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'Nanum Pen Script', cursive;">차량관리서비스 가격표</h2>
					            <h2 style="font-family: 'Noto Sans KR', sans-serif;">차량관리서비스 가격표</h2>
					          -->    
				        </div>
				      
				      <div class="raw">
				
				      	  <div class="filter-active-title"></div>
					      <ul class="portfolio-filter" id="portfolio-filter" data-isotope-nav="isotope">
					          <li data-filter=".vip" style="text-align: center;">VIP<br>(연100만원)</li>
					          <li data-filter=".year" style="text-align: center;">연간회원<br>(연 50만원)</li>
					          <li data-filter=".non" style="text-align: center;">비회원<br>(N/A)</li>
					          <!-- <li class="ptf-active" data-filter="*" style="text-align: center;">전체조회<br>(Show All)</li>  -->
					      </ul>
					    
				
						  <!-- 포트폴리오 컨텐츠 영역 -->
						  <div id="isotope" class="isotope portfolio-items" data-isotope-item-space="3" data-isotope-mode="masonry" data-isotope-col="3" data-isotope-item=".portfolio-item">
						      
						      
						      
						      
						      
						      <!----------------------------------------------- VIP 시작 ---------------------------------------------------->
						      <div class="portfolio-item vip">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/car_fix_program.jpg" alt="차량관리 정비 프로그램[VIP]">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/car_fix_program.jpg" data-lightbox="image" title="차량관리 정비 프로그램[VIP]"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">차량관리 정비 프로그램</h4>
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
							              		<span class="label label-default">장기간 여행 및 출장시</span>
							              		<li>차량관리안전 장기주차</li>
							              		<li>보유차량으로 배웅 픽업서비스</li>
							              	</ul>					              					              
						          </div>
						      </div>
						      
						      
						      <div class="portfolio-item vip">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/buy_car_program.jpg" alt="차량구입 프로그램">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/buy_car_program.jpg" data-lightbox="image" title="차량구입 프로그램"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">차량구입 프로그램</h4>
						              <hr>
						          </div>				          
						          <div class="portfolio-details">				
							              	<div class="menu-price">
									        	<p>무제한</p>
									        </div>
							              	<ul>
							              		<span class="label label-default">신차 구입시</span>
							              		<li>각 메이커별 one-stop 차량정보 컨설팅 및 시승</li>
							              		<li>구입 전과정 비교견적(현금/할부/리스/렌트/보험/이전)</li>
							              		<li>최대할인 및 신차검수</li>
							              	</ul>				
							              	<hr>
							              	<div class="menu-price">
									        	<p>무제한</p>
									        </div>
							              	<ul>
							              		<span class="label label-default">중고차 구입시</span>
							              		<li>15가지 차량정밀검사 국내 무사고차량 선정</li>
							              		<li>정밀검사로 최상의 컨디션을 갖춘 차량선정</li>
							              		<li>최대할인 및 최저가로 구입 전과정 완벽대행</li>
							              	</ul>	
							              	<hr>
							              	<div class="menu-price">
									        	<p>무제한</p>
									        </div>
							              	<ul>
							              		<span class="label label-default">직수입 차량 구입시</span>
							              		<li></li>
							              		<li></li>
							              		<li></li>
							              	</ul>					    
							              	<hr>
							              	<div class="menu-price">
									        	<p>무제한</p>
									        </div>
							              	<ul>
							              		<span class="label label-default">기존차량 위탁 매각시</span>
							              		<li>최고시세로 서류이전 등 전과정 one-stop 완벽대행</li>
							              	</ul>					              					              
						          </div>
						      </div>
		
		
						      <div class="portfolio-item vip">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/call_service_program.jpg" alt="콜 서비스">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/call_service_program.jpg" data-lightbox="image" title="콜 서비스"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">콜 서비스</h4>
						              <hr>
						          </div>				          
						          <div class="portfolio-details">				          				          
						              		<div class="menu-price">
									        	<p>연2회</p>
									        </div>
							              	<ul>
							              		<li>사고 및 보험견적/수비/정비튜닝</li>
							              		<li>휠/타이어 업그레이드</li>
							              		<li>A/V장착/썬팅/광택</li>
							              		<li>협력업체 최저가 할인보장</li>
							              	</ul>					              					              
						          </div>
						      </div>
						      
						      <div class="portfolio-item vip">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/car_rent_program.jpg" alt="">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/car_rent_program.jpg" data-lightbox="image" title="렌트서비스"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">렌트 서비스</h4>
						              <hr>
						          </div>				          
						          <div class="portfolio-details">
							              	<div class="menu-price">
									        	<p>연2회</p>
									        </div>
							              	<ul>
							              		<li>당일 차량정비에 한하여 렌트제공</li>
							              	</ul>					              					              
						          </div>
						      </div>
						      <!----------------------------------------------- VIP 끝 ---------------------------------------------------->
						      
						      
						      
						      
						      
						      
						      <!----------------------------------------------- 연간회원 시작 ---------------------------------------------------->
						      <div class="portfolio-item year">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/car_fix_program.jpg" alt="">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/car_fix_program.jpg" data-lightbox="image" title="차량관리 정비 프로그램[연간회원]"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">차량관리 정비 프로그램</h4>
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
						      
						      
						      <div class="portfolio-item year">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/buy_car_program.jpg" alt="">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/buy_car_program.jpg" data-lightbox="image" title="차량구입 프로그램"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">차량구입 프로그램</h4>
						              <hr>
						          </div>				          
						          <div class="portfolio-details">				
							              	<div class="menu-price">
									        	<p>10만원<br><span style="color: maroon;">(착수금)</span></p>
									        </div>
							              	<ul>
							              		<span class="label label-default">신차 구입시</span>
							              		<li>각 메이커별 one-stop 차량정보 컨설팅 및 시승</li>
							              		<li>구입 전과정 비교견적(현금/할부/리스/렌트/보험/이전)</li>
							              		<li>최대할인 및 신차검수</li>
							              	</ul>				
							              	<hr>
							              	<div class="menu-price">
									        	<p>20만원<br><span style="color: maroon;">(착수금)</span></p>
									        </div>
							              	<ul>
							              		<span class="label label-default">중고차 구입시</span>
							              		<li>15가지 차량정밀검사 국내 무사고차량 선정</li>
							              		<li>정밀검사로 최상의 컨디션을 갖춘 차량선정</li>
							              		<li>최대할인 및 최저가로 구입 전과정 완벽대행</li>
							              	</ul>	
							              	<hr>
							              	<div class="menu-price">
									        	<p></p>
									        </div>
							              	<ul>
							              		<span class="label label-default">직수입 차량 구입시</span>
							              		<li></li>
							              		<li></li>
							              		<li></li>
							              	</ul>					    
							              	<hr>
							              	<div class="menu-price">
									        	<p>30만원<br><span style="color: maroon;">(수수료)</span></p>
									        </div>
							              	<ul>
							              		<span class="label label-default">기존차량 위탁 매각시</span>
							              		<li>최고시세로 서류이전 등 전과정 one-stop 완벽대행</li>
							              	</ul>					       			              					              
						          </div>
						      </div>
						      
						      
						      <div class="portfolio-item year">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/car_rent_program.jpg" alt="">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/car_rent_program.jpg" data-lightbox="image" title="렌트서비스"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">렌트 서비스</h4>
						              <hr>
						          </div>				          
						          <div class="portfolio-details">				
							              	<div class="menu-price">
									        	<p>연1회</p>
									        </div>
							              	<ul>
							              		<li>당일 차량정비에 한하여 렌트제공</li>
							              	</ul>					              					              
						          </div>
						      </div>
						      <!----------------------------------------------- 연간회원 끝 ------------------------------------------------------->
						      
						      
						      
						      
						      <!----------------------------------------------- 비회원 시작------------------------------------------------------->
						      <div class="portfolio-item non">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/car_fix_program.jpg" alt="">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/car_fix_program.jpg" data-lightbox="image" title="차량관리 정비 프로그램[비회원]"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">차량관리 정비 프로그램</h4>
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
						      				      
						      
						      <div class="portfolio-item non">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/buy_car_program.jpg" alt="">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/buy_car_program.jpg" data-lightbox="image" title="차량구입 프로그램"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">차량구입 프로그램</h4>
						              <hr>
						          </div>				          
						          <div class="portfolio-details">				
							              	<div class="menu-price">
									        	<p>30만원<br><span style="color: maroon;">(착수금)</span></p>
									        </div>
							              	<ul>
							              		<span class="label label-default">신차 구입시</span>
							              		<li>각 메이커별 one-stop 차량정보 컨설팅 및 시승</li>
							              		<li>구입 전과정 비교견적(현금/할부/리스/렌트/보험/이전)</li>
							              		<li>최대할인 및 신차검수</li>
							              	</ul>				
							              	<hr>
							              	<div class="menu-price">
									        	<p>30만원<br><span style="color: maroon;">(착수금)</span></p>
									        </div>
							              	<ul>
							              		<span class="label label-default">중고차 구입시</span>
							              		<li>15가지 차량정밀검사 국내 무사고차량 선정</li>
							              		<li>정밀검사로 최상의 컨디션을 갖춘 차량선정</li>
							              		<li>최대할인 및 최저가로 구입 전과정 완벽대행</li>
							              	</ul>	
							              	<hr>
							              	<div class="menu-price">
									        	<p></p>
									        </div>
							              	<ul>
							              		<span class="label label-default">직수입 차량 구입시</span>
							              		<li></li>
							              		<li></li>
							              		<li></li>
							              	</ul>					    
							              	<hr>
							              	<div class="menu-price">
									        	<p>50만원<br><span style="color: maroon;">(수수료)</span></p>
									        </div>
							              	<ul>
							              		<span class="label label-default">기존차량 위탁 매각시</span>
							              		<li>최고시세로 서류이전 등 전과정 one-stop 완벽대행</li>
							              	</ul>					       					              					              
						          </div>
						      </div>
						      
						      
						      <div class="portfolio-item non">
						          <div class="portfolio-image effect social-links">
						              <img src="/images/price/car_rent_program.jpg" alt="">
						              <div class="image-box-content">
						                  <p>
						                      <a href="/images/price/car_rent_program.jpg" data-lightbox="image" title="렌트서비스"><i class="fa fa-expand"></i></a>
						                  </p>
						              </div>
						          </div>
						          <div class="portfolio-description">
						              <h4 class="title">렌트 서비스</h4>
						              <hr>
						          </div>				          
						          <div class="portfolio-details">				
							              	<div class="menu-price">
									        	<p>10만원<br><span style="color: maroon;">(회당)</span></p>
									        </div>
							              	<ul>
							              		<li>당일 차량정비에 한하여 렌트제공</li>
							              	</ul>					              					              
						          </div>
						      </div>
						      <!----------------------------------------------- 비회원 시작------------------------------------------------------->
						      
						  </div>
						  
						  
						  <hr style="margin-top:30px; margin-bottom: 30px;"/>
						
						
						<!-- 
							<div class="raw">
					    		<div class="col-md-6" >
			    			  			<blockquote>
						    				<p>
						    					<strong>신차 구입상담</strong>
						    				</p>
						    				<footer>1:1 상담 차량구입관련 컨설팅</footer>
						    				<footer>데이터화된 자료를 통해 각 브랜드별 차종과 유지관리 컨설팅</footer>
						    				<footer>각 브랜드 별 등급차량 비교분석</footer>
						    				<footer>각 딜러사들 비교견적 최저가 할인 유도</footer>
						    				<footer>차량등록 및 보험 등</footer>
						    				<footer>계약 및 출고일자 통보 출고시 차량이상유무 검차</footer>
						    				<footer>회원이 계신곳으로 차량 인도(출고트럭 구입)</footer>							    				
						    			</blockquote>
					    		</div>
					    		<div class="col-md-6" >
			    			  			<blockquote>
						    				<p>
						    					<strong>중고차 구입상담</strong>
						    				</p>
						    				<footer>1:1 상담 차량구입관련 컨설팅</footer>
						    				<footer>데이터화된 자료를 통해 각 브랜드별 차종과 유지관리 컨설팅</footer>
						    				<footer>회원 성향에 맞는 차종 선택</footer>
						    				<footer>차량 구입에 관한 전과정 시스템 가동</footer>
						    				<footer>무사고 확인 및 15가지 차량정밀검사 회원 휴대폰으로 차량영상 전송</footer>
						    				<footer>차량등록 및 보험 등 구입에 관한 전과정 대행</footer>
						    				<footer>회원이 계신 곳으로 차량 인도</footer>							    				
						    			</blockquote>
					    		</div>
					    	</div>	
							
							
							<div class="raw" style="padding-top : 30px;">
					    		<div class="col-md-6" >
			    			  			<blockquote>
						    				<p>
						    					<strong>기존차량 매각</strong>
						    				</p>
						    				<footer>차량상태 점검 실시</footer>
						    				<footer>차량가액 설정 및 즉시매각 또는 위탁매각 논의</footer>							    				
						    				<footer>등록 및 보험 등 차량매각에 관한 전과정 대행</footer>
						    				<footer>차량금액지불 등 완료 통보</footer>
						    				<footer>신차 컨설팅 및 상담</footer>
						    			</blockquote>
					    		</div>
					    		<div class="col-md-6" >
			    			  			<blockquote>
						    				<p>
						    					<strong>차량관리 멤버쉽 가입 과정</strong>
						    				</p>
						    				<footer>매니저 방문 멤버쉽 차량관리 1:1 상담 진행</footer>
						    				<footer>차량상태확인 및 점검 계약서 작성</footer>							    				
						    			</blockquote>
					    		</div>
					    	</div>	
						  
						  </div>
						  
					  </div>
					   -->
					   
					   	</div>
					   
					   </div>
					   
					   
					   <!--  신차구입상담 등 -->
					   <div class="container">
							<div class="row">
										
										<div class="col-md-6">
											<div class="offer offer-radius offer-success">
												<div class="shape">
													<div class="shape-text">
														<i class="fa fa-car fa-lg" aria-hidden="true"></i>								
													</div>
												</div>
												<div class="offer-content">
													<h4>
														신차 구입상담
													</h4>
													<p>
															<i class="fa fa-hand-o-right" aria-hidden="true"></i> 1:1 상담 차량구입관련 컨설팅<br>
															<i class="fa fa-hand-o-right" aria-hidden="true"></i> 데이터화된 자료를 통해 각 브랜드별 차종과 유지관리 컨설팅<br>
															<i class="fa fa-hand-o-right" aria-hidden="true"></i> 각 브랜드 별 등급차량 비교분석<br>
															<i class="fa fa-hand-o-right" aria-hidden="true"></i> 각 딜러사들 비교견적 최저가 할인 유도<br>
															<i class="fa fa-hand-o-right" aria-hidden="true"></i> 차량등록 및 보험 등<br>
															<i class="fa fa-hand-o-right" aria-hidden="true"></i> 계약 및 출고일자 통보 출고시 차량이상유무 검차<br>
															<i class="fa fa-hand-o-right" aria-hidden="true"></i> 회원이 계신곳으로 차량 인도(출고트럭 구입)
													</p>
												</div>
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="offer offer-radius offer-primary">
												<div class="shape">
													<div class="shape-text">
														<i class="fa fa-car fa-lg" aria-hidden="true"></i>								
													</div>
												</div>
												<div class="offer-content">
													<h4>
														중고차 구입상담
													</h4>						
													<p>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 1:1 상담 차량구입관련 컨설팅<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 데이터화된 자료를 통해 각 브랜드별 차종과 유지관리 컨설팅<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 회원 성향에 맞는 차종 선택<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 차량 구입에 관한 전과정 시스템 가동<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 무사고 확인 및 15가지 차량정밀검사 회원 휴대폰으로 차량영상 전송<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 차량등록 및 보험 등 구입에 관한 전과정 대행<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 회원이 계신 곳으로 차량 인도
													</p>
												</div>
											</div>
										</div>
								</div>
								
								<div class="row">
										<div class="col-md-6">
											<div class="offer offer-radius offer-warning">
												<div class="shape">
													<div class="shape-text">
														<i class="fa fa-car fa-lg" aria-hidden="true"></i>							
													</div>
												</div>
												<div class="offer-content">
													<h4>
														기존차량 매각
													</h4>						
													<p>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 차량상태 점검 실시<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 차량가액 설정 및 즉시매각 또는 위탁매각 논의<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 등록 및 보험 등 차량매각에 관한 전과정 대행<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 차량금액지불 등 완료 통보<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 신차 컨설팅 및 상담
													</p>
												</div>
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="offer offer-radius offer-danger">
												<div class="shape">
													<div class="shape-text">
														<i class="fa fa-car fa-lg" aria-hidden="true"></i>							
													</div>
												</div>
												<div class="offer-content">
													<h4>
														차량관리 멤버쉽 가입 과정
													</h4>						
													<p>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 매니저 방문 멤버쉽 차량관리 1:1 상담 진행<br>
														<i class="fa fa-hand-o-right" aria-hidden="true"></i> 차량상태확인 및 점검 계약서 작성
														<br>
														<br>
														<br>
														<br>
													</p>
												</div>
											</div>
										</div>
										
					        </div>
					        
					</div>
					   
				  </section>
				  
				
				  
				  <jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
			
			</div>
			
			 <jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			 
			 
			 
			 
			 
			 <script type="text/javascript">
			 	
				$(window).load(function(){
					//VIP 옵션으로 버튼 초기화
					$('li[data-filter*=vip]').click();					
				});	
				
			</script>
			 
	</body>
</html>
