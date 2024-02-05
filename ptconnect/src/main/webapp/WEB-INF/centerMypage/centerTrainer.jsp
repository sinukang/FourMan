<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">

</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../include/header.jsp"/>
					<section><!-- 섹션 -->
						<jsp:include page="../include/centerHeader.jsp"/>
						<script>
							window.onload = function() {
								$('#trainer_tab3').addClass('active_tab');
							}
						</script>
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents"><!-- 코치정보(패딩탑) -->
									<div>
										<div class="registered_trainer"><!-- 소속 트레이너 목록 -->
											<h4>소속 트레이너 목록</h4>
											<div class="content_wrap">
												<c:forEach var="tio" items="${cTList}">
													<div>
														<h3>${tio.mbName}</h3>
													</div>
												</c:forEach>
											</div>
										</div>
										<div class="registration"><!-- 등록 요청 트레이너 목록 -->
											<h4>등록 요청 트레이너 목록</h4>
											<div class="content_wrap">
												<c:forEach var="tio" items="${rTList}">
													<div>
														<h3>${tio.mbName}</h3>
														<button onclick="checkTrainer(${tio.tnNo})">승인하기</button>
													</div>
												</c:forEach>
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
	<script>
		function checkTrainer(tnNo){
			if(confirm('해당 트레이너를 승인하시겠습니까?')){
				$.ajax({
					url: 'trainerRegistered.ajax',
					type: 'POST',
					dataType: "json",
					data : {'tnNo':tnNo},
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