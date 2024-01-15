<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

	<div>
		<div id="review_write_modal" class="modal review_write_modal">
			<button class="modal_close">
				<span>&times;</span>
			</button>
			<div class="modal_dialog">
				<div class="modal_content">
					<div class="modal_body">
						<div>
							<h5 class="header_title">
								솔직한 후기를 남겨주세요!
								<span class="exit_button">&times;</span>
							</h5>
							<div class="review_wrap">
								<label class="review_title">
									후기 작성 요령
								</label>
							</div>
							<ul class="help">
								<li>
									• 해당 코치님에게 트레이닝을 받은 증빙사진이 필요합니다.<br>
									(PT 약정서/계약서 or 코치님과 함께 찍은 사진 등 기타)
								</li>
								<li>• 업로드된 사진을 터치/드래그 하여 삭제/이동 할 수 있습니다.</li>
								<li>• 증빙이 적절하지 않을 시 삭제처리 됩니다.(상시 모니터링 중)</li>
							</ul>
							<div class="flex_box review_rating">
								<label class="review_title">
									별점을 선택해주세요
								</label>
								<div>
									<select>
										<option style="color: #FFBB33;">★★★★★</option>
										<option style="color: #FFBB33;">★★★★☆</option>
										<option style="color: #FFBB33;">★★★☆☆</option>
										<option style="color: #FFBB33;">★★☆☆☆</option>
										<option style="color: #FFBB33;">★☆☆☆☆</option>
									</select>
								</div>
							</div>
							<div>
								<div class="flex_box review_wrap">
									<label class="review_title">
										사진을 첨부해주세요 (최대 3개)
									</label>
								</div>
<!-- 								사진첨부시 위치 -->
								<div class="review_write_photo">
								</div>
								<label for="review_filename">
									<div class="add_photo_button">+ 사진 추가하기</div>
								</label>
								<input type="file" id="review_filename" name="p_image_1" accept="image/*" multiple style="opacity: 0; display: none">
							</div>
							<div style="margin: 24px 0;">
								<div class="review_wrap">
									<label class="review_title">
										내용을 작성해주세요
									</label>
								</div>
								<textarea rows="6" placeholder="내용을 입력해주세요" name="review_content" maxlength="400"></textarea>
							</div>
							<div>
								<button class="review_write_action_button checked">
									<span>리뷰 작성 완료</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
