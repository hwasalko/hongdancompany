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
													                					<a href="javascript:searchTags('${tag}')"><span class="badge badge-info">${tag}</span></a>
													                			</c:forEach>
												                	</c:if>	
												                			
												                </p>
												                
												                
												         </blockquote>
												         
												         <hr style="border :1px #CCC dotted;">
										                
												</c:forEach>
								                
								                <c:if test="${empty blogList}">
								                		<p style="font-size: 16px; color: red; text-align: center;">검색 결과가 없습니다.</p>								                	
								                </c:if>
								               
								                
								                
								                <!-- pageing -->
								                <div class="text-center" >
												    <nav>
												    
														  <ul class="pagination">
														  		<li>
																      <a href="javascript:goPage('${paging.firstPageNo}')" aria-label="Previous">
																      		<span aria-hidden="true">&laquo;</span>
																      </a>
															    </li>
															    
															    <li>
																	      <a href="javascript:goPage('${paging.prevPageNo}')" aria-label="Previous">
																	      		<span aria-hidden="true">&lsaquo;</span>
																	      </a> 
																</li>
															    
															    <c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1">
																		<c:choose>
																				<c:when test="${i eq paging.pageNo}">
																					<li class="active"><a href="/blog/list/${i}">${i}</a></li>
																				</c:when>
																				<c:otherwise>
																					<li><a href="javascript:goPage('${i}')">${i}</a> </li>
																				</c:otherwise>
																		</c:choose>
																</c:forEach>
																
																<li>
																      <a href="javascript:goPage('${paging.nextPageNo}')" aria-label="Next">
																        	<span aria-hidden="true">&rsaquo;</span>
																      </a>
															    </li>
															    <li>
																      <a href="javascript:goPage('${paging.finalPageNo}')" aria-label="Next">
																        	<span aria-hidden="true">&raquo;</span>
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
								                        <input type="text" class="form-control" id="searchWord" value="${sarchWord }">
								                        <span class="input-group-btn">
								                            <button class="btn btn-default btn-sm" type="button" onclick="goPage(1);">
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
										                        		<c:forEach var="tagNm" items="${tagsList }">
										                        			<a href="javascript:searchTags('${ tagNm }');"><span class="badge badge-info">${ tagNm }</span></a>
										                        		</c:forEach>
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
		
			  
			  
			  <form id="frm" name="frm" method="POST" >
			  		<input type="hidden" name="searchVal" id="searchVal">
			  </form>
			  
			  
			  
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
			
				<script type="text/javascript">
					
					// 페이지 클릭 시
					function goPage(no){
						 var val = $("#searchWord").val();	//검색어
						 
						$("#searchVal").val(val);
						$('#frm').attr({action : '/blog/list/' + no }).submit();
					}
					
					// tag 클릭 시
					function searchTags(tagNm){
						 $("#searchWord").val(tagNm);	 //검색어 입력창에 tag명 입력						 
						 goPage(1);
					}
				
				</script>
			
					  
		</body>
		
</html>
