<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/info.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/modal.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/1f85e66bca.js" crossorigin="anonymous"></script>

</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../include/header.jsp"/>
					<section><!-- 섹션 -->
						<jsp:include page="../include/trainerHeader.jsp"/>
						<script>
							window.onload = function() {
								$('#trainer_tab1').addClass('active_tab');
							}
						</script>
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents"><!-- 코치정보(패딩탑) -->
									<div class="row"><!-- 코치정보 -->
										<div class="user_info">
											<div class="user_wrap">
												<div class="user_input">
													<label>이름</label>
													<input type="text" value="${mo.mbName}" disabled>
												</div>
											</div>
											<div class="user_wrap">
												<div class="user_input">
													<label>이메일</label>
													<input type="text" value="${mo.mbEmail}" disabled>
												</div>
											</div>
											<div class="user_wrap">
												<div class="user_input">
													<label>활동하는 센터를 선택해주세요<span>*</span></label>
													<div class="center_find input_wrap" style="position:relative;<c:if test="${not empty tnCtNo}">display:none;</c:if>">
														<div class="input_width">
															<input type="text" name="centerSearch" id="center_search">
														</div>
														<div class="send_auth_button" onclick="ctFound()">
															<i class="fa-solid fa-magnifying-glass"></i>
														</div>
													</div>
													<div class="center_found input_wrap" style="<c:if test="${empty tnCtNo}">display:none;</c:if>">
														<div class="input_width">
															<input type="text" name="centerName" id="center_name" readonly value="${ctName}">
															<input type="hidden" name="centerNo" id="center_no" value="${tnCtNo}">
														</div>
														<div class="send_auth_button" onclick="searchActivation()">
															<span>센터 변경하기</span>
														</div>
													</div>
												</div>
											</div>
<!-- 											<div class="user_wrap"> -->
<!-- 												<div class="user_input"> -->
<!-- 													<label>성별</label> -->
<!-- 													<div class="flex"> -->
<!-- 														<div class="button_wrap"> -->
<!-- 															<button class="button active"><span>남성</span></button> -->
<!-- 														</div> -->
<!-- 														<div class="button_wrap"> -->
<!-- 															<button class="button"><span>여성</span></button> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
											<div class="user_wrap">
												<div class="user_input">
													<label>핸드폰 번호<span>*</span></label>
													<div class="input_wrap">
														<div class="input_width">
															<input type="tel" name="tel" placeholder="'-' 없이 입력" maxlength="20" autocomplete="off" value="${mo.mbPhone}" readonly>														
														</div>
<!-- 														<div class="send_submit"> -->
<!-- 															<div class="send_auth_button">인증번호 발송</div> -->
<!-- 														</div> -->
													</div>
												</div>
											</div>
<!-- 											<div class="user_wrap"> -->
<!-- 												<div class="user_input"> -->
<!-- 													<label>상담요청 인삿말 설정(연락 시 참고사항)<span>*</span></label> -->
<!-- 													<textarea name="counseling" placeholder="ex) 오후 6시~10시는 상담이 어렵습니다. 문자를 남겨주시면 확인 후 연락드리겠습니다. 감사합니다." ></textarea> -->
<!-- 												</div> -->
<!-- 											</div> -->
											<hr>
											<div class="submit">
												<div class="half_button">
													<button class="submit_button checked pwd_check_button" onclick="pwdCheck()"><span>비밀번호 변경</span></button>
												</div>
												<div class="half_button">
													<button class="submit_button checked" onclick="trainerInfoUpdate()"><span>정보 업데이트</span></button>
												</div>
											</div>
											<div class="resign">
												회원탈퇴
											</div>
										</div>
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
	<!-- 비밀번호 변경으로 이동하기 전에 사용자를 확인하는 모달 결제창 -->
	<jsp:include page="../include/pwdCheckModal.jsp"/>
	<jsp:include page="../include/centerFindModal.jsp"/>
	
<!-- 비밀번호 변경 모달 -->
<script>
const pwdCheckModal = $('.pwd_check_modal');
const exitButton = $('.exit_button');
const modalColse = $('.modal_close');
// 리뷰 작성하기 버튼
function pwdCheck(){
//		if($('.review_button_expand_wrap').css('opacity')==1){
//			$('.review_button_expand_wrap').css('opacity',0);
//		}else{
//			$('.review_button_expand_wrap').css('opacity',1);
//		}
		pwdCheckModal.css('display','flex');
		
//		console.log('review_write_button');
	}

window.onclick = function(e){
	console.log('pwd_check_modal : ' + e.target.classList.contains('pwd_check_modal'));
	
	if(e.target.classList.contains('pwd_check_modal')){
		pwdCheckModal.css('display','none');
	}
	
}

exitButton.click(function() {
	pwdCheckModal.css('display','none');
});

modalColse.click(function() {
	pwdCheckModal.css('display','none');
});
</script>
<!-- 센터 검색 -->
<script>
// const centerSelectBtn = document.querySelector(".search_btn");
const centerFind = document.querySelector(".center_find");
const centerFound = document.querySelector(".center_found");
const centerSearch = document.getElementById("center_search");
const centerName = document.getElementById("center_name");
const centerNo = document.getElementById("center_no");
const centerFindModal = document.getElementById("center_find_modal");
const centerList = document.getElementById("center_list");
function ctFound(){
// 	console.log(centerName.value);
	$.ajax({
			url: 'centerFind.ajax',
			type: 'GET',
			dataType: "json",
			data : {'ctName':centerSearch.value},
			success : function (data){
				if(data[0].value=='none'){
					alert("센터 이름을 입력해주세요.");
					return;
				}
				if(data[0].value == 0){
					alert("해당하는 센터가 존재하지 않습니다. 다시 확인해주세요.");
					return;
				}
				if(data[0].value > 0){
					console.log(data);
					let centerInfoHtml = '<div>';
					data.forEach(function(centerInfo){
						if(centerInfo.ctName===undefined){
							return;
						}
						centerInfoHtml+='<div class="center_info" onclick="centerSelect('+centerInfo.ctNo+')">';
						centerInfoHtml+='<span class="center_name" id="ctName('+centerInfo.ctNo+')">'+centerInfo.ctName+'</span>';
						centerInfoHtml+='<br><span class="center_addr">'+centerInfo.ctAddr+'</span></div>';
					});
					centerInfoHtml += '</div>';
					centerFindModal.style.display='flex';		
					centerList.innerHTML=centerInfoHtml;					
				}
			},
			error: function (err){
		 		centerList.style.color='red';
		 		centerList.textContent='통신연결 실패';
			}
		});
}

function centerSelect(ctNo){
	let selectedCenterName = document.getElementById('ctName('+ctNo+')').textContent;
// 	console.log(ctNo);
// 	console.log(selectedCenterName);
	centerName.value = selectedCenterName;
	centerNo.value = ctNo;
	centerFind.style.display='none';
	centerFound.style.display='';
	centerFindModal.style.display='none';
	
}


function searchActivation(){
	if(confirm("센터를 변경시 센터에서 승인하기 까지 트레이너 정보가 비공개로 전환됩니다. 진행하시겠습니까?")){
		centerFind.style.display='';
		centerFound.style.display='none';
	}
}
window.onclick = function(e){
// 	console.log('pwd_check_modal : ' + e.target.classList.contains('pwd_check_modal'));
	
	if(e.target.classList.contains('center_find_modal')){
		centerFindModal.style.display='none';
	}
	
}

exitButton.click(function() {
	centerFindModal.style.display='none';
});

modalColse.click(function() {
	centerFindModal.style.display='none';
});


</script>
<!-- 정보 업데이트 -->
<script>
	function trainerInfoUpdate(){
		if(centerNo.value==''){
			alert('센터를 선택해주세요.');
			return;
		}else{
			$.ajax({
				url: 'centerTrainerConnect.ajax',
				type: 'POST',
				dataType: "json",
				data : {'ctNo':centerNo.value,'ctName':centerName.value},
				success : function (data){
					if(data.value==1){
						alert('센터가 성공적으로 변경되었습니다.');
						location.reload();
					}else if(data.value==2){
				 		if(confirm("트레이너 정보가 없습니다. 트레이너 정보 입력 페이지로 이동하시겠습니까?")){
				 			location.href="trainerInfoWrite";
				 		}
					}else{
				 		alert("데이터없음");
				 		return;
					}
				},
				error: function (err){
					alert("통신실패");
				}
			});	
		}
	}

</script>
</body>
</html>