<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />

		<body class="wide">
		
				<jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
		 
		   <div class="wrapper">
		   
		   		<jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />
		   
			    <section class="menu-top-banner background-blog page-title-center">
			        <div class="container">
			            <div class="page-title col-md-8">
			                <h1>BLOG</h1>
			                <span>Hongdan 블로그 입니다.</span>
			            </div>
			        </div>
			    </section>
			    
			    
			    
			    
			    
			    <section class="p-b-20">
			    
								<!-- Page Content -->
								    <div class="container">
											
								        <div class="row">
								        	<H4>
								        		전체 <strong>${blogListTotalCount}</strong> 건
								        	</H4>	

											<hr style="border-color : #BBB ; padding-bottom : 20px; padding-top : 20px;">
								            
								            <!-- Blog Entries Column -->
								            <div class="col-md-9">
								            	
												<c:forEach var="list" items="${blogList }">
												
														<blockquote>
														        <!-- Blog Post -->
												                
												                <h4><a href="/blog/${list.BLOG_SEQ}">${list.TITLE}</a> <span class="label label-danger" style="font-size: 10px;">New</span></h4>
												                <!-- <p class="lead">by Hongdan</p> -->
												                
												                <p style="font-size: 14px; color: gray;">
												                	<span class="glyphicon glyphicon-time"></span> Posted on ${list.REG_DDTM}
												                	| <span class="glyphicon glyphicon-user"></span> by Hongdan
												                	| <span class="glyphicon glyphicon-tags"></span> Tags <span class="label label-default">Benz</span>
												                </p>
												                
												                
												         </blockquote>
												         
												         <hr style="border :1px #CCC dotted;">
										                
												</c:forEach>
								                
								               
								                
								                
								                <!-- pageing -->
								                <div class="text-center" >
												    <nav>
														  <ul class="pagination">
														  		<li>
																      <a href="/blog/list/1" aria-label="Previous">
																      		<span aria-hidden="true">&laquo;</span>
																      </a>
															    </li>
															    <c:forEach var="i" begin="${blogListStartPageNo}" end="${blogListEndPageNo}" step="1">
																		<c:choose>
																				<c:when test="${i eq blogListCurrentPageNo}">
																					<li class="active">
																				</c:when>
																				<c:otherwise>
																					<li>
																				</c:otherwise>
																		</c:choose>
																		<a href="/blog/list/${i}">${i}</a> </li>
																</c:forEach>
																
															    <li>
																      <a href="/blog/list/${blogListEndPageNo}" aria-label="Next">
																        	<span aria-hidden="true">&raquo;</span>
																      </a>
															    </li>
														  </ul>
													</nav>	
												</div>
												
												<div class="text-right" style="padding-bottom : 10px;">
													<a href="/blog/write"><button class="btn btn-success"><i class="fa fa-pencil-square-o"></i>&nbsp;글쓰기</button></a>
												</div>
												
												
								
								            </div>
								
								
								            <!-- Blog Sidebar Widgets Column -->
								            <div class="col-md-3">
								
								                <!-- Blog Search Well -->
								                <div class="well">
								                    <h4>Search</h4>
								                    <div class="input-group">
								                        <input type="text" class="form-control">
								                        <span class="input-group-btn">
								                            <button class="btn btn-default btn-xs" type="button">
								                                <span class="glyphicon glyphicon-search"></span>
								                        	</button>
								                        </span>
								                    </div>
								                    <!-- /.input-group -->
								                </div>
								
								                <!-- Blog Categories Well -->
								                <div class="well">
								                    <h4>Tags</h4>
								                    <div class="row">
								                        <div class="col-lg-12">
								                        	<a href="#"><span class="label label-default">Benz</span></a>								                            
								                            <a href="#"><span class="label label-default">BMW</span></a>
								                            <a href="#"><span class="label label-default">New Cars</span></a>
								                            <a href="#"><span class="label label-default">Benz</span></a>								                            
								                            <a href="#"><span class="label label-default">BMW</span></a>
								                            <a href="#"><span class="label label-default">New Cars</span></a>
								                            <a href="#"><span class="label label-default">...</span></a>
								                        </div>
								                    </div>
								                    <!-- /.row -->
								                </div>
								
								                <!-- Side Widget Well 
								                <div class="well">
								                    <h4>Side Widget Well</h4>
								                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p>
								                </div>
								                -->
								
								            </div>
								
								        </div>
								        <!-- /.row -->
								        
								        
								        
								    </div>
								    <!-- /.container -->
								    
								    
								    
			    
			    </section>
		
			  
			  
			  
			  
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
					  
		</body>
		
</html>
