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
			    
			    
			    
			    
			    
			    <section class="p-b-10">
			    
								<!-- Page Content -->
								    <div class="container">
								
								        <div class="row">
								
								            <!-- Blog Entries Column -->
								            <div class="col-lg-9">
								            	
								            	        <!-- 제목 -->
										                <h2>${blogMap.TITLE}</h2>
										                
										                <!-- 등록자 -->
										                <p class="lead">by Hongdan</p>
										                
										                <hr>
										                
										                <!-- 등록시간 -->
										                <p><span class="glyphicon glyphicon-time"></span> Posted on ${blogMap.REG_DDTM} <span class="label label-danger">New</span> <small>1 hours ago</small> </p>
										                
										                <hr>
										                
										                <!-- 내용  -->
										                <p class="lead">
										                	${blogMap.CONTENTS}
										                </p>
										                
										                
										                
										                <!-- Blog Comments 

										                
										                <div class="well">
										                    <h4>Leave a Comment:</h4>
										                    <form role="form">
										                        <div class="form-group">
										                            <textarea class="form-control" rows="3"></textarea>
										                        </div>
										                        <button type="submit" class="btn btn-primary">Submit</button>
										                    </form>
										                </div>
										
										                <hr>
										
										                
										                
										                <div class="media">
										                    <a class="pull-left" href="#">
										                        <img class="media-object" src="http://placehold.it/64x64" alt="">
										                    </a>
										                    <div class="media-body">
										                        <h4 class="media-heading">Start Bootstrap
										                            <small>August 25, 2014 at 9:30 PM</small>
										                        </h4>
										                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
										                        
										                        
										                        
										                        <div class="media">
										                            <a class="pull-left" href="#">
										                                <img class="media-object" src="http://placehold.it/64x64" alt="">
										                            </a>
										                            <div class="media-body">
										                                <h4 class="media-heading">Nested Start Bootstrap
										                                    <small>August 25, 2014 at 9:30 PM</small>
										                                </h4>
										                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
										                            </div>
										                        </div>
										                        
										                    </div>
										                </div>
										                -->
								                
								                <hr style="margin-top:5em;">
								                
								                <!-- Pager -->
								                <ul class="pager">
								                    <li class="previous">
								                        <a href="#">&larr; 이전글</a>
								                    </li>
								                    <li class="next">
								                        <a href="#">다음글 &rarr;</a>
								                    </li>
								                </ul>
								                
								                
								
								            </div>
								
								
								            <!-- Blog Sidebar Widgets Column -->
								            <div class="col-md-3">
								
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
