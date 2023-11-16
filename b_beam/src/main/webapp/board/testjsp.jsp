<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/gallery/testjsp.css" />
</head>
<body>
	<div class="test-div1">
		<c:forEach var="bv" items="${bv_alist}" begin="0" end="10" step="1">
			<div class="test-div2">
				<div class="test-div3">
					${bv.bdno}<br>
					${bv.mbno}<br>
					${bv.bdcate}<br>
					${bv.bdtitle}<br>
					${bv.bddate}<br>
					${bv.bdLikeCnt}<br>
					<c:choose>
						<c:when test="${bv.bdLikeYN eq 'Y'}">
							<c:out value="${bv.bdLikeYN}"/><span style="color: red;">♥</span>
						</c:when>
						<c:otherwise>
							<c:out value="${bv.bdLikeYN}"/>♡						
						</c:otherwise>
					</c:choose>
				</div>
				<c:forEach var="j" items="${bv.bdFilename}" begin="0" end="0" step="1">
					<img src="${pageContext.request.contextPath}/source/galleryImages/${j}.jpg" alt="파일없음" class="test-img"> 
				</c:forEach>
			</div>
		</c:forEach>		
	</div>

</body>
</html>