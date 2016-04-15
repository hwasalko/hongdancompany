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
		
			    <section>
				        <div class="container">
				            <div class="row">
				                <div class="col-md-10 col-md-offset-1">
				                
					                <c:if test="${empty blogMap }">
					                	<form id="frm" action = "/blog/write" method="post" >
					                </c:if>
					                <c:if test="${not empty blogMap }">
					                	<form id="frm" action = "/blog/edit/${blog_seq}" method="post" >
					                </c:if>    
					                
					                    <div class="row">
					                        <div class="col-md-12">
					                            <div class="form-group">
					                                <label class="upper" for="name">제목</label>
					                                <input type="text" class="form-control required" name="blog_title" placeholder="Enter blog title" id="blog_title" aria-required="true" value="${blogMap.TITLE}">
					                            </div>
					                        </div>
					                    </div>
					                    
					                    <div class="row">
					                        <div class="col-md-12">
					                            <div class="form-group">
					                                <label class="upper" for="comment">내용</label>
					                                <textarea name="blog_content" id="blog_content" rows="10" cols="100" style="width:''100%''; height:412px; display:none;"></textarea>
					                            </div>
					                        </div>
					                    </div>
					                    
					              </form>
				                    
				                    
				                    <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group text-center">
		                                    	<c:if test="${empty blogMap }">
		                                        	<button class="btn btn-success" onclick="submitContents();"><i class="fa fa-check"></i>&nbsp;등록</button>
		                                        	<a href="/blog/list"><button class="btn btn-primary"><i class="fa fa-ban"></i>&nbsp;취소</button></a>
		                                        </c:if>
		                                        <c:if test="${not empty blogMap }">
		                                        	<button class="btn btn-success" onclick="updateContents();"><i class="fa fa-check"></i>&nbsp;수정</button>
		                                        	<a href="/blog/${blog_seq}"><button class="btn btn-primary"><i class="fa fa-ban"></i>&nbsp;취소</button></a>
		                                        </c:if>
		                                        	
		                                    </div>
		                                </div>
		                            </div>
		                            
				                
				                
				            	</div>
				            </div>
				        </div>
				    </section>
		
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
			
			
			
			<!-- 스마트 에디터 관련 js 로드 -->
			<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
			
			<script type="text/javascript">
			
					var contents = '${blogMap.CONTENTS}';
					var oEditors = [];
					
					// 추가 글꼴 목록
					//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
					
					nhn.husky.EZCreator.createInIFrame({
						oAppRef: oEditors,
						elPlaceHolder: "blog_content",
						sSkinURI: "/smarteditor/SmartEditor2Skin.html",	
						htParams : {
							bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
							bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
							bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
							//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
							fOnBeforeUnload : function(){
								//alert("완료!");
							}
						}, //boolean
						fOnAppLoad : function(){
							//수정모드 시 활용
							//oEditors.getById["blog_content"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]); 
							oEditors.getById["blog_content"].exec("PASTE_HTML", [contents]);
						},
						fCreator: "createSEditor2"
					});
					
					
					
					
					function pasteHTML() {
						var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
						oEditors.getById["blog_content"].exec("PASTE_HTML", [sHTML]);
					}
					
					function showHTML() {
						var sHTML = oEditors.getById["blog_content"].getIR();
						alert(sHTML);
					}
						
					
					// 등록버튼 클릭 시 
					function submitContents() {
						
						if( check() ){
						
							oEditors.getById["blog_content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
							// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("blog_content").value를 이용해서 처리하면 됩니다.
							
							try {
								$("#frm").action='/blog/write'; 
								$("#frm").submit();
							} catch(e) {}
						
						}
					}
					
					// 수정버튼 클릭 시 
					function updateContents() {
						
						if( check() ){
						
							oEditors.getById["blog_content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
							// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("blog_content").value를 이용해서 처리하면 됩니다.
							
							try {
								$("#frm").action='/blog/editProcs/${blog_seq}'; 
								$("#frm").submit();
							} catch(e) {}
							
						}
						
					}
					
					
					// validation
					function check(){
						
						var result = true;
						
						if( $("#blog_title").val() == '' ){
							alert( "제목을 입력하세요" );
							$("#blog_title").focus();
							result = false;
						}
						
						return result;
					}
					
					// 폰트 지정
					function setDefaultFont() {
						var sDefaultFont = '궁서';
						var nFontSize = 9;
						oEditors.getById["blog_content"].setDefaultFont(sDefaultFont, nFontSize);
					}
					
			</script>
		  
		</body>
		
</html>
