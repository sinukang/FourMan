<%@ page language="java" 
    pageEncoding="UTF-8"%>
<header class="header">
	<div class="header-logo">
		<h1 class="logo">
			<a class="svgLogo" href="${pageContext.request.contextPath}/">
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
				<a href="${pageContext.request.contextPath}/contents/contentsRanking.do">TOP10</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/board/galleryList.do">갤러리</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/member/member.do">마이페이지</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/board/noticeList.do">고객지원</a>
			</li>
		</ul>
	</div>
	<span class="login">
		<a class="loginbutton" href="${pageContext.request.contextPath}/member/memberLogin.do">
		<img src="${pageContext.request.contextPath}/source/images/login.png">
		</a>
	</span>
</header>