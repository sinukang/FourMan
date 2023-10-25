<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link href="../css/memberJoin.css" type="text/css" rel="stylesheet">

</head>
<body>
	<div class="container">
		<div class="join">
			<div class="join-logo">
				<h1 class="logo">
					<a class="svgLogo" href="../Home.jsp">
						<img src="../images/logo4.png" width="250" height="130" alt="메인화면으로 이동">
					</a>
				</h1>
			</div>
			<div class="join-body">
				<form name="frm">
					<div class="join-id">
						<input type="text" name="memberId" id="memberId" maxlength="30" placeholder=" 아이디">
						<input type="button" name="btn" id="btn" value="중복확인">
					</div>	
					<div class="join-pwd">
						<input type="password" name="memberPwd" placeholder=" 비밀번호">
					</div>
					<div class="join-pwd2">
						<input type="password" name="memberPwd2" placeholder=" 비밀번호 확인">
					</div>
					<div class="join-name">
						<input type="text" name="memberName" placeholder=" 이름">
					</div>
					<div class="join-email">
						<input type="email" name="memberEmail" placeholder=" asdf@emali.com">
						<select class="email-select" id="select" name="selectEmail">
							<option value="">직접 입력</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="yahoo.com">yahoo.com</option>
							<option value="nate.com">nate.com</option>
						</select>
					</div>
					<div class="email-certi">
						<input type="text" name="emailCertification" placeholder=" 인증번호">
						<input type="button" name="btn" id="btn" value="인증하기">
					</div>
					<div class="join-btn">
						<input type="button" name="btn" value="가입하기" onclick="check();">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>