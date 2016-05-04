<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

	<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />
	<head>
		<style type="text/css">
				hr{
					margin-top:5px;
					margin-bottom : 5px;
				}	
				.toggle-header{
				    padding:10px 0;
				    margin:0px 0;
				    background-color:black;
				    color:white;
				    font-size: 14px;
				    font-weight: bold;
				    text-align: center;
				}
				.toggle-footer{
				    padding:10px 0px 10px 0px;
				    margin:0px 0;
				    background-color:yellow;
				    color:red;
				    font-size: 16px;
				    font-weight: bold;
				    text-align: center;
				}
				.txt-green{
				    color:green;
				    vertical-align: middle;
				}
				.txt-red{
				    color:red;
				    vertical-align: middle;
				}
				
				
				
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
				
				
				
				  
				  
				  <!----------------------------------------------- 가격 비교표------------------------------------------------------->
				  <section id="total-price-table" class="background-grey">
				    <div class="container">
				    
				    		<!-- Navigation -->	
							<ol class="breadcrumb">
								  <li><a href="/">Home</a></li>
								  <li><a href="/price/car_management_total">PRICE</a></li>
								  <li class="active">차량관리서비스(전체)</li>
							</ol>	
				        	
				        	<h3 style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700; text-align: center; ">차량관리서비스 가격</h3>
				        	
				        	<hr/>
				        	<br>
				        	
				        	<div class="raw">
								
								<div class="panel panel-default clearfix">
				                            <div class="col-xs-12 toggle-header">
					                                <div class="col-xs-6">
					                                	<span class="hidden-xs">서비스</span>
					                                    <span class="visible-xs">서비스</span>
					                                </div>
					                                <div class="col-xs-2 text-center">
					                                    <span class="hidden-xs">비회원</span>
					                                    <span class="visible-xs">비회원</span>
					                                </div>
					                                <div class="col-xs-2 text-center">
					                                     <span class="hidden-xs">연간회원</span>
					                                    <span class="visible-xs">연간회원</span>
					                                </div>
					                                <div class="col-xs-2 text-center">
					                                     <span class="hidden-xs">VIP</span>
					                                    <span class="visible-xs">VIP</span>
					                                </div>
				                            </div>
			                            
			                                <div id="feature-1" class="collapse in">
			                                
			                                			<hr/>
			                                			<hr/>
				                                        <div class="panel-body">
					                                            <div class="row" style="padding-top : 30px;">
						                                                <div class="col-md-6">
						                                                    <font color="navy" style="font-weight: bold;">차량관리 정비 프로그램</font>       
						                                                                                          
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
					                                            </div>
					                                            <div class="row" style="padding-top : 10px;">
					                                            		<div class="col-xs-6">
							                                                <ul>
							                                                    <li>40가지 정기점검정비</li>                                             
							                                                    <li>실내외 손세차</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                </div>
					                                            </div>
					                                            <div class="row">
						                                                <div class="col-xs-6">
							                                                <ul>
							                                                    <li>엔진클리닝/외장 잔기스 관리</li>                                             
							                                                    <li>워셔액/부동액 보충 등 점검</li>
							                                                    <li>가죽시트케어 서비스</li>
							                                                    <li>실내크리닝</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>회당 10만원
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>연 2회
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>연 4회
						                                                </div>
					                                            </div>
					                                            <div class="row">
						                                                <div class="col-xs-6">
							                                                <ul>
							                                                    <li>최고급 광택 및 유리막 코팅</li>                                             
							                                                    <li>실내크리닝/시트복원</li>
							                                                    <li>50만원 한도 쿠폰발급</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>연 4회
						                                                </div>
					                                            </div>
					                                            <div class="row">
						                                                <div class="col-xs-6">
							                                                <ul>
							                                                    <li>소량의 덴트/판금 도색작업</li>                                             
							                                                    <li>부품교환이 필요한 경정비</li>
							                                                    <li>50만원 한도 쿠폰발급</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
						                                                </div>
					                                            </div>				
					                                            <div class="row">
						                                                <div class="col-xs-6">
							                                                <ul>
							                                                	<span class="label label-default">장기간 여행 및 출장 시</span>                                          
							                                                    <li>차량관리안전 장기주차</li>
							                                                    <li>보유차량으로 배웅 픽업서비스</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>연 2회
						                                                </div>
					                                            </div>
					                                    	
					                                    	<hr/>
					                                    	<div class="panel-body">
					                                            <div class="row">
						                                                <div class="col-md-6">
						                                                    <font color="navy" style="font-weight: bold;">콜 서비스</font>                                             
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
					                                            </div>
					                                            <div class="row" style="padding-top : 10px;">
					                                            		<div class="col-xs-6">
							                                                <ul>
							                                                    <li>사고 및 보험견적/수리/정비튜닝</li>                                             
							                                                    <li>휠/타이어 업그레이드</li>
							                                                    <li>A/V장착/썬팅/광택</li>
							                                                    <li>협력업체 최저가 할인보장</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>연 2회
						                                                </div>
					                                            </div>        		
				                                        </div>  
				                                        
				                                        <hr/>
					                                    	<div class="panel-body">
					                                            <div class="row">
						                                                <div class="col-md-6">
						                                                    <font color="navy" style="font-weight: bold;">렌트 서비스</font>
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
					                                            </div>
					                                            <div class="row" style="padding-top : 10px;">
					                                            		<div class="col-xs-6">
							                                                <ul>
							                                                    <li>당일 차량정비에 한하여 렌트 제공</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>회당 10만원
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>연 1회
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>연 2회
						                                                </div>
					                                            </div>        		
				                                        </div>  
				                                        
				                                        <hr/>
					                                    	<div class="panel-body">
					                                            <div class="row">
						                                                <div class="col-md-6">
						                                                    <font color="navy" style="font-weight: bold;">차량구입 프로그램</font>
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
						                                                <div class="col-md-2 text-center">
						                                                    
						                                                </div>
					                                            </div>
					                                            <div class="row" style="padding-top : 10px;">
					                                            		<div class="col-xs-6">
							                                                <ul>
							                                                    <span class="label label-default">신차 구입시</span>
							                                                    <li>각 메이커별 one-stop 차량정보 컨설팅 및 시승</li>
							                                                    <li>구입 전과정 비교견적(현금/할부/리스/렌트/보험/이전)</li>
							                                                    <li>최대할인 및 신차검수</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>착수금 30만원
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>착수금 10만원
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>무제한
						                                                </div>
					                                            </div>
					                                            <div class="row" style="padding-top : 10px;">
					                                            		<div class="col-xs-6">
							                                                <ul>
							                                                    <span class="label label-default">중고차 구입시</span>
							                                                    <li>15가지 차량정밀검사 국내 무사고차량 선정</li>
							                                                    <li>정밀검사로 최상의 컨디션을 갖춘 차량선정</li>
							                                                    <li>최대할인 및 최저가로 구입 전과정 완벽대행</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>착수금 30만원
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>착수금 20만원
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>무제한
						                                                </div>
					                                            </div>
					                                            <div class="row" style="padding-top : 10px;">
					                                            		<div class="col-xs-6">
							                                                <ul>
							                                                    <span class="label label-default">직수입 차량 구입시</span>
							                                                    <li></li>
							                                                    <li></li>
							                                                    <li></li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                </div>
					                                            </div>      
					                                            <div class="row" style="padding-top : 10px;">
					                                            		<div class="col-xs-6">
							                                                <ul>
							                                                    <span class="label label-default">기존차량 위탁 매각시</span>
							                                                    <li>최고시세로 서류이전 등 전과정 one-stop 완벽대행</li>
						                                                    </ul>
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>수수료 50만원
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>수수료 30만원
						                                                </div>
						                                                <div class="col-xs-2 text-center">
						                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
						                                                    <br>무제한
						                                                </div>
					                                            </div>    
					                                                      		
				                                        </div>  
				                                          
			                                     </div>
			                            </div>
			                            
			                            <hr/>
			                            <div class="col-xs-12 toggle-footer">
				                                <div class="col-xs-6">
				                                	<span class="hidden-xs" style="color: black">연간 회원가</span>
				                                    <span class="visible-xs" style="color: black">연간 회원가</span>
				                                </div>
				                                <div class="col-xs-2 text-center">
				                                    <span class="hidden-xs">N/A</span>
				                                    <span class="visible-xs">N/A</span>
				                                </div>
				                                <div class="col-xs-2 text-center">
				                                     <span class="hidden-xs">50만원</span>
				                                    <span class="visible-xs">50만원</span>
				                                </div>
				                                <div class="col-xs-2 text-center">
				                                     <span class="hidden-xs">100만원</span>
				                                    <span class="visible-xs">100만원</span>
				                                </div>
				                            </div>
	
					    	</div>
					    	
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
				    
				    -->
				    
				    
				    
				    
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
			 
			 
			 
			 
	</body>
</html>
