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
				<button type="button" class="btn-QnAList btn1 clicked">내 포인트</button>
			</div>
			<div class="member-info">
				<div class="login-body">
					<div>
						<h3>보유중인 포인트</h3>
					</div>
					<table class="info-cont" id="info-point">
						<tr>
							<td>
								잔여포인트 : 12345p
							</td>
						</tr>
					</table>
				</div>
				<div class="join-body">
					<form name="frm">
						<div>
							<h3>전주사랑상품권 교환</h3>
						</div>
						<div class="join-id">
							<input type="text" name="exc-point" id="exc-point" maxlength="30" placeholder=" 교환할 포인트를 입력해주세요">
						</div>	
						<div class="join-btn">
							<input type="button" name="btn" value="신청하기" onclick="check();">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>