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
	
	<div class="container">
		<div class="container-title">
			<h1>MyPage</h1>
		</div>
		<div class="inner-container">
			<jsp:include page="../source/include/mypageNavi.jsp"/>
			<div class="btn-area">
				<button type="button" class="btn-QnAList btn1 clicked">내 정보</button>
				<button type="button" class="btn-QnA btn1">나의 즐겨찾기</button>
				<button type="button" class="btn-QnA btn1">나의 후기</button>
			</div>
			<div class="member-info">
				<div class="tab-name-area">
					<span> 회원 탈퇴 </span>
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
	</div>
	<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>