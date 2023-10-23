<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contentPage</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6eaf7ed9af48a5319b75a0937ac3096"></script>
<style>
a{
	font-weight: bold;
	text-decoration: none;
}
a:visited {
	color: blue;
}
.a1{
	margin-left: 15px;
}
.a2{
	margin-left: 15px;
	margin-right: 15px;
}
</style>
</head>
<body>
<div id="map" style="width:500px;height:400px;"></div>
<!-- <button type="button" onclick="zoomIn()">+</button> -->
<!-- <button type="button" onclick="zoomOut()">-</button> -->
<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(35.8183333748, 127.1536778411), //지도의 중심좌표.
		draggable: false,	//드래그로 다른 위치로 변경하는 기능 비활성화
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	var markerPosition = new kakao.maps.LatLng(35.8183333748, 127.1536778411); //마커의 좌표값 할당
	
	var marker = new kakao.maps.Marker({	//좌표값을 지정해 마커 생성
		position : markerPosition,
		clickable : true
	});
	marker.setMap(map);		//지도위에 마커를 생성
	
	function setDraggable(draggable){
		map.setDraggable(draggable);
	}
	
// 	function zoomIn(){	//지도 확대 기능
		
// 		var level = map.getLevel();
		
// 		map.setLevel(level - 1);
// 	}
	
// 	function zoomOut(){	//지도 축소 기능
		
// 		var level = map.getLevel();
		
// 		map.setLevel(level + 1);
// 	}
	
	var iwContent = "<div style='padding: 5px;'>"
				  +	"<a href='https://map.kakao.com/link/map/Hello World!,33.450701,126.570667' class='a1' target='_blank'>큰 지도보기</a>"
				  + "<a href='https://map.kakao.com/link/to/Hello World!,33.450701,126.570667' class='a2' target='_blank'>길찾기</a>"
				  + "</div>",
		iwPosition = new kakao.maps.LatLng(35.8183333748, 127.1536778411),
		iwRemoveable = true;
				  
	var infowindow = new kakao.maps.InfoWindow({
		position : iwPosition,
		content : iwContent,
		removable : iwRemoveable
	});
	
	kakao.maps.event.addListener(marker, "click", function(){
		infowindow.open(map, marker);
	});
	
	var mapTypeControl = new kakao.maps.MapTypeControl();
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
	
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	
	
</script>
</body>
</html>