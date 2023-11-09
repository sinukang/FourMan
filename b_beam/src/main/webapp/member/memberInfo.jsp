<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login</title>
	<link href="../source/css/member/memberInfoModify.css" type="text/css" rel="stylesheet">
	
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
</head>
<body>
	<jsp:include page="../source/include/header.jsp"/>
	<jsp:include page="../source/include/mypageNavi.jsp"/>
	
	<div class="container">
		<div class="member-info">
			<div class="tab-name-area">
				<span> 회원 정보 </span>
			</div>
			<div class="login-body">
				<table class="info-cont">
					<tr>
						<td>
							아이디 : test
						</td>
					</tr>
					<tr>
						<td>
							비밀번호 :qwer1234
						</td>
					</tr><tr>
						<td>
							이메일 : asdf@naver.com
						</td>
					</tr>
				</table>
			</div>
			<div class="info-btn">
				<input type="submit" name="btn" value="수정" onclick="location.href='${pageContext.request.contextPath}/member/memberInfoModify.do';">
				<input type="submit" name="btn" value="탈퇴" onclick="location.href='${pageContext.request.contextPath}/member/memberResign.do';">
			</div>
		</div>
	</div>
	
	<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>