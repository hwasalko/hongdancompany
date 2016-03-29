<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
			                <h1>BLOG 관리</h1>
			                <span>Write blog</span>
			            </div>
			        </div>
			    </section>
		
			    <section>
				        <div class="container">
				            <div class="row">
				                <div class="col-md-10 col-md-offset-1">
				                <form id="frm" action="/admin/blog" method="post">
				                
				                    <div class="row">
				                        <div class="col-md-12">
				                            <div class="form-group">
				                                <label class="upper" for="name">제목</label>
				                                <input type="text" class="form-control required" name="blog_title" placeholder="Enter blog title" id="blog_title" aria-required="true">
				                            </div>
				                        </div>
				                    </div>
				                    
				                    <div class="row">
				                        <div class="col-md-12">
				                            <div class="form-group">
				                                <label class="upper" for="comment">내용</label>
				                                <!-- <textarea class="form-control required" name="blog_content" rows="9" placeholder="Enter comment" id="blog_content" aria-required="true"></textarea> -->
				                                <textarea name="blog_content" id="blog_content" rows="10" cols="100" style="width:''100%''; height:412px; display:none;"></textarea>
				                                <p>
													<input type="button" onclick="pasteHTML();" value="본문에 내용 넣기" />
													<input type="button" onclick="showHTML();" value="본문 내용 가져오기" />
													<input type="button" onclick="submitContents(this);" value="서버로 내용 전송" />
													<input type="button" onclick="setDefaultFont();" value="기본 폰트 지정하기 (궁서_24)" />
												</p>
				                            </div>
				                        </div>
				                    </div>
				                    
				                    <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group text-center">
		                                        <button class="btn btn-primary" type="submit"><i class="fa fa-paper-plane"></i>&nbsp;등록</button>
		                                    </div>
		                                </div>
		                            </div>
		                            
				                </form>
				                
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
						
					function submitContents(elClickedObj) {
						oEditors.getById["blog_content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
						
						// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("blog_content").value를 이용해서 처리하면 됩니다.
						
						try {
							elClickedObj.form.submit();
						} catch(e) {}
					}
					
					function setDefaultFont() {
						var sDefaultFont = '궁서';
						var nFontSize = 24;
						oEditors.getById["blog_content"].setDefaultFont(sDefaultFont, nFontSize);
					}
			</script>
		  
		</body>
		
</html>
