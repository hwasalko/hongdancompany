<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />

		<body class="wide">
		
				<jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
		 
		   <div class="wrapper">
		   
		   		<jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />
		   
			    <section class="menu-top-banner background-2 page-title-center">
			        <div class="container">
			            <div class="page-title col-md-8">
			                <h1>Membership</h1>
			                <span>멤버쉽 가입 신청</span>
			            </div>
			        </div>
			    </section>
		
			    <section>
			        <div class="container">
			            <div class="row">
			                <div class="col-md-6">
			                    <h3 class="text-uppercase">멤버쉽 가입 신청</h3>
			                    <p>아래 내용을 입력 후 신청해주시면 멤버쉽 가입을 위한 안내전화를 드립니다.</p>
			                    <div class="m-t-30">
			                        <div id="contact-form-result" class="alert alert-success fade in" role="alert">
			                            <a href="#" class="close" data-dismiss="alert">&times;</a> We have <strong>successfully</strong> received your Message and will get Back to you as soon as possible.</div>
			                            <form id="membershipFrm" name="membershipFrm"  method="post" action="/membership/insert" onsubmit="return false;">
				                            <div class="row">
				                                <div class="col-md-6">
				                                    <div class="form-group">
				                                        <label for="name">이름 <span class="text-danger">*</span></label>
				                                        <input type="text" class="form-control required" name="appl_nm" id="appl_nm"  placeholder="이름을 입력하세요" aria-required="true" maxlength="50" required>
				                                    </div>
				                                </div>
				                                <div class="col-md-6">
				                                    <div class="form-group">
				                                        <label for="subject">연락처 <span class="text-danger">*</span></label>
				                                        <input type="tel" class="form-control required" name="appl_hp" id="appl_hp" placeholder="연락받을 번호를 입력하세요"  maxlength="13" required>
				                                    </div>
				                                </div>
				                            </div>
				                            <div class="row">
				                                <div class="col-md-12">
				                                    <div class="form-group">
				                                    	<label for="email">Email</label>
				                                        <input type="email" class="form-control" name="appl_email" id="appl_email" placeholder="Email 주소를 입력하세요" maxlength="50">
				                                    </div>
				                                </div>
				                            </div>
				                            <div class="row">
				                                <div class="col-md-12">
				                                    <div class="form-group">
				                                        <label for="comment">전달내용</label>
				                                        <textarea class="form-control required" name="appl_comment" id="appl_comment"  rows="2" placeholder="신청 시 전달할 내용을 입력하세요"  maxlength="1000"></textarea>
				                                    </div>
				                                </div>
				                            </div>
				                            <div class="row">
				                                <div class="col-md-12">
				                                    <div class="form-group text-center">
				                                        <button class="btn btn-primary" type="submit" onclick="javascript:apply();"><i class="fa fa-paper-plane"></i>&nbsp;신청</button>
				                                    </div>
				                                </div>
				                            </div>
			                        	</form>
			                        	
			                        <strong><mark># 신청현황</mark></strong>
			            			<table class="table table-condensed table-striped table-hover">
	                        			<thead>
	                        				<tr class="text-success" style="border-top-style: dotted; border-top-width: 1px;">
		                        				<th class="text-center">번호</th>
		                        				<th class="text-center">이름</th>
		                        				<th class="text-center">연락처</th>
		                        				<th class="text-center">이메일</th>
		                        				<th class="text-center">신청일</th>
		                        			</tr>	
	                        			</thead>
	                        			<tbody>
	                        			
		                        			<c:forEach var="list" items="${membershipApplyList }">
		                        			
		                        				<tr title="[전달내용] ${list.APPL_COMMENT}">
		                        					<td class="text-center">${list.APPL_NO}</td>
		                        					<td class="text-center">${list.APPL_NM}</td>
		                        					<td class="text-center">${list.APPL_HP}</td>
		                        					<td class="text-center">${list.APPL_EMAIL}</td>
		                        					<td class="text-center">${list.REG_DDTM}</td>
		                        				</tr>
		                        				
		                        			</c:forEach>
		                        				
	                        			</tbody>
	                        		</table>
	                        		<hr style="padding-bottom: 50px;">
	                        		
			                    </div>
			                </div>
			                <div class="col-md-6">
			                    
			                    <div class="row" style="padding-left: 20px;">
			                    	<h4>연락처</h4>
	                        		<p>
		                        		<img src="/images/main/kakao_logo.png" width="20">&nbsp;&nbsp;<strong>카카오톡ID :</strong> <strong class="text-info">hongdan</strong><br>
			                            <i class="fa fa-phone"></i> <strong>Phone : </strong> <strong class="text-info">010-1234-5678</strong><br>
			                            <i class="fa fa-envelope-o"></i> <strong>Email : </strong> <span class="text-info"><a href="mailto:jwhongdan@naver.com">jwhongdan@naver.com</a></span>
		                            </p>
			                    </div>
			                    
			                </div>
			            </div>
			            
			            
			            
			        </div>
			    </section>
		
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
		  
		  
		  
		  	<script type="text/javascript">
		  	
				 	// validation
					function check(){
						
						var result = true;
						
						if( $("#appl_nm").val() == '' ){
							alert( "이름을 입력하세요" );
							$("#appl_nm").focus();
							result = false;
							return false;
						}
						
						if( $("#appl_hp").val() == '' ){
							alert( "연락처를 입력하세요" );
							$("#appl_hp").focus();
							result = false;
							return false;
						}
						
						return result;
					}
				 	
					//  신청 버튼 클릭 시 
					function apply() {
						
						if(check()){
							$("#membershipFrm").attr("onsubmit", "true");
							//$("#membershipFrm").submit();
						}
						
					}
		  	
		  	</script>
		  
		  
		</body>
		
</html>
