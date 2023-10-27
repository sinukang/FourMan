<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contentPage</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6eaf7ed9af48a5319b75a0937ac3096"></script>
<link href="${pageContext.request.contextPath}/resources/css/content.css" rel="stylesheet">
</head>
<body>
	<div id="map" style="width:500px; height:400px;"></div>
	<!-- <button type="button" onclick="zoomIn()">+</button> -->
	<!-- <button type="button" onclick="zoomOut()">-</button> -->
	<button onclick="test()">TEST</button>
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
			{title: '${cv.title}',
// 			 content: 	"<div style='padding: 5px;'>"
// 			 		  +		"<button type='button' onclick='closeOverlay()'>닫기</button>"
// 					  +		"<a href='https://map.kakao.com/link/map/Hello World!,${cv.mapy}, ${cv.mapx}' class='a1' target='_blank'>큰 지도보기</a>"
// 					  + 	"<a href='https://map.kakao.com/link/to/Hello World!,${cv.mapy}, ${cv.mapx}' class='a2' target='_blank'>길찾기</a>"
// 					  + "</div>",
			 latlng: new kakao.maps.LatLng(${cv.mapy}, ${cv.mapx})
			}
		];
	
	var test = [];
	test.push(positions[0]);
	
	function TEST(){
		
		for (let i = 0; i < test.length; i++) {
			alert(test[i]);
		}
	}
	<c:forEach var='cv' items='${cv}'>
		let latlng = new kakao.maps.LatLng(${cv.mapy}, ${cv.mapx});
		let info = "{\"title\" : \""+${cv.title}+"\", \"latlng\" : \""+latlng+"\"}";
		
		positions.push(info);
	</c:forEach>
		
	var bounds = new kakao.maps.LatLngBounds();
	var overlayArray = [];	//마커 클릭 시 띄울 오버레이들 담는 배열
	
	for (var i = 0; i < positions.length; i++) {	//데이터 개수만큼 반복문 돌면서 마커, 오버레이 생성
		var data = positions[i];
		displayMarker(data);
	}
	
	function displayMarker(data){
		
		var marker = new kakao.maps.Marker({	//좌표값을 지정해 마커 생성
			map : map,
			position : data.latlng,
			title : data.title,
			clickable : true
		});		
		
		var overlay = new kakao.maps.CustomOverlay({	//마커를 클릭하면 띄워줄 오버레이
			yAnchor: 3,
			position: marker.getPosition()
		});
				  	
	  	var content = '<div class="wrap">' + 
			          '    <div class="info">' + 
			          '        <div class="title">' + 
			          '            '+data.title+'' + 
			          '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
			          '        </div>' + 
			          '        <div class="body">' + 
			          '            <div class="img">' +
			          '                <img src="${cv.firstimage2}" width="73" height="70">' +
			          '           </div>' + 
			          '            <div class="desc">' + 
			          '                <div class="ellipsis">${cv.addr1}</div>' + 
			          '                <div class="jibun ellipsis">${cv.zipcode}</div>' + 
			          '                <div><a href="https://map.kakao.com/link/to/Hello World!,${cv.mapy},${cv.mapx}" class="a2" target="_blank">길찾기</a></div>' + 
			          '            </div>' + 
			          '        </div>' + 
			          '    </div>' +    
			          '</div>';
				  	
	    
	    overlay.setContent(content);	//만든 컨텐츠들을 overlay에 할당해줌

	    kakao.maps.event.addListener(marker, 'click', function() {	//클릭 시 오버레이 띄움
	    	closeOverlay();
	        overlay.setMap(map);
	    });		
		
		bounds.extend(data.latlng);
		overlayArray.push(overlay);
	}
	
// 	function makeClickListener(map, marker, infowindow) {
//	    return function() {
//	    	closeOverlay();
//	        infowindow.open(map, marker);
//	    };
//	}	
	
	function setBounds() {
	    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
	    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
	    map.setBounds(bounds);
	}
	
	function closeOverlay(){	//다른 마커 클릭 시 열려있는 다른 오버레이 닫아줌
		for (let i = 0; i < overlayArray.length; i++) {
			overlayArray[i].setMap(null);
		}
	}
	
// 	function closeOverlay() {
// 	    overlay.setMap(null);     
// 	}


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

//		{title: '가족회관',
//	 content: 	"<div style='padding: 5px;'>"
//		 	  +		"<button type='button' onclick='closeOverlay()'>닫기</button>"
//			  +		"<a href='https://map.kakao.com/link/map/Hello World!,35.8170667179,127.1459591164' class='a1' target='_blank'>큰 지도보기</a>"
//			  + 	"<a href='https://map.kakao.com/link/to/Hello World!,35.8170667179,127.1459591164' class='a2' target='_blank'>길찾기</a>"
//			  + "</div>",
//	 latlng: new kakao.maps.LatLng(35.8170667179, 127.1459591164)
//	},
//	{title: '객사길',
//	 content: 	"<div style='padding: 5px;'>"
//		      +		"<button type='button' onclick='closeOverlay()'>닫기</button>"
//			  +		"<a href='https://map.kakao.com/link/map/Hello World!,35.8176666120,127.1437287440' class='a1' target='_blank'>큰 지도보기</a>"
//			  + 	"<a href='https://map.kakao.com/link/to/Hello World!,35.8176666120,127.1437287440' class='a2' target='_blank'>길찾기</a>"
//			  + "</div>",
//	 latlng: new kakao.maps.LatLng(35.8176666120, 127.1437287440)
//	},
//	{title: '덕진공원',
//	 content: 	"<div style='padding: 5px;'>"
//			  +		"<button type='button' onclick='closeOverlay()'>닫기</button>"
//			  +		"<a href='https://map.kakao.com/link/map/Hello World!,35.8475156135, 127.1218687977' class='a1' target='_blank'>큰 지도보기</a>"
//			  + 	"<a href='https://map.kakao.com/link/to/Hello World!,35.8475156135, 127.1218687977' class='a2' target='_blank'>길찾기</a>"
//			  + "</div>",
//	 latlng: new kakao.maps.LatLng(35.8475156135, 127.1218687977)
//	},
//	{title: '전북 전주 한옥마을 [슬로시티]',
//	 content: 	"<div style='padding: 5px;'>"
//	 		  +		"<button type='button' onclick='closeOverlay()'>닫기</button>"
//			  +		"<a href='https://map.kakao.com/link/map/Hello World!,35.8183333748, 127.1536778411' class='a1' target='_blank'>큰 지도보기</a>"
//			  + 	"<a href='https://map.kakao.com/link/to/Hello World!,35.8183333748, 127.1536778411' class='a2' target='_blank'>길찾기</a>"
//			  + "</div>",
//	 latlng: new kakao.maps.LatLng(35.8183333748, 127.1536778411)
//	}
	
	
</script>
</body>
</html>
