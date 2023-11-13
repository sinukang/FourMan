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
					<h2><span class="notice-title">시스템임시점검안내</span></h2>
					<div class="notice-date">2023-11-07 10:00</div>
				</header>
				<div class="notice-data">
					<div class="notice-view">
						<p>안녕하십니까 b-beam 운영자입니다.</p>
						
						<p>금일 b-beam의 시스템 임시점검이 23시 30분에 진행될 예정입니다.</p>
						
						<p>점검진행중에는 사이트 이용이 제한되오니 참고바랍니다.</p>
						
						<p>감사합니다.</p>
					
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