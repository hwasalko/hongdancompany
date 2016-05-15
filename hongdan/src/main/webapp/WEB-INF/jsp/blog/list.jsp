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
											
										<!-- Navigation -->	
										<ol class="breadcrumb">
											  <li><a href="/">Home</a></li>
											  <li class="active">BLOG</li>
										</ol>	
										
								        <div class="row">
								        	
											<hr style="padding-top : 5px;">
								            
								            
								            <!-- Blog Entries Column -->
								            <div class="col-md-9">
								            	
												<c:forEach var="list" items="${blogList }">
												
														<blockquote>
														        <!-- Blog Post -->
												                
												                <h4>
												                	<a href="/blog/${list.BLOG_SEQ}?pageNo=${paging.pageNo}">${list.TITLE}</a>
												                	<c:if test="${list.TIME_DIFF_HOUR lt 2 }">
												                		<span class="label label-danger" style="font-size: 12px;">New</span>
												                	</c:if>
												                </h4>
												                
												                <!-- <p class="lead">by Hongdan</p> -->
												                
												                <p style="font-size: 14px; color: gray;">
												                	<span class="glyphicon glyphicon glyphicon-folder-open"></span> &nbsp;Category : ${list.BLOG_CTG_NM}
												                	| <i class="fa fa-calendar"></i> ${list.REG_DDTM} 
												                	| <span class="glyphicon glyphicon-user"></span> by ${list.REG_ID}
												                	<!-- tag값이 있을경우에만 표시 -->
												                	<c:if test="${not empty list.TAGS}">
													                	| <span class="glyphicon glyphicon-tags"></span> Tags : 
													                	
													                			<c:set var="orgTags" value="${list.TAGS}" />
													                			<c:set var="taglist" value="${ fn:split(orgTags, ',') }" /> 
													                			<c:forEach var="tag" items="${taglist}">
													                					<a href="javascript:searchTags('${tag}')"><span class="label label-default">${tag}</span></a>
													                			</c:forEach>
												                	</c:if>	
												                			
												                </p>
												                
												                
												         </blockquote>
												         
												         <hr style="border : 1px #CCC dotted;">
										                
												</c:forEach>
								                
								                <c:if test="${empty blogList}">
								                		<p style="font-size: 16px; color: red; text-align: center;">검색 결과가 없습니다.</p>								                	
								                </c:if>
								               
								                
								                <div class="text-right" >
								                <p>전체 <strong>${blogListTotalCount}</strong> 건</p>
									            </div>
								                
								                
								                
								                <c:if test="${not empty blogList}">
								                
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
												
												</c:if>
												
												
												
												<!-- 글쓰기 버튼 -->
												<c:if test="${ not empty sessionScope }">
												<div class="text-right" style="padding-bottom : 10px;">
													<a href="/blog/write"><button class="btn btn-success btn-xs"><i class="fa fa-pencil-square-o"></i>&nbsp;글쓰기</button></a>
												</div>
												</c:if>
												
												
								
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
									                    <h4>
									                    	<i class="fa fa-folder-open"></i> Category 
									                    	<a href="/admin/setting_category"><span class="label label-success pull-right" ><i class="fa fa-cog" aria-hidden="true"></i></span></a>
									                    </h4>
									                    
								                    	<c:forEach var="ctg" items="${categoryList }">
															&nbsp;
															<a href="javascript:searchCategory('${ ctg.BLOG_CTG_CD}')">
																 
																<c:if test="${searchCategory == ctg.BLOG_CTG_CD }">
																	<strong class="text-danger"><i class="fa fa-angle-double-right"></i> ${ ctg.BLOG_CTG_NM} (${ctg.BLOG_CTG_CD_CNT})</strong>
																</c:if>
																<c:if test="${searchCategory != ctg.BLOG_CTG_CD }">
																	<i class="fa fa-angle-right"></i> ${ ctg.BLOG_CTG_NM} (${ctg.BLOG_CTG_CD_CNT})
																</c:if>
																
															</a> 
															<br>
					                        		  	</c:forEach>
								                </div>
								
								                <!-- Blog Tags Well -->
								                <div class="well">
									                    <h4><i class="fa fa-tags"></i> Popular Tags:</h4>
									                    <div class="row">
										                        <div class="col-lg-12">
										                        		<c:forEach var="tagNm" items="${tagsList }">
										                        			<a href="javascript:searchTags('${ tagNm }');"><span class="label label-primary">${ tagNm }</span></a>
										                        		</c:forEach>
										                        </div>
									                    </div>
								                </div>
								                         
								
								            </div>
								
								        </div>
								        <!-- /.row -->
								        
								        
								        
								    </div>
								    <!-- /.container -->
								    
								    
								    
			    
			    </section>
		
			  
			  
			  <form id="frm" name="frm" method="POST" >
			  		<input type="hidden" name="searchVal" id="searchVal">
			  		<input type="hidden" name="searchCategory" id="searchCategory" value="${searchCategory}">
			  </form>
			  
			  
			  
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
			
				<script type="text/javascript">

				 	
					$(window).ready(function(){
	
						// 엔터키 입력 이벤트
						$("#searchWord").keydown(function (key) {
								  if (key.keyCode == 13) {
								    goPage(1);
								  }
							});
			
					});				

				
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
					
					// Category 클릭 시
					function searchCategory(ctgCd){
						 $("#searchCategory").val(ctgCd);	 //카테고리 선택값 저장						 
						 goPage(1);
					}
				
				</script>
			
					  
		</body>
		
</html>
