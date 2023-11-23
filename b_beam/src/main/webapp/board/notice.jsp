<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ page import="app.domain.*" %> --%>
<%-- <%@ page import="java.util.ArrayList" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객지원</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/board/notice.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>

	
	<jsp:include page="../source/include/header.jsp"/>
<div class="container">
	<div class="container-title">
		<h1>고객지원</h1>
	</div>
	<div class="page-inner">
		<div class="content">
			<div class="notice-area">
				<header class=notice-head>
					<h2><span class="notice-title">${bv.bdtitle }</span></h2>
					<div class="notice-date">${bv.bddate }</div>
				</header>
				<div class="notice-data">
					<div class="notice-view">
						<p>${bv.bdcont }</p>
					</div>
				
				</div>
			</div>
			<div class="btn-area2">
				<button id="btn-write" class="btn-write">공지사항 목록</button>
			</div>			
			
		</div>
	</div>
</div>
	<jsp:include page="../source/include/footer.jsp"/>
	
</body>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#btn-write").on("click", function(){
			location.href = "${pageContext.request.contextPath}/board/noticeList.do";
		});
		
	});
</script>
</html>