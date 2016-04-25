<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


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
												                	<i class="fa fa-calendar"></i> ${list.REG_DDTM}
												                	| <span class="glyphicon glyphicon-user"></span> by ${list.REG_ID}
												                	
												                	<!-- tag값이 있을경우에만 표시 -->
												                	<c:if test="${not empty list.TAGS}">
													                	| <span class="glyphicon glyphicon-tags"></span> Tags : 
													                	
													                			<c:set var="orgTags" value="${list.TAGS}" />
													                			<c:set var="taglist" value="${ fn:split(orgTags, ',') }" /> 
													                			<c:forEach var="tag" items="${taglist}">
													                					<span class="badge badge-info">${tag}</span>
													                			</c:forEach>
												                	</c:if>	
												                			
												                </p>
												                
												                
												         </blockquote>
												         
												         <hr style="border :1px #CCC dotted;">
										                
												</c:forEach>
								                
								               
								                
								                
								                <!-- pageing -->
								                <div class="text-center" >
												    <nav>
												    
														  <ul class="pagination">
														  		<li>
																      <a href="/blog/list/${paging.firstPageNo}" aria-label="Previous">
																      		<span aria-hidden="true">First</span>
																      </a>
															    </li>
															    <li>
																      <a href="/blog/list/${paging.prevPageNo}" aria-label="Previous">
																      		<span aria-hidden="true">Previous</span>
																      </a>
															    </li>
															    
															    <c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1">
																		<c:choose>
																				<c:when test="${i eq paging.pageNo}">
																					<li class="active"><a href="/blog/list/${i}">${i}</a></li>
																				</c:when>
																				<c:otherwise>
																					<li><a href="/blog/list/${i}">${i}</a> </li>
																				</c:otherwise>
																		</c:choose>
																</c:forEach>
																
																<li>
																      <a href="/blog/list/${paging.nextPageNo}" aria-label="Next">
																        	<span aria-hidden="true">Next</span>
																      </a>
															    </li>
															    <li>
																      <a href="/blog/list/${paging.finalPageNo}" aria-label="Next">
																        	<span aria-hidden="true">Last</span>
																      </a>
															    </li>
														  </ul>
														  
													</nav>	
												</div>
												
												
												
												
												
												<!-- 글쓰기 버튼 -->
												<div class="text-right" style="padding-bottom : 10px;">
													<a href="/blog/write"><button class="btn btn-success btn-xs"><i class="fa fa-pencil-square-o"></i>&nbsp;글쓰기</button></a>
												</div>
												
												
								
								            </div>
								
								
								            <!-- Blog Sidebar Widgets Column -->
								            <div class="col-md-3">
								
								                <!-- Blog Search Well -->
								                <div class="well">
								                    <h4><i class="fa fa-search"></i> Search</h4>
								                    <div class="input-group">
								                        <input type="text" class="form-control">
								                        <span class="input-group-btn">
								                            <button class="btn btn-default btn-sm" type="button">
								                                <span class="glyphicon glyphicon-search"></span>
								                        	</button>
								                        </span>
								                    </div>
								                    <!-- /.input-group -->
								                </div>
								
								                <!-- Blog Categories Well -->
								                <div class="well">
									                    <h4><i class="fa fa-tags"></i> Popular Tags:</h4>
									                    <div class="row">
										                        <div class="col-lg-12">
										                        		<a href=""><span class="badge badge-info">Windows 8</span></a>
										                        		<a href=""><span class="badge badge-info">Windows 8</span></a>
										                        		<a href=""><span class="badge badge-info">Windows 8</span></a>
										                        		<a href=""><span class="badge badge-info">Windows 8</span></a>
										                        		<a href=""><span class="badge badge-info">Windows 8</span></a>
										                        		<a href=""><span class="badge badge-info">Windows 8</span></a>
										                        		<a href=""><span class="badge badge-info">Windows 8</span></a>
										                        </div>
									                    </div>
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
