<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../source/css/home.css" type="text/css" rel="stylesheet">
	<link href="../source/css/galleryWrite.css" type="text/css" rel="stylesheet">
</head>
<body>
	<header class="header">
		<div class="header-logo">
			<h1 class="logo">
				<a class="svgLogo" href="../index.jsp">
					<img src="../source/images/logo4.png" width="150" height="80" alt="메인화면으로 이동">
				</a>
			</h1>
		</div>
		<div class="menu">
			<ul class="depth1">
				<li>
					<a href="../index.jsp">관광컨텐츠</a>
				</li>
				<li>
					<a href="../index.jsp">TOP10</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/board/galleryList.do">갤러리</a>
				</li>
				<li>
					<a href="../index.jsp">마이페이지</a>
				</li>
				<li>
					<a href="../index.jsp">고객지원</a>
				</li>
			</ul>
		</div>
		<span class="login">
			<a class="loginbutton" href="${pageContext.request.contextPath}/member/memberLogin.do">
			<img src="../source/images/login.png">
			</a>
		</span>
	</header>
	<div class="wrap">
		<div class="container">
			<table class="wrap-table">
				<tr>
					<td>
					<div class="inner-table">
						<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
							<tr style="height:30px;">
								<td >
									<input type="text" id="input-sub" name="subject" placeholder=" 제목을 입력하세요.">
								</td>
							</tr>
							<tr style="height:200px;">
								<td>
									<textarea id="input-cont" name="contents" placeholder="내용을 입력해주세요."></textarea>
								</td>
							</tr>
							<tr style="height:20px;">
								<td>
									<label for="input-file">사진선택</label>
									<input type="file" id="input-file" name="filename" style="display:none;">
								</td>
							</tr>
							<tr style="height:20px;">
								<td class="write-btn">
									<label class="write-btn" for="input-write" style="padding:15px 226px;">글쓰기</label>
									<input type="button" id="input-write" name="btn" style="display:none;" onclick="check();">
								</td>
							</tr>
						</table>
					</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>