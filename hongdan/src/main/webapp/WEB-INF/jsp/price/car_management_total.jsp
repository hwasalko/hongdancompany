<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

	<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />
	<head>
		<style type="text/css">
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
				  
				  
				  <!----------------------------------------------- 가격 비교표------------------------------------------------------->
				  <section id="total-price-table" class="background-grey">
				    <div class="container">
				        	
				        	<h2 style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700; text-align: center; ">차량관리서비스 가격안내(전체)</h2>
							
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
			                                        <div class="panel-body">
				                                            <div class="row">
					                                                <div class="col-md-6">
					                                                    <b>차량관리 정비 프로그램</b>                                             
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
					                                                    <b>콜 서비스</b>                                             
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
					                                                    <b>렌트 서비스</b>                                             
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
					                                                    <b>차량구입 프로그램</b>                                             
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