<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />

		<body class="wide">
		
				<jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
		 
		   <div class="wrapper">
		   
		   		<jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />
		   

			    <section class="menu-top-banner background-3 page-title-center">
			        <div class="container">
			            <div class="page-title col-md-8" >
			                <h1>ADMIN</h1>
			                <span style="font-weight: bold;">블로그 카테고리 관리</span>
			            </div>
			        </div>
			    </section>

			
			    <section class="background-white">
			        
			        
						<div class="container">
						
							<div class="row">
								
						        
						        <div class="col-md-10"> 
						        
							        <blockquote>
										<h4 style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">블로그 카테고리 관리</h4>
									</blockquote>
							        
	
							        <div class="table-responsive">
							
							              <table id="mytable" class="table table-striped table-condensed">
							                   
							                   <thead>
							                   		<tr>
									                   <th class="text-center" width="100">번호</th>
									                   <th>카테고리명</th>
									                   <th class="text-center" width="70">Edit</th>
									                   <th class="text-center" width="70">Delete</th>
								                   </tr>
							                   </thead>
											    <tbody>
											    
											    	<c:forEach var="ctgList" items="${blogCtgList }" varStatus="status">
												    <tr>
													    <td class="text-center" >${ctgList.BLOG_CTG_CD}</td>
													    <td>${ctgList.BLOG_CTG_NM}</td>
													    <td class="text-center">
													    	<button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" style="padding: 5px 10px;" onclick="updateCtg( '${ctgList.BLOG_CTG_CD}', '${ctgList.BLOG_CTG_NM}');">수정</button>
													    </td>
													    <td class="text-center">
													    	<button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete"  style="padding: 5px 10px;" onclick="deleteCtg('${ctgList.BLOG_CTG_CD}', '${ctgList.BLOG_CTG_NM}');">삭제</button>
													    </td>
												    </tr>
												    </c:forEach>
												    
											    </tbody>
							        
											</table>
								            
						            </div>
						            
						            <hr>
						            
						            <button class="btn btn-success btn-xs pull-right" onclick="" style="padding: 5px 10px;"><i class="fa fa-check"></i>&nbsp;신규등록</button>
						            
						        </div>
							</div>
						</div>
						
						
						<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
							<form name="frm_modal_update" id="frm_modal_update" action="/admin/blog_category/update" method="post">
						      <div class="modal-dialog">
								   <div class="modal-content">
								          <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
									        <h4 class="modal-title custom_align" id="Heading">블로그 카테고리 정보 수정</h4>
									      </div>
								          <div class="modal-body">
									          <div class="form-group">
										       		<input class="form-control " type="text" placeholder="Mohsin" id="modal_category_nm" name="modal_category_nm" >
										       		<input class="form-control " type="hidden" id="modal_category_cd"  name="modal_category_cd">
										       </div>
									      </div>
								          <div class="modal-footer ">
									        	<button type="submit" class="btn btn-warning btn-md" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
									      </div>
								    </div>
							    <!-- /.modal-content --> 
							  </div>
						 	</form>
						      <!-- /.modal-dialog --> 
						 </div>
						    
						    
						    
						    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
						    	<form name="frm_modal_delete" id="frm_modal_delete" action="/admin/blog_category/delete" method="post">
						    	<input class="form-control " type="hidden" id="modal_del_category_cd"  name="modal_del_category_cd">
								      <div class="modal-dialog">
									    <div class="modal-content">
										      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
											        <h4 class="modal-title custom_align" id="Heading">블로그 카테고리 삭제</h4>
										      </div>
										       <div class="modal-body">
										       		<div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> 정말 <span class="label label-danger" id="modal_del_category_nm"></span> 카테고리를 삭제하시겠습니까?</div>
										      </div>
										        <div class="modal-footer ">
											        <button type="submit" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign" ></span> Yes</button>
											        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
										      </div>
									     </div>
									    <!-- /.modal-content --> 
									  </div>
							  </form>
						      <!-- /.modal-dialog --> 
						    </div>			        
					
			        
			    </section>
		
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
			
			
			
			
			<script type="text/javascript">
			
				// 수정버튼 클릭 시 
				function updateCtg(ctg_cd, ctg_nm){
					$("#modal_category_nm").val(ctg_nm);		//카테고리명 설정
					$("#modal_category_cd").val(ctg_cd);		//카테고리코드 설정
				}
				
				// 삭제버튼 클릭 시 
				function deleteCtg(ctg_cd, ctg_nm){
					$("#modal_del_category_nm").html(ctg_nm);		//카테고리명 설정
					$("#modal_del_category_cd").val(ctg_cd);		//카테고리코드 설정
				}
			
			</script>
			
			
		  
		</body>
		
</html>
