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
			        
			        
			        	<div class="row">
						    	<div id="postlist">
						    	
						    	
									<div class="panel">
						                <div class="panel-heading">
						                    <div class="text-center">
						                        <div class="row">
						                            <div class="col-sm-9">
						                                <h3 class="pull-left">Welcome</h3>
						                            </div>
						                            <div class="col-sm-3">
						                                <h4 class="pull-right">
						                                <small><em>2014-07-30<br>18:30:00</em></small>
						                                </h4>
						                            </div>
						                        </div>
						                    </div>
						                </div>
						                
						            <div class="panel-body">
						                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
						                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						                consequat. Duis aute irure dolor in... <a href="#">Read more</a>
						            </div>
						            
						            <div class="panel-footer">
						                <span class="label label-default">Welcome</span> <span class="label label-default">Updates</span> <span class="label label-default">July</span>
						            </div>
						        </div>
						        
						        <div class="panel">
						                <div class="panel-heading">
						                    <div class="text-center">
						                        <div class="row">
						                            <div class="col-sm-9">
						                                <h3 class="pull-left">Post With image</h3>
						                            </div>
						                            <div class="col-sm-3">
						                                <h4 class="pull-right">
						                                <small><em>2014-07-30 18:30:00</em></small>
						                                </h4>
						                            </div>
						                        </div>
						                    </div>
						                </div>
						                
						            <div class="panel-body">
						                <a href="#" class="thumbnail">
						                    <img alt="Image" src="http://i.imgur.com/tAHVmXi.jpg">
						                </a>
						                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
						                quis nostrud exercitation... <a href="#">Read more</a>
						            </div>
						            
						            <div class="panel-footer">
						                <span class="label label-default">Image</span> <span class="label label-default">Updates</span> <span class="label label-default">July</span>
						            </div>
						        </div>
						    </div>
						
						</div>
			        
			        
			        
			        
			        	<c:forEach var="list" items="${blogList }">
			        	
			        	<div class="row">
			        		<div class="col-md-12">
					        		<div class="panel panel-default">
					        			<div class="panel-heading">
					        						<h4>
					        								${list.TITLE} 
					        								<span style="padding-left:10px;"></span>
					        								<small>
					        									${list.REG_DDTM}
					        									<span style="padding-left: 5px;"></span> 
					        									<span class="label label-danger">New</span>
					        								</small>
					        						</h4>
					        			</div>
					        			<div class="panel-body">
									    	${list.CONTENTS }
									  	</div>
									</div>
							</div>
						</div>			
							
			        	</c:forEach>
			            
			            <hr>
			            
			            	<!-- 
			            	<hr>
				            <div class="row">
				            	 
				                <div class="col-md-4">
				                    <div class="carousel portfolio-basic-image" data-carousel-col="1">
				                        <img alt="image" src="/images/menus/1.jpg">
				                        <img alt="image" src="/images/menus/2.jpg">
				                        <img alt="image" src="/images/menus/3.jpg">
				                    </div>
				                </div>
				                 
				                <div class="col-md-8">
				                    
				                    <div class="page-header">
									  <h4>${list.BLOG_SEQ}. ${list.TITLE} <small>Subtext for header</small> <span class="label label-danger">New</span> </h4>
									</div>
									
				                    <div class="heading heading text-left">    
				                        <span>
				                        		${list.CONTENTS } 
				                        </span>
				                    </div>
				                </div>
				            </div>
				            -->
						
						
						<nav>
							  <ul class="pagination">
								    <li>
									      <a href="#" aria-label="Previous">
									      		<span aria-hidden="true">&laquo;</span>
									      </a>
								    </li>
								    <li class="active"><a href="#">1</a></li>
								    <li><a href="#">2</a></li>
								    <li><a href="#">3</a></li>
								    <li><a href="#">4</a></li>
								    <li><a href="#">5</a></li>
								    <li><a href="#">6</a></li>
								    <li><a href="#">7</a></li>
								    <li><a href="#">8</a></li>
								    <li><a href="#">9</a></li>
								    <li>
									      <a href="#" aria-label="Next">
									        	<span aria-hidden="true">&raquo;</span>
									      </a>
								    </li>
							  </ul>
						</nav>
						
			        </div>
			        	
			    </section>
			  
			  
			  
			  
			  
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
					  
		</body>
		
</html>
