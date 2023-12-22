<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ContentsList</title>
</head>
<body>
<div class="div1">
	<table class="table1">	
	<thead>
			<tr>
			<th>썸네일</th>
			<th>컨텐츠번호</th>
			<th>컨텐츠타입</th>
			<th>제목</th>
			<th>주소</th>
			<th>좌표</th>
			</tr>
	</thead>
	<tbody>	
		<c:forEach var="cv" items="${alist}">
			<tr>
			<td><img src="${cv.firstimage2}" style="width:200px; height:150px"></td>
			<td>${cv.contentid}</td>
			<td>${cv.contenttypeid}</td>
			<td>
<%-- 				<a href="${pageContext.request.contextPath}/board/boardContents.do?bidx=${bv.bidx}"> --%>
				${cv.title}
<!-- 				</a> -->
			</td>
			<td>${cv.addr1}</td>
			<td>${cv.mapx},${cv.mapx}</td>
			</tr>
		</c:forEach>
	</tbody>		
	</table>
</div>
</body>
</html>