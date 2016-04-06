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
			                <span>Hongdan 블로그 입니다.</span>
			            </div>
			        </div>
			    </section>
			    
			    
			    
			    
			    
			    <section class="p-b-10">
			    
								<!-- Page Content -->
								    <div class="container">
								
								        <div class="row">
								
								            <!-- Blog Entries Column -->
								            <div class="col-md-8">
								            	
								            	<blockquote>총 ${blogList.size()} 건의 포스트가 존재합니다.</blockquote>
								            	<hr style="padding-bottom : 20px;">
								
												<c:forEach var="list" items="${blogList }">
												        <!-- Blog Post -->
										                <h2><a href="/admin/blog/${list.BLOG_SEQ}">${list.TITLE}</a></h2>
										                <p class="lead">by Hongdan</p>
										                <p><span class="glyphicon glyphicon-time"></span> Posted on ${list.REG_DDTM} <span class="label label-danger">New</span> <small>1 hours ago</small> </p>
										                <hr>
										                <img class="img-responsive" src="http://placehold.it/900x300" alt="">
										                <p>${list.CONTENTS}</p>
										                <a class="btn btn-primary" href="#">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
										
										                <hr>
										                
												</c:forEach>
								                
								               
								                
								                
								                <!-- pageing -->
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
								
								
								            <!-- Blog Sidebar Widgets Column -->
								            <div class="col-md-4">
								
								                <!-- Blog Search Well -->
								                <div class="well">
								                    <h4>Search</h4>
								                    <div class="input-group">
								                        <input type="text" class="form-control">
								                        <span class="input-group-btn">
								                            <button class="btn btn-default" type="button">
								                                <span class="glyphicon glyphicon-search"></span>
								                        	</button>
								                        </span>
								                    </div>
								                    <!-- /.input-group -->
								                </div>
								
								                <!-- Blog Categories Well -->
								                <div class="well">
								                    <h4>Categories</h4>
								                    <div class="row">
								                        <div class="col-lg-12">
								                        	<a href="#"><span class="label label-primary">전체</span></a>
								                        </div>
								                        <div class="col-lg-12">
								                        	<a href="#"><span class="label label-success">Benz</span></a>								                            
								                            <a href="#"><span class="label label-success">BMW</span></a>
								                            <a href="#"><span class="label label-success">New Cars</span></a>
								                            <a href="#"><span class="label label-success">...</span></a>
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
