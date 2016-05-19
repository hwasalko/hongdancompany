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
			
			.tb_title{
				font-weight: bold;
				color: navy;
				font-size: 11pt;
			}
			
					
			/* table CSS */
			.custab{
			    border: 1px solid #ccc;
			    /*
			    padding: 5px;
			    margin: 5% 0;*/
			    box-shadow: 3px 3px 2px #ccc;
			    transition: 0.5s;
			    }
			.custab:hover{
			    box-shadow: 3px 3px 0px transparent;
			    transition: 0.5s;
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
				  <section id="total-price-table" class="background-white ">
				    <div class="container">
				    
				    		<!-- Navigation -->	
							<ol class="breadcrumb">
								  <li><a href="/">Home</a></li>
								  <li><a href="/price/car_management_total">PRICE</a></li>
								  <li class="active">차량관리서비스(전체)</li>
							</ol>	
				        	
				        	<h3 style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700; text-align: center; ">차량관리서비스 가격</h3>
				        	
				        	
				        	<br>
				        	
				        
				        
				        
				        <div class="row">
				        	<div class="col-md-12">
							    <table class="table table-condensed" >
									    
									    <thead>
										        <tr style=" padding :5px 0 5px 0; background-color: #333; border-bottom-style: double; border-bottom-color: #fff;" >
										            <th class="text-center" style="width: 50%; color: #fff; font-size:13pt; font-weight: bold; border-style: dotted; border-width: 1px 1px 0 1px; border-color: #fff;">제공 서비스</th>
										            <th class="text-center" style="color: #fff; font-size:13pt; font-weight: bold; border-style: dotted; border-width: 1px 1px 0 1px; border-color: #fff;">비회원</th>
										            <th class="text-center " style="color: #fff; font-size: 13pt; font-weight: bold; border-style: dotted; border-width: 1px 1px 0 1px; border-color: #fff;">연간회원</th>
										            <th class="text-center " style="color: #fff; font-size: 13pt; font-weight: bold; border-style: dotted; border-width: 1px 1px 0 1px; border-color: #fff;">VIP</th>
										        </tr>
									    </thead>
									    
							            <tr class="active">
							                <td class="tb_title">
							                	차량관리 정비 프로그램
							                </td>
							                <td class="text-center"></td>
							                <td class="text-center"></td>
							                <td class="text-center"></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <li>40가지 정기점검정비</li>                                             
                                                    <li>실내외 손세차</li>
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <li>엔진클리닝/외장 잔기스 관리</li>                                             
                                                    <li>워셔액/부동액 보충 등 점검</li>
                                                    <li>가죽시트케어 서비스</li>
                                                    <li>실내크리닝</li>
                                                 </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>회당 10만원</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>연 2회</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>연 4회</small></font></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <li>최고급 광택 및 유리막 코팅</li>                                             
                                                    <li>실내크리닝/시트복원</li>
                                                    <li>50만원 한도 쿠폰발급</li>
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : red;"><i class="glyphicon glyphicon-remove txt-red"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : red;"><i class="glyphicon glyphicon-remove txt-red"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>연 4회</small></font></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <li>소량의 덴트/판금 도색작업</li>                                             
                                                    <li>부품교환이 필요한 경정비</li>
                                                    <li>50만원 한도 쿠폰발급</li>
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : red;"><i class="glyphicon glyphicon-remove txt-red"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : red;"><i class="glyphicon glyphicon-remove txt-red"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : red;"><i class="glyphicon glyphicon-remove txt-red"></i></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <span class="label label-default">장기간 여행 및 출장 시</span>                                          
                                                    <li>차량관리안전 장기주차</li>
                                                    <li>보유차량으로 배웅 픽업서비스</li>
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : red;"><i class="glyphicon glyphicon-remove txt-red"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : red;"><i class="glyphicon glyphicon-remove txt-red"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>연 4회</small></font></td>
							            </tr>
							            
							            <tr class="active">
							                <td class="tb_title">
							                	콜 서비스
							                </td>
							                <td class="text-center"></td>
							                <td class="text-center"></td>
							                <td class="text-center"></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <li>사고 및 보험견적/수리/정비튜닝</li>                                             
                                                    <li>휠/타이어 업그레이드</li>
                                                    <li>A/V장착/썬팅/광택</li>
                                                    <li>협력업체 최저가 할인보장</li>
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : red;"><i class="glyphicon glyphicon-remove txt-red"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : red;"><i class="glyphicon glyphicon-remove txt-red"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>연 4회</small></font></td>
							            </tr>
							            
							            <tr class="active">
							                <td class="tb_title">
							                	렌트 서비스
							                </td>
							                <td class="text-center"></td>
							                <td class="text-center"></td>
							                <td class="text-center"></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <li>당일 차량정비에 한하여 렌트 제공</li>    
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>회당 10만원</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>연 1회</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>연 2회</small></font></td>
							            </tr>
							            
							            <tr class="active">
							                <td class="tb_title">
							                	차량구입 프로그램
							                </td>
							                <td class="text-center"></td>
							                <td class="text-center"></td>
							                <td class="text-center"></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <span class="label label-default">신차 구입시</span>
                                                    <li>각 메이커별 one-stop 차량정보 컨설팅 및 시승</li>
                                                    <li>구입 전과정 비교견적(현금/할부/리스/렌트/보험/이전)</li>
                                                    <li>최대할인 및 신차검수</li>    
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>착수금 30만원</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>착수금 10만원</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>무제한</small></font></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <span class="label label-default">중고차 구입시</span>
                                                    <li>15가지 차량정밀검사 국내 무사고차량 선정</li>
                                                    <li>정밀검사로 최상의 컨디션을 갖춘 차량선정</li>
                                                    <li>최대할인 및 최저가로 구입 전과정 완벽대행</li>    
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>착수금 30만원</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>착수금 20만원</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>무제한</small></font></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <span class="label label-default">직수입 차량 구입시</span>
                                                    <li></li>
                                                    <li></li>
                                                    <li></li> 
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i></td>
							            </tr>
							            <tr>
							                <td>
							                	<ul>
                                                    <span class="label label-default">기존차량 위탁 매각시</span>
                                                    <li>최고시세로 서류이전 등 전과정 one-stop 완벽대행</li>
                                                </ul>
							                </td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>수수료 50만원</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>수수료 30만원</small></font></td>
							                <td class="text-center" style="vertical-align: middle; color : green;"><i class="glyphicon glyphicon-ok txt-green"></i><br><font color="black"><small>무제한</small></font></td>
							            </tr>
							            <tr style="border-top-style: double; height: 40pt;" >
								            <td class="text-center text-danger" style="width: 50%; font-size: 13pt; font-weight: bold; background-color: #fff">연간 회원가</td>
								            <td class="text-center" style="font-size: 15pt; font-weight: bold;"><span class="label label-danger">N/A</span></td>
							                <td class="text-center" style="font-size: 15pt; font-weight: bold;"><span class="label label-danger">50만원</span></td>
							                <td class="text-center" style="font-size: 15pt; font-weight: bold;"><span class="label label-danger">100만원</span></td>
								        </tr>
							            
							            
							    </table>
						    </div>
						</div>	
 					
 					</div>
 					
				  </section>				        	
				        	
				    



				    
				<section id="total-price-table" class="background-grey">
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
