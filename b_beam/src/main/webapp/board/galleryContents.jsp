<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../source/css/home.css" type="text/css" rel="stylesheet">
	<link href="../source/css/galleryContents.css" type="text/css" rel="stylesheet">
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
		<div>
			<h1>GALLERY</h1>
		</div>
		<div class="container">
			<table class="wrap-table">
				<tr>
					<td>
						<div class="inner-table">
							<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
								<tr>
									<td colspan="2" style="padding: 5px 0 5px 5px;">닉네임</td>
								</tr>
								<tr>
									<td colspan="2"><img src="../source/images/testimg.png"></td>
									
								</tr>
								<tr>
									<td style="border-bottom:0; padding: 5px 0 3px 15px;">전주 한옥마을 야경</td>
									<td class="like" style="border-bottom:0;">♥</td>
								</tr>
								<tr>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div>
											<input type="text" id="comment-write" placeholder="댓글을 작성해주세요.">
										</div>
										<div>
											<input type="button" id="comment-btn" value="작성">
										</div>
									</td>
								</tr>
								<tr>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											<span>닉네임</span>
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
									</td>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											닉네임
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
									</td>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											닉네임
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
									</td>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											닉네임
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
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