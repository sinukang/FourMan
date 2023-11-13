<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link href="../source/css/member/memberJoin.css" type="text/css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="back-btn">
			<input type="button" id="inner-back-btn" name="btn" value="≪" onclick="location.href='${pageContext.request.contextPath}/member/memberLogin.do';">
		</div>
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
						<input type="button" name="btn1" id="btn1" value="아이디확인" onclick="IdCheck()">
					</div>
					<div class="error_text item_style" id="idmsg" style="display:none;">사용할 수 없는 아이디 입니다. 다른 아이디를 입력해 주세요.</div>
					<div class="join-pwd">
						<input type="password" name="memberPwd" placeholder=" 비밀번호">
					</div>
					<div class="join-pwd2">
						<input type="password" name="memberPwd2" placeholder=" 비밀번호 확인">
					</div>
					<div class="join-name">
						<input type="text" name="memberName" placeholder="닉네임">
						<input type="button" name="btn2" id="btn2" value="닉네임확인" onclick="NickCheck()">
					</div>
					<!-- 주소찾기 api -->
					<div class="kakao-address">
						<div id="address-btn-area">
						<input type="text" name="postcode" id="postcode" placeholder="우편번호">
						<input type="button" id="address-btn" onclick="DaumPostcode()" value="주소 찾기">
						</div>
						<input type="text" name="addr" id="addr" placeholder="주소">
						<div>
						<input type="text" name="detail_addr" id="detail_addr" placeholder="상세주소">
						<input type="text" name="extra_addr" id="extra_addr" placeholder="참고항목">
						</div>
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
						<input type="button" name="btn3" id="btn3" value="인증하기" onclick="EmailCheck()">
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
	    function DaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	            	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("extra_addr").value = extraAddr;
                    
                    } else {
                        document.getElementById("extra_addr").value = '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("addr").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("detail_addr").focus();
                }
            }).open();
        }
	</script>
	<script>
	function IdCheck(){
		var id = document.frm.memberId.value;
		$.ajax({
			type : "post",
			url : "./memberIdCheck.jsp",
			data : {"memberId" : id},
			dataType : "json",
			success : function(data){
				if(data.value == 0){
					alert("사용할 수 있는 아이디입니다.");
				}else{
					alert("사용할 수 없는 아이디입니다.");
				}
			},
			error : function(){
				alert("실패");
			}
		});
		
	}
	function NickCheck(){
		var nick = document.frm.memberName.value;
		$.ajax({
			type : "post",
			url : "./memberNickCheck.jsp",
			data : {"memberName" : nick},
			dataType : "json",
			success : function(data){
				if(data.value == 0){
					alert("사용할 수 있는 닉네임입니다.");
				}else{
					alert("사용할 수 없는 닉네임입니다.");
				}
			},
			error : function(){
				alert("실패");
			}
		});
		
	}
	function EmailCheck(){
		var email = document.frm.memberEmail.value + '@' + document.frm.selectEmail.value;
		$.ajax({
			type : "post",
			url : "./memberEmailCheck.jsp",
			data : {"memberEmail" : email},
			dataType : "json",
			success : function(data){
				if(data.value == 0){
					alert("사용할 수 있는 이메일입니다.");
				}else{
					alert("사용할 수 없는 이메일입니다.");
				}
			},
			error : function(){
				alert("실패");
			}
		});
		
	}
	
	</script>
	<script>
	function check(){
		var fm = document.frm;
		if(fm.memberId.value ==""){
			alert("아이디를 입력하세요");
			fm.memberId.focus();
			return;
		}else if (fm.memberPwd.value ==""){
			alert("비밀번호를 입력하세요");
			fm.memberPwd.focus();
			return;		
		}else if (fm.memberPwd2.value ==""){
			alert("비밀번호확인을 입력하세요");
			fm.memberPwd2.focus();
			return;		
		}else if (fm.memberPwd.value != fm.memberPwd2.value){
			alert("비밀번호가 일치하지 않습니다.");
			fm.memberPwd2.value="";
			fm.memberPwd2.focus();
			return;		
		}else if (fm.memberName.value ==""){
			alert("닉네임을 입력하세요");
			fm.memberName.focus();
			return;		
		}else if (fm.postcode.value ==""){
			alert("주소를 입력해주세요");
			fm.postcode.focus();
			return;		
		}else if (fm.addr.value ==""){
			alert("주소를 입력해주세요");
			fm.addr.focus();
			return;		
		}else if (fm.detail_addr.value ==""){
			alert("상세주소를 입력해주세요");
			fm.detail_addr.focus();
			return;		
		}else if (fm.memberEmail.value ==""){
			alert("이메일을 입력하세요");
			fm.memberEmail.focus();
			return;		
		}else if (fm.selectEmail.value ==""){
			alert("이메일을 정확히 입력해주세요");
			fm.selectEmail.focus();
			return;		
		}
		fm.action = "<%=request.getContextPath()%>/member/memberJoinAction.do";
		fm.method = "post";
		fm.submit();
		return;
	}
	</script>
</body>
</html>