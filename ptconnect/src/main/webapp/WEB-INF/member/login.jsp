<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/login.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../include/header.jsp"/>
					<section><!-- 섹션 -->
						<div class="loginWrap">
							
							<div class="loginBox">
								<div class="tabWrap">
									<div class="tab selectedTab" id="normalTab">일반회원</div>
									<div class="tab" id="trainerTab">트레이너</div>
									<div class="tab" id="centerTab">센터</div>
								</div>
								
								 <div id="normalLogin" class="loginSection">
									<div class="emailBox">
										<h3>이메일</h3>
										<input type="text" id="loginEmail" placeholder="example@gmail.com" >
									</div>
									
									<div class="pwdBox">
										<h3>비밀번호</h3>
										<input type="text" id="loginpPwd">
									</div>
									<div class="loginBtn">
									<button type="button">로그인</button>
									</div>
										
									<div class="menuBox">
										<div class="menuJoin"><a href="${pageContext.request.contextPath}/ptconnect/member/joinUser.jsp">회원가입</a></div>|
										<div class="menuFindId">아이디찾기</div>|
										<div class="menuFindPwd">비밀번호찾기</div>
									</div>
								</div>
								
								<div id="trainerLogin" class="loginSection" style="display: none;">
									<div class="emailBox">
										<h3>이메일</h3>
										<input type="text" id="loginEmail" placeholder="example@gmail.com" >
									</div>
									
									<div class="pwdBox">
										<h3>비밀번호</h3>
										<input type="text" id="loginpPwd">
									</div>
									
									<div class="loginBtn">
										<button type="button">로그인</button>
									</div>
										
									<div class="menuBox">
										<div class="menuJoin"><a href="${pageContext.request.contextPath}/ptconnect/member/joinTrainer.jsp">트레이너가입</a></div>|
										<div class="menuFindId">아이디찾기</div>|
										<div class="menuFindPwd">비밀번호찾기</div>
									</div>
								</div>
								
								<div id="centerLogin" class="loginSection" style="display: none;">
									<div class="emailBox">
										<h3>이메일</h3>
										<input type="text" id="loginEmail" placeholder="example@gmail.com" >
									</div>
									
									<div class="pwdBox">
										<h3>비밀번호</h3>
										<input type="text" id="loginpPwd">
									</div>
									<div class="loginBtn">
										<button type="button">로그인</button>
									</div>
										
									<div class="menuBox">
										<div class="menuJoin"><a href="${pageContext.request.contextPath}/ptconnect/member/joinCenter.jsp">센터가입</a></div>|
										<div class="menuFindId">아이디찾기</div>|
										<div class="menuFindPwd">비밀번호찾기</div>
									</div>
								</div>
								
							</div>
						</div>
					</section>
					<jsp:include page="../include/footer.jsp"/>
				</div>
			</div>
		</div>
	</div>
	
	
  <script>
        document.addEventListener('DOMContentLoaded', function () {
            // 초기에 첫 번째 탭이 선택된 상태로 설정
            showLogin('normalTab');
            
            // 각 탭을 클릭할 때 해당 로그인 섹션을 표시
            document.getElementById('normalTab').addEventListener('click', function () {
                showLogin('normalTab');
            });

            document.getElementById('trainerTab').addEventListener('click', function () {
                showLogin('trainerTab');
            });

            document.getElementById('centerTab').addEventListener('click', function () {
                showLogin('centerTab');
            });

            function showLogin(tabId) {
                // 모든 로그인 섹션 숨기기
                document.getElementById('normalLogin').style.display = 'none';
                document.getElementById('trainerLogin').style.display = 'none';
                document.getElementById('centerLogin').style.display = 'none';

                // 선택된 탭에 대한 배경 색상 설정
                document.getElementById('normalTab').classList.remove('selectedTab');
                document.getElementById('trainerTab').classList.remove('selectedTab');
                document.getElementById('centerTab').classList.remove('selectedTab');
                
                document.getElementById(tabId).classList.add('selectedTab');

                // 선택된 탭에 대한 로그인 섹션 표시
                document.getElementById(tabId.replace('Tab', 'Login')).style.display = 'block';
            }
        });
    </script>	
	
	
</body>
</html>