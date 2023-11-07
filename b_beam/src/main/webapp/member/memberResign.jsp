<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link href="../source/css/member/memberInfoModify.css" type="text/css" rel="stylesheet">

</head>
<body>
	<jsp:include page="../source/include/header.jsp"/>
	<jsp:include page="../source/include/mypageNavi.jsp"/>
	

	<div class="container">
		<div class="member-info">
			<div class="join-logo">
				<h1 class="logo" id="infoLogo">
					<a class="imgLogo" href="../index.jsp">
						<img src="../source/images/logo4.png" width="250" height="130" alt="메인화면으로 이동">
					</a>
				</h1>
			</div>
			<div class="join-body">
				<form name="frm">
					<div class="join-id">
						<input type="text" name="memberId" id="memberId" maxlength="30" placeholder=" 비밀번호를 입력하세요">
						<input type="button" name="btn" id="btn" value="확인">
					</div>	
					<div class="join-btn">
						<input type="button" name="btn" value="회원탈퇴" onclick="check();">
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>