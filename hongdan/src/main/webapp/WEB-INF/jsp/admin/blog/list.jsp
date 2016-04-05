<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />

		<body class="wide">
		
				<jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
		 
		   <div class="wrapper">
		   
		   		<jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />
		   
			    <section class="menu-top-banner background-5 page-title-center">
			        <div class="container">
			            <div class="page-title col-md-8">
			                <h1>BLOG</h1>
			                <span>Blog list</span>
			            </div>
			        </div>
			    </section>
		
				<section class="p-b-10">
						
						<div class="container">
						
							<div class="col-md-12">
							
								<hr>
							
								<c:forEach var="list" items="${blogList }">
								
								    <h2>${list.TITLE}</h2>
								    <p>${list.CONTENTS }</p>
								    <div style="padding-top : 20px;">
										<span class="badge">Posted ${list.REG_DDTM}</span>
										<div class="pull-right">
												<span class="label label-default">alice</span> 
												<span class="label label-primary">story</span> 
												<span class="label label-success">blog</span> 
												<span class="label label-info">personal</span> 
												<span class="label label-warning">Warning</span> 
												<span class="label label-danger">Danger</span>
										</div>         
								     </div>
								     <p>Tags: 
									    <a href="#"><span class="label label-info">Snipp</span></a> 
										<a href="#"><span class="label label-info">Bootstrap</span></a> 
										<a href="#"><span class="label label-info">UI</span></a> 
										<a href="#"><span class="label label-info">growth</span></a>
										| <i class="icon-user"></i> <a href="#">Admin</a> 
										| <i class="icon-calendar"></i> Sept 16th, 2012 at 4:20 pm
									 	| <i class="icon-comment"></i> <a href="#">3 Comments</a>
									   	| <i class="icon-share"></i> <a href="#">39 Shares</a>
									</p>
							    
							    	<hr style="padding-bottom : 20px;">
							    	
							    </c:forEach>	
							    
							</div>
							
						</div>
						
				</section>
		
		
		
				
			  
			  
			  
			  
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
					  
		</body>
		
</html>
