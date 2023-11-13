<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨텐츠 상세보기 페이지</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6eaf7ed9af48a5319b75a0937ac3096"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.css">
<link rel="stylesheet" type="text/css" href="../source/css/contents/bookmarkedContents.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>
<body>

<jsp:include page="../source/include/header.jsp"/>
<div class="container">
	<div class="container-title">
		<h1>MyPage</h1>
	</div>
	<div class="page-inner">
		<jsp:include page="../source/include/mypageNavi.jsp"/>
		<div class="bookmarkedContents">
			<div class="btn-area">
				<button type="button" class="btn1 clicked">나의 즐겨찾기</button>
				<button type="button" class="btn1">나의 후기</button>
			</div>
			<div class="bookmarked">
				<header class="bookmarked-head">
					<strong class="bookmarked-title">총 <span class="bookmarked-cnt">7</span> 개</strong>
				</header>
				<div class="bookmarked-data">
					<div class="contents-map">
						<div id="map" style="width:100%;height:100%;border-radius:10px"></div>
					</div>
					<div class="bookmarked-list">
						<ul>
							<li class="detailview">
								<div class="detailimage">
									<img src="../source/images/duck4.jpg">
								</div>
								<div>
									<span><strong class="contents-title">전주덕진공원</strong></span>
									<span class="contenttype_label"><span>관광지</span></span>
									<div class="detail-grade">
										<span>★★★★☆</span><span>4.1/5.0</span>
									</div>
									<div class="detail-btn2">
										<button class="btn">즐찾해제</button>
									</div>		
									<div class="detail-btn">
										<button class="btn">바로가기</button>
									</div>		
								</div>
							</li>
							<c:forEach var="i" begin="1" end="10" step="1">
							<li class="bookmarked_li">
								<span><i class="marker"></i><strong class="contents-title">전주덕진공원</strong></span>
								<div class="list-btn">
									<button class="btn">열기</button>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../source/include/footer.jsp"/>
<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(35.8403598, 127.1325083), //지도의 중심좌표.
		level: 7 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>
</body>
</html>