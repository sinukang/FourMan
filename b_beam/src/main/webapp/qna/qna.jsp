<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ page import="app.domain.*" %> --%>
<%-- <%@ page import="java.util.ArrayList" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/qna/qna.css">
</head>
<body>
	<header class="header">
		<div class="header-logo">
			<h1 class="logo">
				<a class="svgLogo" href="./Home.jsp">
					<img src="${pageContext.request.contextPath}/source/images/logo4.png" width="150" height="80" alt="메인화면으로 이동">
				</a>
			</h1>
		</div>
		<div class="menu">
			<ul class="depth1">
				<li>
					<a href="${pageContext.request.contextPath}/contents/contents.do">컨텐츠</a>
				</li>
				<li>
					<a href="./Home.jsp">TOP10</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/board/board.do">갤러리</a>
				</li>
				<li>
					<a href="./Home.jsp">마이페이지</a>
				</li>
				<li>
					<a href="./Home.jsp">고객지원</a>
				</li>
			</ul>
		</div>
		<span class="login">
			<a class="loginbutton" href="${pageContext.request.contextPath}/member/memberLogin.jsp">
				<img src="${pageContext.request.contextPath}/source/images/login.png">
			</a>
		</span>
	</header>
	<div class="inner">
		<div class="page-side">
			<h2 class="page-title">고객지원</h2>
		</div>
		<div class="content">
			<div class="btn-area">
				<button type="button" class="Notice-btn">공지사항</button>
				<button type="button" class="FAQ-btn">자주 묻는 질문</button>
			</div>
			<div class="table-area">
				<table class="content-table">
					<tr>
						<td class="table-cate">글 번호</td>
						<td class="table-cate">분류</td>
						<td class="table-cate">글 제목</td>
						<td class="table-cate">작성자</td>
						<td class="table-cate">작성일</td>
						<td class="table-cate">조회수</td>
					</tr>
					<tr>
						<td>1</td>
						<td>공지</td>
						<td>안녕하세요</td>
						<td>삠</td>
						<td>2023-11-03</td>
						<td>1</td>
					</tr>				
				</table>
			</div>
			<div class="pagination-area">
				<div class="paging-number-area">
					<a href="#" class="a-arrow">
						<i class="first-arrow-icon"></i><i class="first-arrow-icon"></i>
					</a>
					<a href="#" class="a-arrow">
						<i class="prev-arrow-icon"></i>
					</a>
					<c:forEach var="i" begin="1" end="10" step="1">
						<a href="#" class="page-number">${i}</a>
					</c:forEach>
					<a href="#" class="a-arrow">
						<i class="next-arrow-icon"></i>
					</a>
					<a href="#" class="a-arrow">
						<i class="last-arrow-icon"></i><i class="last-arrow-icon"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>