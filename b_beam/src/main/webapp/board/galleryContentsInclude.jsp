<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="../source/css/gallery/
galleryContents.css" type="text/css" rel="stylesheet">
<link href="../source/css/gallery/gallery.css" type="text/css" rel="stylesheet">
<link href="../source/css/home.css" type="text/css" rel="stylesheet">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<div class="wrap">
	<div class="container">
		<table class="wrap-conttable">
			<tr>
				<td>
					<div class="inner-conttable">
						<table class="conttable1-cont">
							<tr>
								<td colspan="2" style="padding: 5px 0 5px 5px;">닉네임</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="swiper mySwiper" style="height: 100%;">
										<div class="swiper-wrapper">
											<div class="swiper-slide">
												<img src="../source/images/testimg.png" id="cont-img">
											</div>
											<div class="swiper-slide">
												<img src="../source/images/test2.jpg" id="cont-img">
											</div>
											<div class="swiper-slide">
												<img src="../source/images/test3.jpg" id="cont-img">
											</div>
										</div>
										<div class="swiper-button-next" style="color: white;"></div>
										<div class="swiper-button-prev" style="color: white;"></div>
										<div class="swiper-pagination"></div>
									</div>
								</td>
							</tr>
						</table>
						<table class="conttable2-cont">
							<tr style="font-weight: bold;">
								<td style="border-bottom:0; padding: 5px 0 3px 15px;">전주 한옥마을 야경</td>
								<td class="like">♥</td>
							</tr>
							<tr>
								<td style="padding: 10px">
									내용을 작성하였습니다.내용을 작성하였습니다.내용을 작성하였습니다.내용을 작성하였습니다.내용을 작성하였습니다.내용을 작성하였습니다.
								</td>
							</tr>
							<tr>
								<td colspan="2" style="border: 0; color:#567ff2; padding-left: 25px; font-weight: bold;">
									#전주 #한옥마을 #야경
								</td>
							</tr>
							<tr>
								<td class="comment-area" style="border-bottom:0; justify-content: center;"> 
									<div>
										<input type="text" id="comment-write" placeholder="댓글을 작성해주세요.">
									</div>
									<div style="width: 24px;">
										<label class="write-btn" for="comment-btn">
											<img src="../source/images/commentbtn.png" id="btn-img">
										</label>
										<input type="button" id="comment-btn" value="작성">
									</div>
								</td>
							</tr>
							
							<!-- 댓글 영역 -->
							<tr>
								<td class="comment-area" colspan="2" style="border-bottom:0;"> 
									<div class="comment-id">
										<span>닉네임</span>
									</div>
									<div class="comment-cont">
										댓글을 작성하였습니다.댓글을 작성하였습니다.댓글을 작성하였습니다.댓글을 작성하였습니다.댓글을 작성하였습니다.댓글을 작성하였습니다.
									</div>
									<div class="comment-date">
										2023.11.06
									</div>
									<div>
										<button type="button" style="color: black" class="del-btn" >삭제</button>
										<button type="button" style="margin-top: -4px;" onclick="">&#x1F6A8;</button>
									</div>
								</td>
							</tr>
							<!-- 댓글 영역 -->
							
							<tr>
								<td colspan=3 class="bottom-btn">
									<button type="button" class="modi-btn" onclick="location.href='${pageContext.request.contextPath}/board/galleryModify.do';" >수정</button>
									<button type="button" class="del-btn" >삭제</button>
									<button type="button" onclick="">&#x1F6A8;</button>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</div>
</div>
