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
	var mapContainer = document.getElementById('map'), 						//지도를 담을 영역의 DOM 레퍼런스
		mapOption = { 														//지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(35.8183333748, 127.1536778411), 	//지도의 중심좌표.
			//draggable: false,												//드래그로 다른 위치로 변경하는 기능 비활성화
			level: 3 														//지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); //지도 생성 및 객체 리턴
	
// 	var markerPosition = new kakao.maps.LatLng(35.8183333748, 127.1536778411); //마커의 좌표값 할당
	
	var positions = [
			{title: '가족회관',
			 content: 	"<div style='padding: 5px;'>"
					  +		"<a href='https://map.kakao.com/link/map/Hello World!,35.8170667179,127.1459591164' class='a1' target='_blank'>큰 지도보기</a>"
					  + 	"<a href='https://map.kakao.com/link/to/Hello World!,35.8170667179,127.1459591164' class='a2' target='_blank'>길찾기</a>"
					  + "</div>",
			 latlng: new kakao.maps.LatLng(35.8170667179, 127.1459591164)
			},
			{title: '객사길',
			 content: 	"<div style='padding: 5px;'>"
					  +		"<a href='https://map.kakao.com/link/map/Hello World!,35.8176666120,127.1437287440' class='a1' target='_blank'>큰 지도보기</a>"
					  + 	"<a href='https://map.kakao.com/link/to/Hello World!,35.8176666120,127.1437287440' class='a2' target='_blank'>길찾기</a>"
					  + "</div>",
			 latlng: new kakao.maps.LatLng(35.8176666120, 127.1437287440)
			},
			{title: '덕진공원',
			 content: 	"<div style='padding: 5px;'>"
					  +		"<a href='https://map.kakao.com/link/map/Hello World!,35.8475156135, 127.1218687977' class='a1' target='_blank'>큰 지도보기</a>"
					  + 	"<a href='https://map.kakao.com/link/to/Hello World!,35.8475156135, 127.1218687977' class='a2' target='_blank'>길찾기</a>"
					  + "</div>",
			 latlng: new kakao.maps.LatLng(35.8475156135, 127.1218687977)
			},
			{title: '전북 전주 한옥마을 [슬로시티]',
			 content: 	"<div style='padding: 5px;'>"
					  +		"<a href='https://map.kakao.com/link/map/Hello World!,35.8183333748, 127.1536778411' class='a1' target='_blank'>큰 지도보기</a>"
					  + 	"<a href='https://map.kakao.com/link/to/Hello World!,35.8183333748, 127.1536778411' class='a2' target='_blank'>길찾기</a>"
					  + "</div>",
			 latlng: new kakao.maps.LatLng(35.8183333748, 127.1536778411)
			}
		];
		
	var bounds = new kakao.maps.LatLngBounds();
	var infoWindowArray = [];
	
	for (var i = 0; i < positions.length; i++) {
		var marker = new kakao.maps.Marker({	//좌표값을 지정해 마커 생성
			map : map,
			position : positions[i].latlng,
			title : positions[i].title,
			clickable : true
		});		
		
		var infowindow = new kakao.maps.InfoWindow({
			content : positions[i].content,
			removable : true
		});
		
		bounds.extend(positions[i].latlng);
		infoWindowArray.push(infowindow);
		
		kakao.maps.event.addListener(marker, 'click', makeClickListener(map, marker, infowindow));
// 		kakao.maps.event.addListener(infowindow, 'mouseout', makeOutListener(infowindow));
// 	    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		
	}
	
	function setBounds() {
	    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
	    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
	    map.setBounds(bounds);
	}
	
	function closeInfoWindow(){
		for (let i = 0; i < infoWindowArray.length; i++) {
			infoWindowArray[i].close();
		}
	}
	
	function makeClickListener(map, marker, infowindow) {
	    return function() {
	    	closeInfoWindow()
	        infowindow.open(map, marker);
	    };
	}

	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}
	

// 	marker.setMap(map);		//지도위에 마커를 생성
	
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
	
	var mapTypeControl = new kakao.maps.MapTypeControl();	//지도, 스카이뷰 버튼 추가
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
	
	var zoomControl = new kakao.maps.ZoomControl();		//확대, 축소 UI 추가
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	
	
	
</script>
</body>
</html>
