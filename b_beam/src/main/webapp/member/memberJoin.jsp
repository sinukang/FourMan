<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link href="../source/css/member/memberJoin.css" type="text/css" rel="stylesheet">

</head>
<body>
	<div class="container">
		<div class="join">
			<div class="join-logo">
				<h1 class="logo">
					<a class="svgLogo" href="../index.jsp">
						<img src="../source/images/logo4.png" width="250" height="130" alt="메인화면으로 이동">
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
						<input type="text" name="memberName" placeholder=" 닉네임">
						<input type="button" name="btn" id="btn" value="중복확인">
					</div>
					<!-- 주소찾기 api -->
					<div class="kakao-address">
						<div id="address-btn-area">
						<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
						<input type="button" id="address-btn" onclick="sample4_execDaumPostcode()" value="주소 찾기">
						</div>
						<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
						<input type="text" id="sample4_detailAddress" placeholder="상세주소">
					</div>
					<div class="join-email">
						<input type="email" name="memberEmail" placeholder=" asdf@emali.com">
						<select class="email-select" id="select" name="selectEmail">
							<option value="">직접 입력</option>
							<option value="naver.com">@naver.com</option>
							<option value="gmail.com">@gmail.com</option>
							<option value="hanmail.net">@hanmail.net</option>
							<option value="yahoo.com">@yahoo.com</option>
							<option value="nate.com">@nate.com</option>
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
	
	<!-- 주소찾기 스크립트 -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	            }
	        }).open();
	    }
	</script>
	
</body>
</html>