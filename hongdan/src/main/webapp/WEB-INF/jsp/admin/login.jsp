<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />
		
		<head>
			<style type="text/css">
				
				/* 로그인 박스 */
				.panel-heading {
				    padding: 5px 15px;
				}
				
				.panel-footer {
					padding: 1px 15px;
					color: #A0A0A0;
				}
				
				.profile-img {
					width: 96px;
					height: 96px;
					margin: 0 auto 10px;
					display: block;
					-moz-border-radius: 50%;
					-webkit-border-radius: 50%;
					border-radius: 50%;
				}
				
			</style>	
		</head>

		<body class="wide">
		
				<jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
		 
		   <div class="wrapper">
		   
		   		<jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />
		   
		   		
		   		<section class="menu-top-banner background-5 page-title-center">
			        <div class="container">
			            <div class="page-title col-md-8">
			                <h1>LOGIN</h1>
			                <span>Admin Login</span>
			            </div>
			        </div>
			    </section>
			
			    <section class="background-white">
			        
			        	    <div class="container" style="margin-top:40px">
								<div class="row">
									<div class="col-sm-6 col-md-4 col-md-offset-4">
										<div class="panel panel-default">
											<div class="panel-heading">
												<strong> Administrator Login </strong>
											</div>
											<div class="panel-body">
												<form role="form" action="/admin/login" name="loginFrm"  id="loginFrm" method="POST" onsubmit="return false;">
													<fieldset>
														<div class="row">
															<div class="center-block">
																<img class="profile-img"
																	src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120" alt="">
															</div>
														</div>
														<div class="row">
															<div class="col-sm-12 col-md-10  col-md-offset-1 ">
																<div class="form-group">
																	<div class="input-group">
																		<span class="input-group-addon">
																			<i class="glyphicon glyphicon-user"></i>
																		</span> 
																		<input class="form-control" placeholder="Username" name="frm_admin_id" id="frm_admin_id" value="" type="text" autofocus>
																	</div>
																</div>
																<div class="form-group">
																	<div class="input-group">
																		<span class="input-group-addon">
																			<i class="glyphicon glyphicon-lock"></i>
																		</span>
																		<input class="form-control" placeholder="Password" name="frm_admin_password" id="frm_admin_password" type="password" value="">
																	</div>
																</div>
																<div class="form-group">
																	<input type="submit" class="btn btn-lg btn-primary btn-block" value="LOGIN"  onclick="javascript:loginCheck();">
																</div>
															</div>
														</div>
													</fieldset>
												</form>
											</div>
											<div class="panel-footer ">
												관리자만 로그인 가능합니다.
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
				
			
				function loginCheck(){
					
					var checkOK = true;
					
					if( $("#frm_admin_id").val() == '' ){
						alert("ID를 입력하시기 바랍니다.");
						$("#frm_admin_id").focus();
						checkOK = false;
						return false;
					}
					
					if( $("#frm_admin_password").val() == ''  ){
						alert("Password를 입력하시기 바랍니다.");
						$("#frm_admin_password").focus();
						checkOK = false;
						return false;
					}
					
					if(checkOK){
						$("#admin_id").val( $("#frm_admin_id").val() );
						$("#admin_password").val( $("#frm_admin_password").val() );
						$("#loginFrm").attr("onsubmit", "true");
						$("#loginFrm").submit();	
					}
					
					return checkOK;
					
				}
			
			</script>
		  
		</body>
		
</html>
