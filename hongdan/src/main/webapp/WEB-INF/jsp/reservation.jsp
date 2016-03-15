<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

	<jsp:include page="include/inc_head.jsp"  />

		<body class="wide">
		
		  	<jsp:include page="include/inc_body_loader.jsp"  />
		 
			  <div class="wrapper">
			  		
			  		<jsp:include page="include/inc_body_header.jsp"  />  
			
				    <section class="menu-top-banner background-5 page-title-center">
				        <div class="container">
				            <div class="page-title col-md-8">
				                <h1>Reservation</h1>
				                <span>Book your table</span>
				            </div>
				        </div>
				    </section>
			
			
				    <section>
				        <div class="container">
				            <div class="row">
				                <div class="col-md-10 col-md-offset-1">
				                <form>
				                    <div class="row">
				                        <div class="col-md-6">
				                            <div class="form-group">
				                                <label class="upper" for="name">Your Name</label>
				                                <input type="text" class="form-control required" name="senderName" placeholder="Enter name" id="name" aria-required="true">
				                            </div>
				                        </div>
				                        <div class="col-md-6">
				                            <div class="form-group">
				                                <label class="upper" for="email">Your Email</label>
				                                <input type="email" class="form-control required email" name="senderEmail" placeholder="Enter email" id="email" aria-required="true">
				                            </div>
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col-md-6">
				                            <div class="form-group">
				                                <label class="upper" for="phone">Your Phone</label>
				                                <input type="text" class="form-control required" name="phone" placeholder="Enter phone" id="phone" aria-required="true">
				                            </div>
				                        </div>
				                        <div class="col-md-6">
				                            <div class="form-group">
				                                <label class="upper" for="company">Your Company</label>
				                                <input type="text" class="form-control required" name="company" placeholder="Enter company" id="company" aria-required="true">
				                            </div>
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col-md-12">
				                            <div class="form-group">
				                                <label class="upper" for="comment">Your comment</label>
				                                <textarea class="form-control required" name="comment" rows="9" placeholder="Enter comment" id="comment" aria-required="true"></textarea>
				                            </div>
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col-md-12">
				                            <div class="form-group text-center">
				                                <button class="button border rounded red" type="submit">BOOK YOUR TABLE</button>
				                            </div>
				                        </div>
				                    </div>
				                </form>
				            </div>
				            </div>
				        </div>
				    </section>
			
			    	<jsp:include page="include/inc_footer.jsp"  />
		
		  	</div>
		 
		 	<jsp:include page="include/inc_footer2.jsp"  />
		  
		</body>
</html>
