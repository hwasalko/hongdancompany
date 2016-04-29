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
			    
			    
			    
			    
			    
			    <section class="p-b-10">
			    
								<!-- Page Content -->
								    <div class="container">
								
										<!-- Navigation -->	
										<ol class="breadcrumb">
											  <li><a href="/">Home</a></li>
											  <li class="active">BLOG</li>
										</ol>	
										
								
								        <div class="row">
								        
								        	<hr style="padding-top : 10px;">
								
								            <!-- Blog Entries Column -->
								            <div class="col-lg-9">
								            	
								            	        <!-- 제목 -->
										                <h2>
										                	${blogMap.TITLE}
										                	<c:if test="${blogMap.TIME_DIFF_HOUR lt 2 }"> 
										                		<span class="label label-danger" style="font-size: 10px;">New</span>
										                	</c:if>
										                </h2>
										                
										                
										                <!-- 등록정보 -->
										                <p style="font-size: 14px; color: gray;">
												                	<i class="fa fa-calendar"></i> ${blogMap.REG_DDTM} 
												                	| <span class="glyphicon glyphicon-user"></span> by ${blogMap.REG_ID}
												                	
												                	
												                	<!-- tag값이 있을경우에만 표시 -->
												                	<c:if test="${not empty blogMap.TAGS_TRIM}">
													                	| <span class="glyphicon glyphicon-tags"></span> Tags : 
													                	
													                			<c:set var="orgTags" value="${blogMap.TAGS_TRIM}" />
													                			<c:set var="taglist" value="${ fn:split(orgTags, ',') }" /> 
													                			<c:forEach var="tag" items="${taglist}">
													                					<span class="badge badge-info">${tag}</span>
													                			</c:forEach>
												                	</c:if>	
												                	
												        </p>
										                
										                <hr>
										                
										                <!-- 내용  -->
										                <p>
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
								                
								                <div class="row">
										                <div class="col-xs-12">
												                <!-- Pager -->
												                <ul class="pager">
												                    <li class="previous">
												                        <a href="/blog/${blog_seq-1}">&larr; 이전글</a>
												                    </li>
												                    <li class="next">
												                        <a href="/blog/${blog_seq+1}">다음글 &rarr;</a>
												                    </li>
												                </ul>
										                </div>
								                </div>
								                
								                <div class="row" style="padding-top : 20px;">
										                <div class="col-xs-8 text-left" style="padding-bottom : 20px;">
															<a href="/blog/edit/${blog_seq}?pageNo=${pageNo}"><button class="btn btn-primary btn-xs"><i class="fa fa-wrench"></i>&nbsp;수정</button></a>
															<button class="btn btn-danger btn-xs" onClick="del('${blog_seq}');"><i class="fa fa-trash"></i>&nbsp;삭제</button>
														</div>
														<div class="col-xs-4 text-right" style="padding-bottom : 20px;">
															<a href="/blog/list/${pageNo}"><button class="btn btn-default btn-xs"><i class="fa fa-list"></i>&nbsp;목록</button></a>
														</div>
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
								
								            </div>
								
								        </div>
								        <!-- /.row -->
								        
								        
								        
								    </div>
								    <!-- /.container -->
								    
								    
								    
			    
			    </section>
		
			  
			 
			  
			  
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
			
			
				<script type="text/javascript">
				
					 // 삭제버튼 클릭 시
					function del(blog_seq){
						if( confirm("정말 삭제하시겠습니까?") ){
							location.href = '/blog/delete/' + blog_seq;
						}
					}
				
				</script>
			
					  
		</body>
		
</html>
