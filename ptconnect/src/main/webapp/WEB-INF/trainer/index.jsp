<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>test</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6eaf7ed9af48a5319b75a0937ac3096&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
html *{
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}
.map_wrapper{
	width: 100vw;
	height: 100vh;
}
input {
	height: 40px;
	vertical-align: middle;
	border: 1px solid #dadada;
	padding: 0px 15px;
}
</style>
</head>
<body>
	<div class="map_wrapper">
		<div id="map" style="width:500px; height:400px;"></div>
		<!-- <form id="search-form">
			<input type="text" id="address-input" placeholder="주소를 입력하세요" />
			<button type="submit">검색</button>
		</form> -->
		<p>
			<input type="text" id="zip-code" placeholder="우편번호">
			<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
		</p>
		<p>
			<input type="text" id="address-1" placeholder="도로명주소" style="width: 500px">
		</p>
		<p>
			<input type="text" id="address-2" placeholder="상세주소" style="width: 500px">
		</p>
				
	</div>


</body>
<script>

	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(35.86302160353555, 127.148340249), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

	var markers = [];
// 	var infowindowArr = [];
	
	function removeMarkers(){
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(null);
// 			infowindowArr[i].close();
		}
		markers = [];
// 		infowindowArr = [];
	}
	
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
		
		// 클릭한 위치에 마커를 표시합니다 
		addMarker(mouseEvent.latLng);
	});	
	
	function addMarker(position) {
		
		removeMarkers();
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position: position
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
// 		map.setCenter(position);
		// 생성된 마커를 배열에 추가합니다
		markers.push(marker);
		console.log(position);
	}
	
	//카카오 다음 우편번호 찾기
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete: function(data) {
				removeMarkers();
				document.getElementById( 'zip-code' ).value = data.zonecode;
				document.getElementById( 'address-1' ).value = data.address;
				
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
				
				// 주소로 좌표를 검색합니다
				geocoder.addressSearch(data.address, function (result, status) {
					if (status === kakao.maps.services.Status.OK) {
						
						// 검색된 좌표를 변수에 저장합니다
						var coords = new kakao.maps.LatLng(result[0].y, result[0].x);+
						
						console.log(coords);
		
						// 결과값으로 받은 위치를 마커로 표시합니다
						var marker = new kakao.maps.Marker({
							map: map,
							position: coords
						});
						markers.push(marker);
						
// 						// 인포윈도우로 장소에 대한 설명을 표시합니다
// 						var infowindow = new kakao.maps.InfoWindow({
// 							content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
// 						});
// 						infowindow.open(map, marker);
// 						infowindowArr.push(infowindow);
		
						// 검색된 좌표로 지도 중심을 이동시킵니다
						map.setCenter(coords);
					
					} else {
						// 검색 실패 시 예시 좌표로 이동합니다
						var exampleCoords = new kakao.maps.LatLng(35.86302160353555, 127.148340249);
						alert("검색 실패! 예시 좌표 " + exampleCoords.toString() + " 로 이동합니다.");
						map.setCenter(exampleCoords);
					}
				});
			}
		}).open();
	}

	
//	//검색된 좌표를 clipboard에 복사합니다
//	let dummy = document.createElement("textarea");
//	document.body.appendChild(dummy);
//	dummy.value = coords.toString().replace(/[()]/g, "").replace(", ", ",");
//	dummy.select();
//	console.log(dummy.value);
//	document.execCommand("copy");
//	document.body.removeChild(dummy);
//	alert("좌표가 클립보드에 복사되었습니다.");
	

</script>
</html>