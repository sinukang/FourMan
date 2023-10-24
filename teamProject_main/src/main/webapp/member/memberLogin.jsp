<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login</title>
	<link href="../css/memberLogin.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="login">
			<div class="login-logo">
				<h1 class="logo">
					<a class="svgLogo" href="../Home.jsp">
						<img src="../images/logo4.png" width="250" height="130" alt="메인화면으로 이동">
					</a>
				</h1>
			</div>
			<div class="login-body">
				<form name="frm" id="login-form">
					<div class="body-id">
						<input type="text" name="memberId" placeholder=" ID">
					</div>
					<div class="body-pwd">
						<input type="password" name="memberPwd" placeholder=" PASSWORD">
					</div>
					<div class="login-btn">
						<input type="submit" name="btn" value="Login" onclick="check();">
					</div>
					<div class="join-btn">
						<input type="button" name="btn" value="Join" onclick="location.href='memberJoin.jsp'">
					</div>
					<br>
					<div class="text-join">
						<a class="" href="아이디찾기 경로">아이디 찾기</a> /
						<a class="" href="비밀번호찾기 경로">비밀번호 찾기</a>
					</div>
					<div class="text-join">
					아직 회원이 아니신가요?
						<a class="" href="memberJoin.jsp">회원가입</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>