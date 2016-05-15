<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />
		
		<head>
			<style type="text/css">
				.table-sortable tbody tr {
				    cursor: move;
				}				
			</style>	
		</head>

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
					
						<blockquote>
							<h4 style="font-family: 'Nanum Gothic', sans-serif; font-weight: 700;">블로그 카테고리 관리</h4>
						</blockquote>
					
					
					    <div class="row clearfix">
					    	<div class="col-md-12 table-responsive">
								<table class="table  table-hover table-sortable" id="tab_logic">
									<thead>
										<tr >
											<th class="text-center">번호</th>
											<th class="text-center">카테고리</th>
					        				<th class="text-center" >수정/삭제</th>
										</tr>
									</thead>
									<tbody>
					    				<tr id='addr0' data-id="0" class="hidden">
											<td data-name="name">
											    <input type="text" name='name0'  placeholder='Name' class="form-control"/>
											</td>
											<td data-name="mail">
											    <input type="text" name='mail0' placeholder='Email' class="form-control"/>
											</td>
					                        <td data-name="del">
					                            <button name="del0" class='btn btn-danger btn-xs glyphicon glyphicon-remove row-remove'></button>
					                        </td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					    
					    <hr>
					    
						<a id="add_row" class="btn btn-default pull-right">Add Row</a>
					</div>

					
			        
			    </section>
		
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
			<script src="/vendor/jquery/jquery-ui1.10.4.min.js"></script>
			
			<script type="text/javascript">
				
			$(document).ready(function() {
				
			    $("#add_row").on("click", function() {
			        // Dynamic Rows Code
			        
			        // Get max row id and set new id
			        var newid = 0;
			        $.each($("#tab_logic tr"), function() {
			            if (parseInt($(this).data("id")) > newid) {
			                newid = parseInt($(this).data("id"));
			            }
			        });
			        newid++;
			        
			        var tr = $("<tr></tr>", {
			            id: "addr"+newid,
			            "data-id": newid
			        });
			        
			        // loop through each td and create new elements with name of newid
			        $.each($("#tab_logic tbody tr:nth(0) td"), function() {
			            var cur_td = $(this);
			            
			            var children = cur_td.children();
			            
			            // add new td and element if it has a nane
			            if ($(this).data("name") != undefined) {
			                var td = $("<td></td>", {
			                    "data-name": $(cur_td).data("name")
			                });
			                
			                var c = $(cur_td).find($(children[0]).prop('tagName')).clone().val("");
			                c.attr("name", $(cur_td).data("name") + newid);
			                c.appendTo($(td));
			                td.appendTo($(tr));
			            } else {
			                var td = $("<td></td>", {
			                    'text': $('#tab_logic tr').length
			                }).appendTo($(tr));
			            }
			        });
			        
			        // add delete button and td
			        /*
			        $("<td></td>").append(
			            $("<button class='btn btn-danger glyphicon glyphicon-remove row-remove'></button>")
			                .click(function() {
			                    $(this).closest("tr").remove();
			                })
			        ).appendTo($(tr));
			        */
			        
			        // add the new row
			        $(tr).appendTo($('#tab_logic'));
			        
			        $(tr).find("td button.row-remove").on("click", function() {
			             $(this).closest("tr").remove();
			        });
			});




			    // Sortable Code
			    var fixHelperModified = function(e, tr) {
			        var $originals = tr.children();
			        var $helper = tr.clone();
			    
			        $helper.children().each(function(index) {
			            $(this).width($originals.eq(index).width())
			        });
			        
			        return $helper;
			    };
			  
			    
			    $(".table-sortable tbody").sortable({
			        helper: fixHelperModified      
			    }).disableSelection();

			    $(".table-sortable thead").disableSelection();



			    $("#add_row").trigger("click");
			});		
			
			
			
			</script>
		  
		</body>
		
</html>
