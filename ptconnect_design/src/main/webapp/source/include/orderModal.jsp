<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- 결제창 모달 -->
	<div id="order_modal" class="modal order_modal">
			<button class="modal_close">
				<span>&times;</span>
			</button>
			<div class="modal_dialog" style="width: 500px;">
				<div class="modal_content">
					<div class="modal_body" style="margin-bottom: 0;">
						<div>
							<div class="orientationContent">
								<div class="progress" style="height: 4px;">
									<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="height: 4px; width: 100%; background-color: #5865f2;">
									</div>
								</div>
							</div>
							<div>
								<div class="trainerBarWrap">
									<div class="trainerBar">
										<img class="profileImage" src="https://file.woondoc.com/gym/cover/QwqvhHp2HYATzi9nTEUEnjjzZaxQ3KTX_1700440964_5752163.jpg" alt="profile">
										<div class="coachProfileWrap">
											<div class="coachName">레슨 1회 체험</div>
											<div class="centerName">김빡빡 | 이젠IT짐</div>
										</div>
									</div>
								</div>
							</div>
							
							<div style="padding: 25px 0px;">
								<span style="font-size: 20px;">상품 금액</span>
								<span style="float: right;">
									<span style="text-decoration: line-through; font-size: 17px; color: rgb(207, 207, 207);">55,000원</span>
									<span style="font-size: 20px; font-weight: bold;">20,000원</span>
								</span>
							</div>
							
							<div style="margin-top: 0px;">
								<div class="style_input__InputDiv-sc-139qydd-0 jMxvw">
									<label>이름 <span class="required">*</span></label>
									<input id="" type="text" name="name" placeholder="필수 입력" maxlength="10" value="">
								</div>
							</div>
							
							<div style="margin-top: 24px;">
								<div class="style_input__InputDiv-sc-139qydd-0 jMxvw">
									<label>휴대폰 번호 <span>*</span></label>
									<div class="inputWrap">
										<div class="inputWidth">
											<input type="tel" name="phone" placeholder="'-'없이 입력" maxlength="20" autocomplete="off" value="">
										</div>
									</div>
								</div>
							</div>
							
							<div class="order_comment">
								트레이너님이 일정 협의를 위해 연락드립니다.
							</div>
							
							<div style="margin: 24px 0;">
								<div class="order_wrap">
									<label class="order_title">
										상담에 필요한 간단한 정보를 입력해주세요.
									</label>
								</div>
								<textarea rows="6" placeholder="ex) pt를 신청한 목적, 성별, 나이, 시간대, 간단한 건강정보 등" name="review_content" maxlength="400" class="opIntro"></textarea>
							</div>
							
							<div style="margin-top: 24px;">
								<div class="style_input__InputDiv-sc-139qydd-0 jMxvw">
									<label>포인트 사용</label>
									<div class="inputWrap" style="display: flex;">
										<div class="inputWidth" style="width: 70%;">
											<input type="text" placeholder="12430p 사용가능" maxlength="20" autocomplete="off" value="" name="usePoint">
										</div>
										
										<div class="usePoint">
											<button class="usePointButton">사용</button>
										</div>
										
									</div>
								</div>
							</div>
							
							<div style="margin-top: 24px;">
								<div class="style_input__InputDiv-sc-139qydd-0 jMxvw">
									<label>쿠폰 </label>
									<div class="inputWrap" style="display: flex;">
										<div class="inputWidth" style="width: 70%;">
											<select>
												<c:forEach var="i" begin="1" end="3" step="1">
												<option>쿠폰${i}</option>
												</c:forEach>
											</select>
										</div>
										
										<div class="useCoupon">
											<button class="useCouponButton">사용</button>
										</div>
										
									</div>
								</div>
							</div>
							
							<div style="padding: 25px 0px;">
								<span style="font-size: 20px;">결제 금액</span>
								<span style="float: right;">
									<span id="accumulatedPoints" style="font-size: 20px; font-weight: bold;">2</span>
									<span style="text-decoration: line-through; font-size: 17px; color: rgb(207, 207, 207);">55,000원</span>
									<span style="font-size: 20px; font-weight: bold;">20,000원</span>
								</span>
							</div>
							
							<div>
								<button class="paymentButtom" onclick="requestPay()">
									<span>결제하기</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script>

		</script>