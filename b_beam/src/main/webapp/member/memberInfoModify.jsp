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
	
	<div class="page-inner">
		<div class="page-side">
			<h2 class="page-title">마이페이지</h2>
		</div>
		
		<jsp:include page="../source/include/mypageNavi.jsp"/>
		
		<div class="container">
			<div class="btn-area">
				<button type="button" class="btn-QnAList btn1 clicked">내 정보</button>
				<button type="button" class="btn-QnA btn1">나의 즐겨찾기</button>
				<button type="button" class="btn-QnA btn1">나의 후기</button>
			</div>
			<div class="member-info">
				<div class="tab-name-area">
					<span> 회원 정보 수정 </span>
				</div>
				<div class="join-body">
					<form name="frm">
						<div class="join-id">
							<input type="text" name="memberId" id="memberId" maxlength="30" placeholder=" 현재 비밀번호">
							<input type="button" name="btn" id="btn" value="확인">
						</div>	
						<div class="join-pwd">
							<input type="password" name="memberPwd" placeholder=" 변경 비밀번호">
						</div>
						<div class="join-pwd2">
							<input type="password" name="memberPwd2" placeholder=" 변경 비밀번호 확인">
						</div>
						<div class="join-name">
							<input type="text" name="memberName" placeholder=" 닉네임">
							<input type="button" name="btn" id="btn" value="중복확인">
						</div>
						<div class="join-btn">
							<input type="button" name="btn" value="수정하기" onclick="check();">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>