<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link href="${pageContext.request.contextPath}/source/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/source/css/find.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../../source/include/header.jsp"/>
					<section><!-- 섹션 -->
						<div class="findWrap">
							<div class="findTitle">
								<h1>아이디 찾기</h1>
							</div>
						
							<div class="idfindBox">
								<div class="emailBox">
									<h3>아이디</h3>
									<input type="text" id="loginEmail" placeholder="example@gmail.com" >
								</div>
								
								<div class="pwdBox">
									<h3>전화번호</h3>
									<input type="text" id="loginpPwd">
								</div>
								<div class="idFindBtn">
									<button type="button">조회하기</button>
								</div>
								<div class="menuBox">
										<div class="menuFindPwd">
										<a href="${pageContext.request.contextPath}/ptconnect/member/pwdFind.jsp">비밀번호 찾기</a>
										</div>
								</div>		
									
							</div>
						</div>
					</section>
					<jsp:include page="../../source/include/footer.jsp"/>
				</div>
			</div>
		</div>
	</div>
	

	
	
</body>
</html>