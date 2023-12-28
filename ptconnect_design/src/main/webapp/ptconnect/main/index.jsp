<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PT Connect</title>

<link href="${pageContext.request.contextPath}/source/css/mainPage.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/source/css/home.css" type="text/css" rel="stylesheet">

 <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

</head>
<body>
	<jsp:include page="../../source/include/header.jsp"/>
	<section>
	<!-- 메인베너 -->
		<div class="homeMainBanner">
			<div class="bannerBox">
				<div class="banner">
					<img src="${pageContext.request.contextPath}/source/img/mainbanner1.png">
					<h4>가입 고객</h4>
					<h1>13,000</h1>
					<p><span>13,000</span>명의 고객님이 <br> PTConnect를 믿고 찾아주세요! </p>
				</div>
				<div class="banner">
					<img src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
					<h4>등록 트레이너</h4>
					<h1>2,500</h1>
					<p><span>2,500</span>명의 전문트레이너가 <br> 활동중이에요! </p>
				</div>
				<div class="banner">
					<img src="${pageContext.request.contextPath}/source/img/mainbanner3.png">
					<h4>이용 후기</h4>
					<h1>120,000</h1>
					<p><span>120,000</span>건의 후기를 <br> 확인해 보세요!</p>
				</div>
			</div>
		</div>
		<!-- 검색창 -->
		<div class="mainSearchBar">
			<input type="text" id="search_keyword" class="bar" placeholder="지역, 센터, 선생님 검색"  maxlength="20">
		</div>
		
		<!-- 리뷰 배너 -->
		<div class="swiper">
			<div class="reviewBannerTitle">
				<div class="titleBar">
					<h1>실시간 후기</h1>
					<img src="${pageContext.request.contextPath}/source/img/thumicon.png">
				</div>
			</div>
		
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="mainReviewTitle">
						<h4 class="reviewUser">정준하 회원님</h4>
						<h5 class="reviewDate">10분전</h5>
						<span class="reviewStar"> &#9733;&#9733;&#9733;&#9733;&#9733;</span>
					</div>
					
					<div class="reviewText">
						<p>저는 피티를 처음 받았어요 하두 커뮤니티에서 피티에 대해 말이 많아서 망설이다가 포기하곤 했는데  새해 목표로 바디프로필을 계획해서 선생님을 찾다가
						pt커넥트를 알게되었고 주변에서 근무하시는 평 좋은 선생님을 찾아 수업받고 3개월의 대장정 끝에 생애 첫 바디프로필에 성공했습니다ㅜㅜ 물론 목표를 달성한것도 
						좋지만 선생님이 운동방법,식사는 물론이고 운동하며 체형이 틀어진것에 대한 정보나 올바른 자세에 대해 자세히 설명해주셔서 앞으로 살면서 내야할 병원비도 
						아낀것같은 정말 뜻깊은 시간이었어요!!!ㅎㅎ 정말 강추합니다!!!!
						</p>
					</div>
					
					<div class="moveTrainerPage">
						<div class="trainerProfile">
							<img src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
							<div class="profileTitle">
								<h4>로니콜먼 <span>트레이너</span></h4>
								<h5 class="profileAddr">미국 11번가 골드짐</h5>
							</div>
							<div class="movePageBtn">
								<button type="button"><span class="btnSymbol">&#x27E9;</span></button>
							</div>
						</div>
					</div>
			
				</div>
				<div class="swiper-slide">
					<div class="mainReviewTitle">
						<h4 class="reviewUser">정준하 회원님</h4>
						<h5 class="reviewDate">10분전</h5>
						<span class="reviewStar"> &#9733;&#9733;&#9733;&#9733;&#9733;</span>
					</div>
					
					<div class="reviewText">
						<p>저는 피티를 처음 받았어요 하두 커뮤니티에서 피티에 대해 말이 많아서 망설이다가 포기하곤 했는데  새해 목표로 바디프로필을 계획해서 선생님을 찾다가
						pt커넥트를 알게되었고 주변에서 근무하시는 평 좋은 선생님을 찾아 수업받고 3개월의 대장정 끝에 생애 첫 바디프로필에 성공했습니다ㅜㅜ 물론 목표를 달성한것도 
						좋지만 선생님이 운동방법,식사는 물론이고 운동하며 체형이 틀어진것에 대한 정보나 올바른 자세에 대해 자세히 설명해주셔서 앞으로 살면서 내야할 병원비도 
						아낀것같은 정말 뜻깊은 시간이었어요!!!ㅎㅎ 정말 강추합니다!!!!
						</p>
					</div>
					
					<div class="moveTrainerPage">
						<div class="trainerProfile">
							<img src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
							<div class="profileTitle">
								<h4>로니콜먼 <span>트레이너</span></h4>
								<h5 class="profileAddr">미국 11번가 골드짐</h5>
							</div>
							<div class="movePageBtn">
								<button type="button"><span class="btnSymbol">&#x27E9;</span></button>
							</div>
						</div>
					</div>
			
				</div>
				<div class="swiper-slide">
					<div class="mainReviewTitle">
						<h4 class="reviewUser">정준하 회원님</h4>
						<h5 class="reviewDate">10분전</h5>
						<span class="reviewStar"> &#9733;&#9733;&#9733;&#9733;&#9733;</span>
					</div>
					
					<div class="reviewText">
						<p>저는 피티를 처음 받았어요 하두 커뮤니티에서 피티에 대해 말이 많아서 망설이다가 포기하곤 했는데  새해 목표로 바디프로필을 계획해서 선생님을 찾다가
						pt커넥트를 알게되었고 주변에서 근무하시는 평 좋은 선생님을 찾아 수업받고 3개월의 대장정 끝에 생애 첫 바디프로필에 성공했습니다ㅜㅜ 물론 목표를 달성한것도 
						좋지만 선생님이 운동방법,식사는 물론이고 운동하며 체형이 틀어진것에 대한 정보나 올바른 자세에 대해 자세히 설명해주셔서 앞으로 살면서 내야할 병원비도 
						아낀것같은 정말 뜻깊은 시간이었어요!!!ㅎㅎ 정말 강추합니다!!!!
						</p>
					</div>
					
					<div class="moveTrainerPage">
						<div class="trainerProfile">
							<img src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
							<div class="profileTitle">
								<h4>로니콜먼 <span>트레이너</span></h4>
								<h5 class="profileAddr">미국 11번가 골드짐</h5>
							</div>
							<div class="movePageBtn">
								<button type="button"><span class="btnSymbol">&#x27E9;</span></button>
							</div>
						</div>
					</div>
			
				</div>
				<div class="swiper-slide">
					<div class="mainReviewTitle">
						<h4 class="reviewUser">정준하 회원님</h4>
						<h5 class="reviewDate">10분전</h5>
						<span class="reviewStar"> &#9733;&#9733;&#9733;&#9733;&#9733;</span>
					</div>
					
					<div class="reviewText">
						<p>저는 피티를 처음 받았어요 하두 커뮤니티에서 피티에 대해 말이 많아서 망설이다가 포기하곤 했는데  새해 목표로 바디프로필을 계획해서 선생님을 찾다가
						pt커넥트를 알게되었고 주변에서 근무하시는 평 좋은 선생님을 찾아 수업받고 3개월의 대장정 끝에 생애 첫 바디프로필에 성공했습니다ㅜㅜ 물론 목표를 달성한것도 
						좋지만 선생님이 운동방법,식사는 물론이고 운동하며 체형이 틀어진것에 대한 정보나 올바른 자세에 대해 자세히 설명해주셔서 앞으로 살면서 내야할 병원비도 
						아낀것같은 정말 뜻깊은 시간이었어요!!!ㅎㅎ 정말 강추합니다!!!!
						</p>
					</div>
					
					<div class="moveTrainerPage">
						<div class="trainerProfile">
							<img src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
							<div class="profileTitle">
								<h4>로니콜먼 <span>트레이너</span></h4>
								<h5 class="profileAddr">미국 11번가 골드짐</h5>
							</div>
							<div class="movePageBtn">
								<button type="button"><span class="btnSymbol">&#x27E9;</span></button>
							</div>
						</div>
					</div>
			
				</div>
				<div class="swiper-slide">
					<div class="mainReviewTitle">
						<h4 class="reviewUser">정준하 회원님</h4>
						<h5 class="reviewDate">10분전</h5>
						<span class="reviewStar"> &#9733;&#9733;&#9733;&#9733;&#9733;</span>
					</div>
					
					<div class="reviewText">
						<p>저는 피티를 처음 받았어요 하두 커뮤니티에서 피티에 대해 말이 많아서 망설이다가 포기하곤 했는데  새해 목표로 바디프로필을 계획해서 선생님을 찾다가
						pt커넥트를 알게되었고 주변에서 근무하시는 평 좋은 선생님을 찾아 수업받고 3개월의 대장정 끝에 생애 첫 바디프로필에 성공했습니다ㅜㅜ 물론 목표를 달성한것도 
						좋지만 선생님이 운동방법,식사는 물론이고 운동하며 체형이 틀어진것에 대한 정보나 올바른 자세에 대해 자세히 설명해주셔서 앞으로 살면서 내야할 병원비도 
						아낀것같은 정말 뜻깊은 시간이었어요!!!ㅎㅎ 정말 강추합니다!!!!
						</p>
					</div>
					
					<div class="moveTrainerPage">
						<div class="trainerProfile">
							<img src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
							<div class="profileTitle">
								<h4>로니콜먼 <span>트레이너</span></h4>
								<h5 class="profileAddr">미국 11번가 골드짐</h5>
							</div>
							<div class="movePageBtn">
								<button type="button"><span class="btnSymbol">&#x27E9;</span></button>
							</div>
						</div>
					</div>
			
				</div>
				<div class="swiper-slide">
					<div class="mainReviewTitle">
						<h4 class="reviewUser">정준하 회원님</h4>
						<h5 class="reviewDate">10분전</h5>
						<span class="reviewStar"> &#9733;&#9733;&#9733;&#9733;&#9733;</span>
					</div>
					
					<div class="reviewText">
						<p>저는 피티를 처음 받았어요 하두 커뮤니티에서 피티에 대해 말이 많아서 망설이다가 포기하곤 했는데  새해 목표로 바디프로필을 계획해서 선생님을 찾다가
						pt커넥트를 알게되었고 주변에서 근무하시는 평 좋은 선생님을 찾아 수업받고 3개월의 대장정 끝에 생애 첫 바디프로필에 성공했습니다ㅜㅜ 물론 목표를 달성한것도 
						좋지만 선생님이 운동방법,식사는 물론이고 운동하며 체형이 틀어진것에 대한 정보나 올바른 자세에 대해 자세히 설명해주셔서 앞으로 살면서 내야할 병원비도 
						아낀것같은 정말 뜻깊은 시간이었어요!!!ㅎㅎ 정말 강추합니다!!!!
						</p>
					</div>
					
					<div class="moveTrainerPage">
						<div class="trainerProfile">
							<img src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
							<div class="profileTitle">
								<h4>로니콜먼 <span>트레이너</span></h4>
								<h5 class="profileAddr">미국 11번가 골드짐</h5>
							</div>
							<div class="movePageBtn">
								<button type="button"><span class="btnSymbol">&#x27E9;</span></button>
							</div>
						</div>
					</div>
			
				</div>
				<div class="swiper-slide">
					<div class="mainReviewTitle">
						<h4 class="reviewUser">정준하 회원님</h4>
						<h5 class="reviewDate">10분전</h5>
						<span class="reviewStar"> &#9733;&#9733;&#9733;&#9733;&#9733;</span>
					</div>
					
					<div class="reviewText">
						<p>저는 피티를 처음 받았어요 하두 커뮤니티에서 피티에 대해 말이 많아서 망설이다가 포기하곤 했는데  새해 목표로 바디프로필을 계획해서 선생님을 찾다가
						pt커넥트를 알게되었고 주변에서 근무하시는 평 좋은 선생님을 찾아 수업받고 3개월의 대장정 끝에 생애 첫 바디프로필에 성공했습니다ㅜㅜ 물론 목표를 달성한것도 
						좋지만 선생님이 운동방법,식사는 물론이고 운동하며 체형이 틀어진것에 대한 정보나 올바른 자세에 대해 자세히 설명해주셔서 앞으로 살면서 내야할 병원비도 
						아낀것같은 정말 뜻깊은 시간이었어요!!!ㅎㅎ 정말 강추합니다!!!!
						</p>
					</div>
					
					<div class="moveTrainerPage">
						<div class="trainerProfile">
							<img src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
							<div class="profileTitle">
								<h4>로니콜먼 <span>트레이너</span></h4>
								<h5 class="profileAddr">미국 11번가 골드짐</h5>
							</div>
							<div class="movePageBtn">
								<button type="button"><span class="btnSymbol">&#x27E9;</span></button>
							</div>
						</div>
					</div>
			
				</div>
			
				
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
	</section>
	<jsp:include page="../../source/include/footer.jsp"/>




  <script>
    var swiper = new Swiper('.swiper', {
      slidesPerView: 3,
      direction: getDirection(),
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      on: {
        resize: function () {
          swiper.changeDirection(getDirection());
        },
      },
    });

    function getDirection() {
      var windowWidth = window.innerWidth;
      var direction = window.innerWidth <= 760 ? 'vertical' : 'horizontal';

      return direction;
    }
  </script>










</body>
</html>