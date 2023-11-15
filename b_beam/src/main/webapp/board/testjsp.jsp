<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/testjsp.css" />
</head>
<body>
	<div class="test-div1">
		<c:forEach var="i" begin="1" end="10" step="1">
			<div class="test-div2">
				<img src="${pageContext.request.contextPath}/source/galleryImages/파일이름${i}.jpg" alt="파일없음" class="test-img"> 
			</div>
		</c:forEach>		
	</div>

</body>
</html>