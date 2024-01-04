<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트레이너 회원가입</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/join.css" type="text/css" rel="stylesheet">

</head>
<body>
	<div>
		<div>
			<div>
				<div>
					<jsp:include page="../include/header.jsp"/>
					<section><!-- 섹션 -->
						<div class="joinWrap">

							<div class="joinTitle">
								<h1>트레이너 등록</h1>
							</div>

							<div class="joinBox">
								
								<div class="emailBox">
									<h3>이메일</h3>
									<input type="text" id="joinEmail" placeholder="example@gmail.com" >
								</div>
									
								<div class="pwdBox">
									<h3>비밀번호</h3>
									<input type="text" id="joinpPwd" placeholder="8~15자 까지 입력 가능합니다">
								</div>
								
								<div class="pwdCheckBox">
									<h3>비밀번호 확인</h3>
									<input type="text" id="joinpPwd2" placeholder="비밀번호를 다시 입력해주세요">
								</div>
								
								<div class="centerName">
									<h3>소속 센터</h3>
									<input type="text" id="cneterName" placeholder="*등록된 센터가 아닌 경우 가입이 제한됩니다*">
								</div>
								
								<div class="userName">
									<h3>이름</h3>
									<input type="text" id="userName" placeholder="이름을 입력해주세요">
								</div>
								
								<div class="userBirthDate">
									<h3>생년월일</h3>
									<input type="text" id="userBirthDate" placeholder="ex)19000101 형식에 맞게 작성해주세요">
								</div>
								
								<div class="userPhoneNum">
									<h3>전화번호</h3>
									<div class="flexBox">
										<input type="text" id="userName" placeholder="'-'를 제외하고 입력하세요">
										<button type="button">인증번호 발송</button>
									</div>
								</div>
								
								<div class="userPhoneCheck">
									<h3>인증번호</h3>
									<div class="flexBox">
										<input type="text" id="userName" placeholder="인증 번호 입력 후 인증 버튼을 눌러주세요">
										<button type="button">인증</button>
									</div>
								</div>
								
								
								<div class="labelBox">
									<label for="agreementAll">
										<input type="checkbox" id="agreementAll" name="agreementAll" onclick="checkAll()">전체동의
									</label>
								<!-- 약관 동의 링크 -->
									<a href="#" id="showTermsModal">약관 보기</a>
									<hr>
									
									<div class="flexBox">
										<label for="privacyPolicy">
											<input type="checkbox" id="privacyPolicy" name="privacyPolicy">(필수)이용약관 동의
										</label>
									</div>
									
									
									
									<div class="flexBox">
										<label for="privacyPolicy">
											<input type="checkbox" id="infomationPolicy" name="infomationPolicy">(필수)개인정보 수집 및 이용동의
										</label>
									</div>
								</div>
									
								<!-- 모달창 -->
									<div id="termsModal" class="modal">
										<div class="modal-content">
											<span class="close">&times;</span>
											<h2>약관 내역</h2><br>
											<span>이용 약관</span><br>
											<p>1.약관의 적용<br>
												1.1 본 이용약관은 "회사"와 이를 이용하는 "이용자" 간의 권리와 의무를 정함을 목적으로 합니다.<br>
												1.2 "이용자"란 본 이용약관에 동의하고, "회사"가 제공하는 서비스를 이용하는 자를 말합니다.<br>
												1.3 본 이용약관은 "회사"가 제공하는 모든 서비스에 적용되며, 특정 서비스에 대한 별도의 약관이 있는 경우 그 약관이 우선 적용됩니다.<br>
												2. 서비스의 제공 및 변경<br>
												2.1 "회사"는 "이용자"에게 신뢰성 있는 서비스를 제공하기 위해 최선을 다하며, 서비스의 일부 또는 전부를 임의로 변경, 중단할 수 있습니다.<br>
												2.2 "회사"는 서비스의 변경 또는 중단으로 인해 발생하는 손해에 대해 책임을 지지 않습니다.<br>
												3. 개인정보 보호<br>
												3.1 "회사"는 "이용자"의 개인정보를 적절히 보호하며, 관련 법령에 따라 처리합니다.<br>
												3.2 개인정보 보호에 관한 상세한 내용은 개인정보 처리방침을 참조하시기 바랍니다.<br>
												4. 서비스 이용료 및 결제<br>
												4.1 서비스 이용료는 별도로 정해진 경우 해당 조건에 따릅니다.<br>
												4.2 결제는 "이용자"가 선택한 결제 수단에 따라 처리되며, 관련된 안내에 따라야 합니다.<br>
												5. 서비스 이용 제한<br>
												5.1 "이용자"가 본 이용약관을 위반하거나 타인의 권리를 침해하는 행위를 하는 경우, "회사"는 해당 "이용자"의 서비스 이용을 제한하거나 계약을 해지할 수 있습니다.<br>
												5.2 "이용자"는 서비스 이용 시 관련 법령 및 규정을 준수하여야 하며, 타인의 권리를 존중하여야 합니다.<br>
												6. 손해배상<br>
												6.1 "이용자"가 본 이용약관을 위반하여 "회사"에 손해를 입힌 경우, "이용자"는 그 손해를 배상할 책임이 있습니다.<br>
												6.2 "회사"는 서비스 이용과 관련하여 발생한 "이용자"의 손해에 대해 책임을 지지 않습니다.<br>
												7. 준거법 및 재판관할<br>
												7.1 본 이용약관은 대한민국 법률에 따라 해석되며, "회사"와 "이용자" 간의 분쟁에 대한 관할 법원은 대한민국 법령에 따릅니다.<br>
												8. 기타 조항<br>
												8.1 본 이용약관에 명시되지 않은 사항에 대해서는 관련 법령 및 "회사"가 정한 정책에 따릅니다.<br>
												8.2 본 이용약관은 변경될 수 있으며, 변경된 내용은 서비스를 통해 공지됩니다.<br>
											</p>
											
											<span>개인정보 수집 및 이용동의</span><br>
											<p>1."회사"는 서비스 제공을 위해 필요한 최소한의 개인정보만을 수집합니다.<br>
											2.수집된 개인정보는 다음 목적을 위해 이용됩니다<br>
											   - 회원가입 및 관리<br>
											   - 서비스 제공 및 운영<br>
											   - 이용자에게 서비스 관련 공지 및 정보 제공<br>
											   - 기타 서비스 운영에 필요한 업무<br>
											3. 개인정보의 제3자 제공은 원칙적으로 이용자의 동의 없이 이루어지지 않습니다.다만, 관련 법령에 근거하여 예외적으로 이루어질 수 있습니다.<br>
											
											4. 이용자는 개인정보 제공에 동의하지 않거나 언제든지 제공한 동의를 철회할 수 있습니다. 단, 이 경우에는 일부 서비스 이용이 제한될 수 있습니다.<br>
											
											5. "회사"는 이용자의 개인정보를 적절히 보호하기 위해 관련 법령 및 정책을 준수하며, 개인정보 처리에 대한 상세한 내용은 개인정보 처리방침에서 확인할 수 있습니다.<br>
											
											6. "회사"는 개인정보의 안전한 보관 및 관리를 위해 보안 시스템을 운영하고 개인정보의 분실, 도난, 누설 등을 방지하기 위한 노력을 기울입니다.<br>
											
											7. 개인정보의 보유 및 파기<br>
											
											7.1 "회사"는 개인정보의 수집목적이 달성되면 지체 없이 해당 정보를 파기합니다.<br>
											
											7.2 개인정보 파기는 별도의 데이터 저장매체를 통해 진행되며, 재생이 불가능한 방법으로 영구적으로 삭제됩니다.<br>
											
											7.3 단, 관련 법령에 따라 일정 기간 동안 개인정보를 보존하여야 하는 경우에는 해당 기간 동안 보존됩니다.</p>
										</div>
									</div>
								
								<div class="joinBtn">
									<button type="button">회원가입</button>
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
	
		function checkAll() {
			var agreementAll = document.getElementById("agreementAll");
			var checkboxes = document.querySelectorAll('input[type="checkbox"]');
		
	 		for (var i = 0; i < checkboxes.length; i++) {
			checkboxes[i].checked = agreementAll.checked;
			}
		}
	// 모달창 열기
	document.getElementById('showTermsModal').addEventListener('click', function () {
		document.getElementById('termsModal').style.display = 'block';
	});

	// 모달창 닫기
	document.querySelector('.close').addEventListener('click', function () {
		document.getElementById('termsModal').style.display = 'none';
	});

	// 모달 외부 클릭 시 모달창 닫기
	window.addEventListener('click', function (event) {
		if (event.target === document.getElementById('termsModal')) {
			document.getElementById('termsModal').style.display = 'none';
		}
	});
</script>
	
	
	
</body>
</html>