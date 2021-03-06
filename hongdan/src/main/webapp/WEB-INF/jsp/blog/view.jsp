<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" 		uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" 	uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" 	uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />
		
		<head>
			<style type="text/css">
				/* 블로그 내용 html 중 p태그의 마진값 조정 */	
				p {
				    margin-top: 5px;
				    margin-bottom: 5px;
				}
			</style>
		</head>	

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
										                <h3>
										                	${blogMap.TITLE}
										                	<c:if test="${blogMap.TIME_DIFF_HOUR lt 2 }"> 
										                		<span class="label label-danger" style="font-size: 12px;">New</span>
										                	</c:if>
										                </h3>
										                
										                
										                <!-- 등록정보 -->
										                <p style="font-size: 14px; color: gray;">
										                			<span class="glyphicon glyphicon glyphicon-folder-open"></span> &nbsp;Category : <span class="text-info">${blogMap.BLOG_CTG_NM}</span>
												                	| <i class="fa fa-calendar"></i> ${blogMap.REG_DDTM}
												                	| <span class="glyphicon glyphicon-user"></span> by ${blogMap.REG_ID} 
												                	| <span class="glyphicon glyphicon-eye-open"></span> View Count : ${blogMap.VIEW_CNT}<br>
												                	<!-- tag값이 있을경우에만 표시 -->
												                	<c:if test="${not empty blogMap.TAGS_TRIM}">
													                	<br><span class="glyphicon glyphicon-tags"></span> Tags : 
													                	
													                			<c:set var="orgTags" value="${blogMap.TAGS_TRIM}" />
													                			<c:set var="taglist" value="${ fn:split(orgTags, ',') }" /> 
													                			<c:forEach var="tag" items="${taglist}">
													                					<span class="label label-default">${tag}</span>
													                			</c:forEach>
												                	</c:if>	
												                	
												        </p>
										                
										                <hr>
										                
										                <!-- 첨부파일 -->
										                <c:if test="${not empty attachFileList}">										                   
										                <blockquote class="blockquote-reverse" style="font-size: 16px;">
										                	<div class="alert alert-warning" role="alert">
										                		    	<p class="text-primary" style="font-weight: bold; padding-bottom : 10px;"><i class="fa fa-paperclip"></i> 첨부파일</p>
													                	<c:forEach var="file" items="${attachFileList}">
											                					<small>
											                						<a href="/blog/attachfile/download/${file.FILE_SEQ}">
											                							<strong><span style="padding-right : 5px;" class="glyphicon glyphicon-download-alt"></span> ${file.FILE_ORIGINAL_NM}</strong>
											                							(<fmt:formatNumber value="${file.FILE_SIZE_MB}" groupingUsed="true" /> MB)
											                						</a>
											                					</small>
											                			</c:forEach>
															</div>
										                </blockquote>
										                </c:if>
										                
										                
										                <!-- 내용  -->
										                <p>
										                	${blogMap.CONTENTS}
										                </p>
										                
										        
								                <hr style="margin-top:5em;">
								                
								                <div class="row">
										                <div class="col-xs-12">
												                <!-- Pager -->
												                <ul class="pager">
												                	
												                	<c:if test="${empty blogMap.PREV_SEQ}">
											                    		 <li class="previous disabled">
											                    		 	<a href="#">&larr; 이전글</a>
													                    </li>
											                    	</c:if>
											                    	<c:if test="${not empty blogMap.PREV_SEQ}">
											                    		 <li class="previous">
											                    		 	<a href="/blog/${blogMap.PREV_SEQ}">&larr; 이전글</a>
													                    </li>
											                    	</c:if>
													                    
													                <c:if test="${empty blogMap.NEXT_SEQ}">
													                    <li class="next disabled">
													                        <a href="#">다음글 &rarr;</a>
													                    </li>
													                </c:if>    
													                <c:if test="${not empty blogMap.NEXT_SEQ}">
													                    <li class="next">
													                        <a href="/blog/${blogMap.NEXT_SEQ}">다음글 &rarr;</a>
													                    </li>
													                </c:if>    
												                </ul>
										                </div>
								                </div>
								                
								                <div class="row" style="padding-top : 20px;">
								                	
										                <div class="col-xs-8 text-left" style="padding-bottom : 20px;">
										                	<c:if test="${ not empty sessionScope }">
																<a href="/blog/edit/${blog_seq}?pageNo=${pageNo}"><button class="btn btn-primary btn-xs"><i class="fa fa-wrench"></i>&nbsp;수정</button></a>
																<button class="btn btn-danger btn-xs" onClick="del('${blog_seq}');"><i class="fa fa-trash"></i>&nbsp;삭제</button>
															</c:if>
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
								                        <input type="text" class="form-control" id="searchWord" value="">
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
									                    <h4><i class="fa fa-folder-open"></i> Category
									                    	<c:if test="${ not empty sessionScope }">
									                    		<a href="/admin/blog_category"><span class="label label-danger pull-right" ><i class="fa fa-cog" aria-hidden="true"></i> edit</span></a>
									                    	</c:if>
									                    </h4>	
									                    <c:forEach var="ctg" items="${categoryList }">
															&nbsp;<a href="javascript:searchCategory('${ ctg.BLOG_CTG_CD}')"><i class="fa fa-angle-right"></i> ${ ctg.BLOG_CTG_NM} (${ctg.BLOG_CTG_CD_CNT})</a> <br>
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
				  		<input type="hidden" name="searchCategory" id="searchCategory" >
				  </form>
			  
			  
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
			
			
				<script type="text/javascript">
			
					// onLoad
					$(window).ready(function(){
						
						// 엔터키 입력 이벤트
						$("#searchWord").keydown(function (key) {
								  if (key.keyCode == 13) {
								    goPage(1);
								  }
							});
			
					});			
				
					 // 삭제버튼 클릭 시
					function del(blog_seq){
						if( confirm("정말 삭제하시겠습니까?") ){
							location.href = '/blog/delete/' + blog_seq;
						}
					}
					 
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
