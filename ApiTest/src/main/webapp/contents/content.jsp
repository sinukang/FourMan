<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contentPage</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6eaf7ed9af48a5319b75a0937ac3096"></script>
</head>
<body>
<div id="map" style="width:500px;height:400px;"></div>
<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(35.8183333748, 127.1536778411), //지도의 중심좌표.
		draggable: false,
		level: 4 //지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	var markerPosition = new kakao.maps.LatLng(35.8183333748, 127.1536778411);
	
	var marker = new kakao.maps.Marker({
		position: markerPosition
	});
	
	function setDraggable(draggable){
		map.setDraggable(draggable);
	}
	
	marker.setMap(map);	
	
</script>
</body>
</html>