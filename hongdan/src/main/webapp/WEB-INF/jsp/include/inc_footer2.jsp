<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <a class="gototop gototop-button" href="#"><i class="fa fa-chevron-up"></i></a>
 
  <script src="/vendor/jquery/jquery-1.11.2.min.js"></script>
  <script src="/vendor/plugins.js"></script>
  <script src="/js/theme-functions.js"></script>
  
  <script type="text/javascript">
				
  // Server에서 메세지 전달 시 표출(공통)
	$(window).ready(function(){
		
		 var svr_msg =  '${msg}';
		
		if( svr_msg != '' ){
			alert(svr_msg);
		}
		

	});				
	</script>				