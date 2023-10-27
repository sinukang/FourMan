<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨텐츠 상세보기 페이지</title>
<link rel="stylesheet" type="text/css" href="../css/contentsList.css">



</head>
<body>

<header class="header">
		<div class="header-logo">
			<h1 class="logo">
				<a class="svgLogo" href="./Home.jsp">
					<img src="./images/logo4.png" width="150" height="80" alt="메인화면으로 이동">
				</a>
			</h1>
		</div>
		<div class="menu">
			<ul class="depth1">
				<li>
					<a href="./Home.jsp">관광컨텐츠</a>
				</li>
				<li>
					<a href="./Home.jsp">자유게시판</a>
				</li>
				<li>
					<a href="./Home.jsp">로그인</a>
				</li>
				<li>
					<a href="./Home.jsp">마이페이지</a>
				</li>
				<li>
					<a href="./Home.jsp">공지사항</a>
				</li>
			</ul>
		</div>
		<span calss="login">
			<a class="loginbutton" href="로그인페이지">
			<img src="./images/login.png">
			</a>
		</span>
	</header>

<form>
  <div class="contentsdetail">
       	
        <p  id="conname">전주덕진공원</p>
	        <div class="favorite" id="favorite">즐겨찾기
				<span class="favorite-icon" onclick="toggleFavorite()">&#9734;</span>
			</div>
        <div><img id="bigImage" src="../images/duck4.jpg" alt="Big Image"></div>
        <div class="smallImageContainer">
		    <img class="smallImage" src="../images/duck4.jpg" alt="Image 1" onclick="swapImages(this)">
		    <img class="smallImage" src="../images/duck5.jpg" alt="Image 2" onclick="swapImages(this)">
		    <img class="smallImage" src="../images/duck3.jpg" alt="Image 3" onclick="swapImages(this)">
		    <img class="smallImage" src="../images/duck1.png" alt="Image 4" onclick="swapImages(this)">
		    <img class="smallImage" src="../images/duck2.png" alt="Image 5" onclick="swapImages(this)">
		    <img class="smallImage" src="../images/duck4.jpg" alt="Image 1" onclick="swapImages(this)">
		    <img class="smallImage" src="../images/duck5.jpg" alt="Image 2" onclick="swapImages(this)">
		    <img class="smallImage" src="../images/duck3.jpg" alt="Image 3" onclick="swapImages(this)">
		    <img class="smallImage" src="../images/duck1.png" alt="Image 4" onclick="swapImages(this)">
		    <img class="smallImage" src="../images/duck2.png" alt="Image 5" onclick="swapImages(this)">
		</div>
		
		
	<div class="container">
		<ul class="tab">
			<li class="is_on">
    			<a href="#tab1" class="btn" onclick="swapTab('#tab1')">기본정보</a>
			</li>
			  <li>
				<a href="#tab2" class="btn" onclick="swapTab('#tab2')">이용안내</a>
			</li>
			  <li>
			   <a href="#tab3" class="btn" onclick="swapTab('#tab3')">위치 및 상세정보</a>
			</li>
		</ul>
	<div class="cont_area">
			<div class="cont" id="tab1">
				<div class="top_list">
<!-- 					<ul> -->
<!-- 						<li>주소  전북 전주시 덕진구 권삼득로 390-1 전주덕진공원</li> -->
<!-- 						<li>홈페이지</li> -->
<!-- 					</ul> -->
					<table>
						<tr>
							<td>
								주소
							</td>
							<td>
								${cv.addr1}
							</td>
						</tr>
						<tr>
							<td>
								전화번호
							</td>
							<td>
								${cv.addr1}
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="cont" id="tab2">
				<div class="top_list">
<!-- 					<ul> -->
<!-- 						<li>문의 및 안내 063-281-8661</li> -->
<!-- 						<li>이용시간 24시간 개방공원입니다 연중무휴 </li> -->
<!-- 						<li>주차및 편의시설 단체이용가능, 주차,반려동물 동반, 남/녀화장실 구비</li> -->
<!-- 						<li>입장료 없음</li> -->
<!-- 					</ul> -->
					<table id="table2">
					</table>
				</div>
			</div>
			<div class="cont" id="tab3">
				<div class="top_list">
					<ul>
						<li>카카오맵 위치정보 주소  전북 전주시 덕진구 권삼득로 390-1 전주덕진공원
						 호남고속도로 전주IC에서 시내로 들어가는 팔달로 변에 위치.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
		
</div>	
	

	
	<!-- 댓글 입력 텍스트 박스와 글자수 표시 -->
<div class="comment_area"> <p>방문자 후기 및 평가 </p>
  <textarea id="commentInput" placeholder="후기 및 평가를 남겨주세요" oninput="updateCharacterCount()"></textarea>
  <div class="char_count">글자수 제한 <span id="charCount">0</span>/100자</div>
  <button onclick="addComment()">완료</button>
	  <div class="heart_icons">
		    <!-- HTML 내에 하트 아이콘 추가 부분 -->
		<span class="heart" id="heart1" onclick="toggleHeart(1)">&#10084;</span>
		<span class="heart" id="heart2" onclick="toggleHeart(2)">&#10084;</span>
		<span class="heart" id="heart3" onclick="toggleHeart(3)">&#10084;</span>
		<span class="heart" id="heart4" onclick="toggleHeart(4)">&#10084;</span>
		<span class="heart" id="heart5" onclick="toggleHeart(5)">&#10084;</span>
     </div>
	
  <div class="commentlist">
  이곳에  댓글 목록이 나열됩니다 
  
  이곳에  댓글 목록이 나열됩니다 
  이곳에  댓글 목록이 나열됩니다 
  이곳에  댓글 목록이 나열됩니다 
  이곳에  댓글 목록이 나열됩니다 
  이곳에  댓글 목록이 나열됩니다 <br>
  이곳에  댓글 목록이 나열됩니다 <br>
  이곳에  댓글 목록이 나열됩니다 <br>
  이곳에  댓글 목록이 나열됩니다 <br>
  이곳에  댓글 목록이 나열됩니다 <br>
  이곳에  댓글 목록이 나열됩니다 <br>
  
  </div>
</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</form>

<script type="text/javascript">
// 사진보기 클릭 변환 부분 
function swapImages(clickedImage) {
    const bigImage = document.getElementById('bigImage');
    bigImage.src = clickedImage.src;
    bigImage.alt = clickedImage.alt;
}
</script>


<script type="text/javascript">
window.onlaod = swapTab("#tab1");
//컨텐츠내용 상세보기 클릭 부분 
function swapTab(tabId) {
    const tabList = document.querySelectorAll('.container .tab li');
    const contents = document.querySelectorAll('.container .cont_area .cont');
	for(var i = 0; i < tabList.length; i++){
		tabList[i].querySelector('.btn').addEventListener('click', function(e){
			e.preventDefault();
	   for (let i = 0; i < tabList.length; i++) {
	       tabList[i].classList.remove('is_on');
	       contents[i].style.display = 'none';
	   }// 버튼 클릭시 해당 버튼의 부모요소(li태그)에 is_on클래스를 준다.
		this.parentNode.classList.add('is_on');
		
		// 버튼 클릭시 컨텐츠 전환
		activeCont = this.getAttribute('href');
		document.querySelector(activeCont).style.display = 'block';
		});
	}
    
//     const selectedTab = document.querySelector(`a[href="${tabId}"]`);
//     selectedTab.parentElement.classList.add('is_on');
//     const selectedContent = document.querySelector(tabId);
//     selectedContent.style.display = 'block';
}
</script>


<script type="text/javascript">
//Json 생성
var cintro = ${cintro};
//키값 인덱스 생성
var keys = Object.keys(cintro);
createIntroTable();

//키값 인덱스 생성확인
// for(var i in keys){
// 	alert(keys[i]);
// }
// json파일이 들어온것 확인
// alert("json 파일 : " + JSON.stringify(cintro))


function createIntroTable(){
	var table2 = "";
	for(var i in keys){
		var value = cintro[keys[i]];
		//비어있는 밸류값 확인
// 		if(!value){
// 			alert(keys[i] + " : 비어있음");
// 		}else{
// 			alert(keys[i] + " : " + value);
// 		}
		if(!value || value=="0"){
			continue;
		}else{
			table2 += "<tr><td>"+keys[i]+"</td><td>"+value+"</td></tr>"; 
		}
		
	}
	document.inner
}
</script>

</body>
</html>