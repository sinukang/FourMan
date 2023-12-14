<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="app.domain.MemberVo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login</title>
	<link href="../source/css/member/memberInfoModify.css" type="text/css" rel="stylesheet">
	<link href="../source/css/mNavi.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
</head>
<body>
	<jsp:include page="../source/include/header.jsp"/>
	
	<div class="container">
		<div class="container-title">
			<h1>MyPage</h1>
		</div>
		<div class="inner-container">
			<div class="m-navi">
				<div class="report-tap tap clicked" onclick="mNavi(0)">회원정보관리</div>
				<div class="QnA-tap tap" onclick="mNavi(1)">포인트관리</div>
				<div class="notice-tap tap" onclick="mNavi(2)">나의즐겨찾기</div>
				<div class="FAQ-tap tap" onclick="mNavi(3)">1:1문의</div>
			</div>
			<div class="btn-area">
				<button type="button" class="btn-QnAList btn1 clicked" onclick="location.href='${pageContext.request.contextPath}/member/memberInfo.do';">내 정보</button>
				<button type="button" class="btn-QnA btn1"  onclick="location.href='${pageContext.request.contextPath}/member/memberInfoModify.do';" >내 정보 수정</button>
				<button type="button" class="btn-QnA btn1" onclick="location.href='${pageContext.request.contextPath}/member/memberResign.do';">회원 탈퇴</button>
			</div>
			<div class="member-info">
				<div class="tab-name-area">
					<span> 회원 정보 </span>
				</div>
				<div class="login-body">
					<table class="info-cont">
						<tr>
							<td>
								아이디
							</td>
							<td>
								${mv.mbid}
							</td>
						</tr>
						<tr>
							<td>
								닉네임
							</td>
							<td>
								${mv.mbname}
							</td>
						</tr>
						<tr>
							<td>
								이메일
							</td>
							<td>
								${mv.mbemail}
							</td>
						</tr>
						<tr>
							<td>
								포인트
							</td>
							<td>
								${pv.rmpt}p
							</td>
						</tr>
					</table>
					<div style="color: #6d6b70;">
						* 회원가입시 1000p 적립<br>
						* 게시글 3개 작성시 1000p 적립<br>
						* 리뷰 3개 작성시 1000p 적립<br>
						* 댓글 3개 작성시 1000p 적립<br>
						* 당일 작성한 글의 갯수를 기준으로 포인트가 지급됩니다.
					</div>
				</div>
				<div class="info-btn">
					<input type="button" class="btn" value="수정" onclick="location.href='${pageContext.request.contextPath}/member/memberInfoModify.do';">
					<input type="button" class="btn" value="탈퇴" onclick="location.href='${pageContext.request.contextPath}/member/memberResign.do';">
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../source/include/footer.jsp"/>
</body>
<script>
	function mNavi(e){
			switch(e){
			case 0 : location.href="${pageContext.request.contextPath}/member/memberInfo.do"; break;
			case 1 : location.href="${pageContext.request.contextPath}/point/memberPoint.do"; break;
			case 2 : location.href="${pageContext.request.contextPath}/contents/bookmarkedContents.do"; break;
			case 3 : location.href="${pageContext.request.contextPath}/qna/myQnA.do"; break;
			
			}
		}
</script>
</html>