<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
			                            <form id="contact-form" name="contact-form" action="#" method="post">
			                            <div class="row">
			                                <div class="col-md-6">
			                                    <div class="form-group">
			                                        <label for="name">이름</label>
			                                        <input type="text" class="form-control required" name="senderName" placeholder="이름을 입력하세요" id="name" aria-required="true" required>
			                                    </div>
			                                </div>
			                                <div class="col-md-6">
			                                    <div class="form-group">
			                                        <label for="email">Email</label>
			                                        <input type="email" class="form-control" id="email" name="senderEmail" placeholder="Email 주소를 입력하세요" required>
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="row">
			                                <div class="col-md-12">
			                                    <div class="form-group">
			                                        <label for="subject">연락처</label>
			                                        <input type="text" class="form-control required" name="senderSubject" placeholder="연락받을 번호를 입력하세요" id="subject" required>
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="row">
			                                <div class="col-md-12">
			                                    <div class="form-group">
			                                        <label for="comment">신청내용</label>
			                                        <textarea class="form-control required" name="senderMessage" rows="5" placeholder="신청내용을 입력하세요" id="comment" required></textarea>
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="row">
			                                <div class="col-md-12">
			                                    <div class="form-group text-center">
			                                        <button class="btn btn-primary" type="submit"><i class="fa fa-paper-plane"></i>&nbsp;신청</button>
			                                    </div>
			                                </div>
			                            </div>
			                        </form>
			                    </div>
			                </div>
			                <div class="col-md-6">
			                    <h3 class="text-uppercase">Address & Map</h3>
			                    <div class="row">
			                        <div class="col-md-6">
			                            <address>
			                                <strong>Polo, Inc.</strong><br>
			                                795 Folsom Ave, Suite 600<br>
			                                San Francisco, CA 94107<br>
			                                <abbr title="Phone">P:</abbr> (123) 456-7890
			                            </address>
			                        </div>
			                        <div class="col-md-6">
			                            <address>
			                                <strong>Polo Office</strong><br>
			                                795 Folsom Ave, Suite 600<br>
			                                San Francisco, CA 94107<br>
			                                <abbr title="Phone">P:</abbr> (123) 456-7890
			                            </address>
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
