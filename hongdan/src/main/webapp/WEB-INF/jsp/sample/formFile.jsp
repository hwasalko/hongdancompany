<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

	<body>
	
		<h3>이미지 파일등록(BLOB 저장)</h3>
		
		<form action="/sample/saveImage" enctype="multipart/form-data" method="post">
		    <input type="file" name="imgFile" />
		    <input type="submit" value="이미지저장"/>
		</form>

		
		
		

			
	</body>

</html>
