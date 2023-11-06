<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/qna/qnaWrite.css">
</head>
<body>
	<!-- 헤더 시작 -->
	<header class="header">
		<div class="header-logo">
			<h1 class="logo">
				<a class="svgLogo" href="${pageContext.request.contextPath}">
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
					<a href="${pageContext.request.contextPath}/qna/qna.do">고객지원</a>
				</li>
			</ul>
		</div>
		<span class="login">
			<a class="loginbutton" href="${pageContext.request.contextPath}/member/memberLogin.jsp">
				<img src="${pageContext.request.contextPath}/source/images/login.png">
			</a>
		</span>
	</header>
	<!-- 헤더 끝 -->
	
	<div class="inner">
		<div class="page-side">
			<h2 class="page-title">공지사항 등록</h2>
		</div>
		<div class="content">
			<div class="write-area">
				<form id="form" class="form">
					<div class="div-sub">
						<input type="text" class="input-sub" placeholder="제목">
					</div>
					<div class="div-content">
						<textarea class="textarea-content" placeholder="내용"></textarea>
					</div>
					<div class="div-file">
						<label for="input-file" class="label-file">
							파일 선택<input type="file" id="input-file" class="input-file" multiple="multiple">	
						</label>
					</div>
				</form>
			</div>
		</div>
		<div class="btn-area">
			<button id="btn-write" class="btn btn-write">등록</button>
			<button id="btn-cancel" class="btn btn-cancel">취소</button>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(docuemnt).ready(function(){
		
		$("#btn-write").on("click", function(){
			
		});
		
		$("#btn-cancel").on("click", function(){
			
		});
	});
</script>
</html>