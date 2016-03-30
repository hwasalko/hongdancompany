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
			            
			            <c:forEach var="list" items="${blogList }">
			            	
			            	<hr>
				            <div class="row">
				            	 
				                <div class="col-md-4">
				                    <div class="carousel portfolio-basic-image" data-carousel-col="1">
				                        <img alt="image" src="/images/menus/1.jpg">
				                        <img alt="image" src="/images/menus/2.jpg">
				                        <img alt="image" src="/images/menus/3.jpg">
				                    </div>
				                </div>
				                <!-- -->
				                <div class="col-md-8">
				                    <div class="heading heading text-left">
				                        <h3>${list.BLOG_SEQ}. ${list.TITLE}</h3>
				                        <span>
				                        		${list.CONTENTS } 
				                        </span>
				                    </div>
				                </div>
				            </div>
				            
						</c:forEach>
			            
			            
			        </div>
			    </section>
			  
		
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
					  
		</body>
		
</html>
