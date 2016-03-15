<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="include/inc_head.jsp"  />

		<body class="wide">
		
				<jsp:include page="include/inc_body_loader.jsp"  />
		 
		   <div class="wrapper">
		   
		   		<jsp:include page="include/inc_body_header.jsp"  />
		   
			    <section class="menu-top-banner background-2 page-title-center">
			        <div class="container">
			            <div class="page-title col-md-8">
			                <h1>Contact Us</h1>
			                <span>Get in touch</span>
			            </div>
			        </div>
			    </section>
		
			    <section>
			        <div class="container">
			            <div class="row">
			                <div class="col-md-6">
			                    <h3 class="text-uppercase">Get In Touch</h3>
			                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum porttitor cursus. Duis nec nulla turpis. Nulla lacinia laoreet odio, non lacinia nisl malesuada vel. Aenean malesuada fermentum bibendum.</p>
			                    <div class="m-t-30">
			                        <div id="contact-form-result" class="alert alert-success fade in" role="alert">
			                            <a href="#" class="close" data-dismiss="alert">&times;</a> We have <strong>successfully</strong> received your Message and will get Back to you as soon as possible.</div>
			                            <form id="contact-form" name="contact-form" action="#" method="post">
			                            <div class="row">
			                                <div class="col-md-6">
			                                    <div class="form-group">
			                                        <label for="name">Your Name</label>
			                                        <input type="text" class="form-control required" name="senderName" placeholder="Enter name" id="name" aria-required="true" required>
			                                    </div>
			                                </div>
			                                <div class="col-md-6">
			                                    <div class="form-group">
			                                        <label for="email">Your Email</label>
			                                        <input type="email" class="form-control" id="email" name="senderEmail" placeholder="Email" required>
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="row">
			                                <div class="col-md-12">
			                                    <div class="form-group">
			                                        <label for="subject">Your Subject</label>
			                                        <input type="text" class="form-control required" name="senderSubject" placeholder="Enter Subject" id="subject" required>
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="row">
			                                <div class="col-md-12">
			                                    <div class="form-group">
			                                        <label for="comment">Your comment</label>
			                                        <textarea class="form-control required" name="senderMessage" rows="9" placeholder="Enter comment" id="comment" required></textarea>
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="row">
			                                <div class="col-md-12">
			                                    <div class="form-group text-center">
			                                        <button class="btn btn-primary" type="submit"><i class="fa fa-paper-plane"></i>&nbsp;Send message</button>
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
		
		    	<jsp:include page="include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="include/inc_footer2.jsp"  />
		  
		</body>
		
</html>
