<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

	<body>
	
		<h3>다중행 SQL 조회</h3>
		
		      <c:forEach var="interest" items="${interests}">
		            ${interest.id}<br>
		      </c:forEach>
		    
		    <c:if test="${not empty interests}">
		    	 <br>not empty 입니다.
		    </c:if>
		    <c:if test="${empty interests}">
		    	 <br>empty 입니다.
		    </c:if>
		


			
	</body>

</html>
