<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

	<body>
	
		<h3>파일등록</h3>
		
		<form action="/sample/getFile" method="post" enctype="multipart/form-data">
		    <input type="file" name="file" />
		    <input type="submit" value="서버전달"/>
		</form>
		
		
		

			
	</body>

</html>
