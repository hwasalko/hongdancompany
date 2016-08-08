<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />


		<head>
			<!-- Generic page styles -->
			<link rel="stylesheet" href="/vendor/jquery-fileupload-plugin/css/style.css">
	
			<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
			<link rel="stylesheet" href="/vendor/jquery-fileupload-plugin/css/jquery.fileupload.css">
			
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
		
			    <section>
				        <div class="container">
				        
				        	<!-- Navigation -->	
							<ol class="breadcrumb">
								  <li><a href="/">Home</a></li>
								  <li class="active">BLOG</li>
							</ol>	
				        
				            <div class="row">
				                <div class="col-md-12">
				                
					                <c:if test="${empty blogMap }">
					                	<form id="frm" action = "/blog/write" method="post" >
					                </c:if>
					                <c:if test="${not empty blogMap }">
					                	<form id="frm" action = "/blog/edit/${blog_seq}?pageNo=${pageNo}" method="post" >
					                </c:if>    
					                
					                    <div class="row">
					                        <div class="col-md-12">
					                            <div class="form-group">
					                                <label class="upper" for="name"><i class="fa fa-check" aria-hidden="true"></i> 제목</label>
					                                <input type="text" class="form-control required" name="blog_title" placeholder="Enter blog title" id="blog_title" aria-required="true" value="${blogMap.TITLE}">
					                            </div>
					                        </div>
					                    </div>
					                    
					                    <div class="row">
					                        <div class="col-md-12">
					                        	<div class="form-group">
					                        		<label class="upper" for="name" style="padding-right : 10px;"><i class="fa fa-check" aria-hidden="true"></i> 카테고리</label>
								                    <select class="form-control required" name="blog_ctg"  id="blog_ctg" >
								                    		  <c:forEach var="ctg" items="${categoryList }">
															  		<c:if test="${empty ctg.BLOG_CTG_CD }">
																		<option value="${ ctg.BLOG_CTG_CD }">===선택===</option>
																	</c:if>
															  		<c:if test="${not empty ctg.BLOG_CTG_CD }">
																		<option value="${ ctg.BLOG_CTG_CD }"
																			<c:if test="${not empty blogMap && blogMap.BLOG_CTG_CD == ctg.BLOG_CTG_CD }">
																				selected
																			</c:if>
																		>${ ctg.BLOG_CTG_NM}</option>
																	</c:if>
							                        		  </c:forEach>
													</select>
												</div>
					                        </div>
					                    </div>
					                    
					                    <div class="row">
					                        <div class="col-md-12">
					                            <div class="form-group">
					                                <label class="upper" for="name">태그(Tag)</label>
					                                <input type="text" class="form-control required" name="blog_tag" placeholder="Tag를 입력해 주세요(#자동차, #여행, ...)" id="blog_tag" aria-required="true" value="${blogMap.TAGS}">
					                            </div>
					                        </div>
					                    </div>
					                    
					                    <div class="row">
					                        <div class="col-md-12">
					                            <div class="form-group">
					                                <label class="upper" for="comment"><i class="fa fa-check" aria-hidden="true"></i> 내용</label>
					                                <textarea name="blog_content" id="blog_content" rows="10" cols="100" style="width:''100%''; height:412px; display:none;"></textarea>
					                            </div>
					                        </div>
					                    </div>    
					                    
					                    <!-- 블로그 첨부파일 업로드 후 file_seq 값 전송을 위한 히든객체 -->
					                    <input type="hidden" id="attachFileSeq" name="attachFileSeq" value="">
					              </form>
				                    
				                   
				                   
				                   
				                   
				                   <!-- 파일업로드 -->
				                   <form id="fileupload" action="/blog/attachfile/upload" method="POST" enctype="multipart/form-data">
					                   <div class="row">
						                        <div class="col-md-12">
						                            <div class="form-group" >
						                            
						                                <label class="upper" for="comment"><i class="fa fa-check" aria-hidden="true"></i> 첨부파일</label><small>(최대 업로드 SIZE : 100MB)</small>
													    
													    		<!-- 파일추가 목록 영역 -->
														        <div class="panel panel-default">
																	  <!-- Default panel contents -->
																	  <div class="panel-heading">
																	  		<div id="dropzone" style="height:100px; text-align:center;">이곳에 파일을 끌어다 놓으시면 파일이 추가됩니다.</div>
																	  </div>
																</div>
													    
														        <!-- 파일업로드 추가/업로드/취소/삭제 버튼 영역부 -->
														        <div class="row fileupload-buttonbar">
															            <div class="col-md-6">
															                <!-- The fileinput-button span is used to style the file input field as button -->
															                <span class="btn btn-success fileinput-button" style="padding : 3px 7px;">
															                    <i class="glyphicon glyphicon-plus"></i>
															                    <span>파일추가</span>
															                    <input type="file" name="files[]" multiple>
															                </span>
															                <button type="submit" class="btn btn-primary start" style="padding : 3px 7px;">
															                    <i class="glyphicon glyphicon-upload"></i>
															                    <span>전체업로드</span>
															                </button>
															                <button type="reset" class="btn btn-warning cancel" style="padding : 3px 7px;">
															                    <i class="glyphicon glyphicon-ban-circle"></i>
															                    <span>전체취소</span>
															                </button>
															                <button type="button" class="btn btn-danger delete" style="padding : 3px 7px;">
															                    <i class="glyphicon glyphicon-trash"></i>
															                    <span>전체삭제</span>
															                </button>
															                <input type="checkbox" class="toggle"><span class="text-primary"> 전체선택</span>
															                <!-- The global file processing state -->
															                <span class="fileupload-process"></span>
															            </div>
														            
															            <!-- 전체 파일업로드 진행률 Progress bar 영역 -->
															            <div class="col-md-6 fileupload-progress fade">
															                <!-- The global progress bar -->
															                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
															                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
															                </div>
															                <!-- The extended global progress state -->
															                <div class="progress-extended">&nbsp;</div>
															            </div>
														            
														        </div>
														        
																<div class="table-responsive">
																	<!-- Table -->
																	<table role="presentation" class="table table-striped table-condensed table-hover table-bordered">
																		<thead>
																			<tr class="warning">
																				<th class="text-center"></th>
																				<th class="text-center">파일명</th>
																				<th class="text-center">파일사이즈</th>
																				<th class="text-center">버튼</th>
																			</tr>
																		</thead>
																		<tbody class="files"></tbody>
																	</table>
																</div>
														        
													    
						                            </div>
						                        </div>
					                    </div>    
				                    </form>
				                   
				                    
				                    
				                    <br>
				                    <br>
				                    <br>
				                    
				                    
				                    
				                    
				                    
				                  <c:if test="${ not empty sessionScope }">
				                    <div class="row">
		                                <div class="col-md-12">
		                                    <div class="form-group text-center">
		                                    	<c:if test="${empty blogMap }">
		                                        	<button class="btn btn-primary btn-xs" onclick="submitContents();"><i class="fa fa-check"></i>&nbsp;등록</button>
		                                        	<a href="/blog/list"><button class="btn btn-default btn-xs"><i class="fa fa-ban"></i>&nbsp;취소</button></a>
		                                        </c:if>
		                                        <c:if test="${not empty blogMap }">
		                                        	<button class="btn btn-success btn-xs" onclick="updateContents();"><i class="fa fa-check"></i>&nbsp;수정</button>
		                                        	<a href="/blog/${blog_seq}"><button class="btn btn-default btn-xs"><i class="fa fa-ban"></i>&nbsp;취소</button></a>
		                                        </c:if>
		                                        	
		                                    </div>
		                                </div>
		                            </div>
		                          </c:if>
		                            
				                
				                
				            	</div>
				            </div>
				        </div>
				    </section>
		
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
			
			
			
			
			
			<!-- 파이업로드 플러그인 관련 js 로드 -->
			
			<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
			<script src="/vendor/jquery-fileupload-plugin/js/vendor/jquery.ui.widget.js"></script>
			
			<!-- The Templates plugin is included to render the upload/download listings -->
			<script src="/vendor/jquery-fileupload-plugin/js/tmpl.min.js"></script>
			<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
			<script src="/vendor/jquery-fileupload-plugin/js/load-image.all.min.js"></script>
			<!-- The Canvas to Blob plugin is included for image resizing functionality -->
			<script src="/vendor/jquery-fileupload-plugin/js/canvas-to-blob.min.js"></script>
			<!-- blueimp Gallery script -->
			<script src="/vendor/jquery-fileupload-plugin/js/jquery.blueimp-gallery.min.js"></script>			
			<!-- The Templates plugin is included to render the upload/download listings -->
			<script src="/vendor/jquery-fileupload-plugin/js/jquery.iframe-transport.js"></script>
			<!-- The basic File Upload plugin -->
			<script src="/vendor/jquery-fileupload-plugin/js/jquery.fileupload.js"></script>
			<!-- The File Upload processing plugin -->
			<script src="/vendor/jquery-fileupload-plugin/js/jquery.fileupload-process.js"></script>
			<!-- The File Upload image preview & resize plugin -->
			<script src="/vendor/jquery-fileupload-plugin/js/jquery.fileupload-image.js"></script>
			<!-- The File Upload audio preview plugin -->
			<script src="/vendor/jquery-fileupload-plugin/js/jquery.fileupload-audio.js"></script>
			<!-- The File Upload video preview plugin -->
			<script src="/vendor/jquery-fileupload-plugin/js/jquery.fileupload-video.js"></script>
			<!-- The File Upload validation plugin -->
			<script src="/vendor/jquery-fileupload-plugin/js/jquery.fileupload-validate.js"></script>
			<!-- The File Upload user interface plugin -->
			<script src="/vendor/jquery-fileupload-plugin/js/jquery.fileupload-ui.js"></script>
			<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
			<!--[if (gte IE 8)&(lt IE 10)]>
			<script src="/vendor/jquery-fileupload-plugin/js/cors/jquery.xdr-transport.js"></script>
			<![endif]-->


			<script>
			
					/** 파일업로드 컴포넌트 **/
					$(function () {
					
					    // Initialize the jQuery File Upload widget:
					    $('#fileupload').fileupload({
					    	url : '/blog/attachfile/upload?blog_seq=${blog_seq}',
					        dataType : 'json',
					        dropZone: $('#dropzone')
					    });
		

					   
	
				        // Load existing files:
				        $('#fileupload').addClass('fileupload-processing');
				        $.ajax({
				            // Uncomment the following to send cross-domain cookies:
				            //xhrFields: {withCredentials: true},
				            //url: $('#fileupload').fileupload('option', 'url'),
						<c:if test="${not empty blogMap }">
				            url: '/blog/attachfile/upload/${blog_seq}' ,
				            dataType: 'json',
				            context: $('#fileupload')[0]
				        </c:if>
				        }).always(function () {
				            $(this).removeClass('fileupload-processing');
				        }).done(function (result) {
				            $(this).fileupload('option', 'done')
			                .call(this, $.Event('done'), {result: result});
			        	});

		
					});
			</script>



<!---------------------------------  파일업로드 컴포넌트 템플릿 ----------------------------------------->			
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td class="text-center">
            <span class="preview"></span>
        </td>
        <td>
            <span class="name">{%=file.name%}</span>
            <strong class="error text-danger"></strong>
        </td>
		<td class="text-right">
			<span class="size" style="margin-bottom : 10 px;">Processing...</span>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </td>
        <td class="text-center">
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled style="padding : 2px 5px;">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>업로드</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel" style="padding : 2px 5px;">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>취소</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
		
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td class="text-center">
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <span class="name">
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </span>
            {% if (file.error) { %}
                <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td class="text-right">
            <span class="size" style="margin-bottom : 0 px;">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td class="text-center">
            {% if (file.deleteUrl) { %}
                <button class="btn btn-danger delete" style="padding : 2px 5px;" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>삭제</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn btn-warning cancel" style="padding : 2px 5px;">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>취소</span>
                </button>
            {% } %}
			<span class="file_seq_val" style="font-size : 0;">{%=file.fileSeq%}</span>
        </td>
    </tr>
{% } %}
</script>
<!---------------------------------  파일업로드 컴포넌트 템플릿 ----------------------------------------->
			
	
			
			
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
							
							
							// 파일업로드 SEQ 셋팅
							$("#attachFileSeq").val('');	// 전달 인자값 초기화
							$(".file_seq_val").each(function(index, value){
								setFileSeq( $(this).text() )							
							});
							
							try {
								$("#frm").submit();
							} catch(e) {}
						
						}
					}
					
					// 수정버튼 클릭 시 
					function updateContents() {
						
						if( check() ){
						
							oEditors.getById["blog_content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
							// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("blog_content").value를 이용해서 처리하면 됩니다.
							
							// 파일업로드 SEQ 셋팅
							$("#attachFileSeq").val('');	// 전달 인자값 초기화
							$(".file_seq_val").each(function(index, value){
								setFileSeq( $(this).text() )							
							});
							
							try {
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
							return false;
						}
						
						if( $("#blog_ctg").val() == '' ){
							alert( "카테고리를 선택하세요" );
							$("#blog_ctg").focus();
							result = false;
							return false;
						}
						
						return result;
					}
					
					// 폰트 지정
					function setDefaultFont() {
						var sDefaultFont = '궁서';
						var nFontSize = 9;
						oEditors.getById["blog_content"].setDefaultFont(sDefaultFont, nFontSize);
					}
					
					//첨부파일 file_seq 값 저장
					function setFileSeq(file_seq){
						var resultFileSeq = $("#attachFileSeq").val();
						
						// 기존 값이 있을 경우에는 ','를 구분자로 하여 저장'
						if(resultFileSeq == null || resultFileSeq == '' ){
							resultFileSeq = file_seq;
						}else{
							resultFileSeq = resultFileSeq + ',' + file_seq;
						}
						
						$("#attachFileSeq").val(resultFileSeq);
					}
					
					
			</script>
		  
		</body>
		
</html>
