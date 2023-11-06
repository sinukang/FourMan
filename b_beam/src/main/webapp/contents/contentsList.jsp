<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨텐츠 상세보기 페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.css">
<link rel="stylesheet" type="text/css" href="../source/css/contents/contentsList.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68d11d2bbd147dba922022847c11c1f1"></script>

<script type="text/javascript">
//사진클릭시 메인,서브 이미지 교체 부분 스크립트 ----------------------------------------
document.addEventListener('DOMContentLoaded', function() {
	  const smallImages = document.querySelectorAll('.smallImage');
	  const bigImage = document.getElementById('bigImage');

	  smallImages.forEach((image) => {
	    image.addEventListener('click', function() {
	      bigImage.src = this.src;
	    });
	  });
	});
	
// 슬라이드 기능을 하기위한 스크립트 --------------------------------------------	
$(document).on('click', '[data-toggle="lightbox"]', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox();
});
</script>	



</head>
<body>



<header class="header">
		<div class="header-logo">
			<h1 class="logo">
				<a class="svgLogo" href="./Home.jsp">
					<img src="../source/images/logo4.png" width="150" height="80" alt="메인화면으로 이동">
				</a>
			</h1>
		</div>
		<div class="menu">
			<ul class="depth1">
				<li>
					<a href="${pageContext.request.contextPath}/contents/contents.do">컨텐츠</a>
				</li>
				<li>
					<a href="./Home.jsp">TOP10</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/board/board.do">갤러리</a>
				</li>
				<li>
					<a href="./Home.jsp">마이페이지</a>
				</li>
				<li>
					<a href="./Home.jsp">고객지원</a>
				</li>
			</ul>
		</div>
		<span class="login">
			<a class="loginbutton" href="./member/memberLogin.jsp">
			<img src="../source/images/login.png">
			</a>
		</span>
	</header>




  <div class="contentsdetail">
       	 <div class="title-section">
        	<p>title</p>
    	</div>
    	<div class="favorite" id="favorite" onclick="toggleFavorite()">
       		 <span class="favorite-text">즐겨찾기</span>
       		 <span class="favorite-icon">&#9734;</span>
   		 </div>

    	<div class="main-image-section">
		    <img id="bigImage" src="../source/images/duck4.jpg" style="max-width: 550px; max-height: 450px;" alt="Main Image">
		</div>
		
		<div class="small-images-section">
		    <img class="smallImage" src="../source/images/duck4.jpg" style="width: 100px; height: 80px;" alt="Small Image">
			<img class="smallImage" src="../source/images/duck1.png" style="width: 100px; height: 80px;" alt="Small Image">
			<img class="smallImage" src="../source/images/duck3.jpg" style="width: 100px; height: 80px;" alt="Small Image">
			<img class="smallImage" src="../source/images/duck2.png" style="width: 100px; height: 80px;" alt="Small Image">
			<img class="smallImage" src="../source/images/duck5.jpg" style="width: 100px; height: 80px;" alt="Small Image">
			<img class="smallImage" src="../source/images/duck4.jpg" style="width: 100px; height: 80px;" alt="Small Image">
		</div>
		
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
		
			<div class="tab-content" id="tab1">
	            이곳에 해당 게시물의 기본정보가 출력됩니다
	        </div>
	            
	       	<div class="tab-content" id="tab2" style="display: none;">
	            이곳에 이용안내에 대한 부분이 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 이용안내에 대한 부분이 출력됩 출력됩니다 
	        </div>
	            
	        <div class="tab-content" id="tab3" style="display: none;">
	            이곳에 위치안내 및 상세정보에 대한 부분이 출력됩니다 
	        </div>
	        
		</div>
		
		
		
		
	
		<div class="commentArea">
		    <p>방문자 후기 및 평가</p>
		    <select id="ratingSelect">
		        <option value="0" disabled selected>별점을 선택하세요</option>
		        <option value="1">★</option>
		        <option value="2">★★</option>
		        <option value="3">★★★</option>
		        <option value="4">★★★★</option>
		        <option value="5">★★★★★</option>
		    </select>
		    <textarea id="commentInput" placeholder="후기를 남겨주세요" oninput="updateCharacterCount()"></textarea>
		    <button class="commentBtn" onclick="">완료</button>
		    <div class="charCount">글자수 제한 <span>0</span>/100자</div>
		    
		    <input type="file" id="imageUpload" accept="image/*" multiple>
		</div>
			
		<div class="commentReply">
				<table id="commentTable">
		        	<tr>
		        		<th id="userId">피묻은각도기</th>
		        		
		        		<th id="star">★★★★★</th>
		        		
		        		<th id="text" rowspan="2">글내용이 출력됩니다 우측사진을 클릭하면 알럿창이 뜨게되고  사진이 여러장일때 화살표로 넘기면서 모두 확인가능합니다</th>
		        		
		        		<th rowspan="2">
						    <div class="imageContainer" onclick="showImagePopup()">
			                    <img src="../source/images/duck4.jpg" class="commentImage">
			                   
			                </div>
						</th>
								        		
		        		 <th id="up" type="button" rowspan="2" class="likebtn">
			                <button type="button" onclick="like(this, 'up')">👍</button>
			            </th>
			            <th id="up" type="button" rowspan="2" class="likebtn">
			                <button type="button" onclick="like(this, 'down')">👎</button>
					</tr>
		        	<tr>
		        		<th id="day" colspan="2">2024.11.06</th>
		        		
		        	</tr>
		    	</table>

		</div>
	
	
	
<script type="text/javascript">
// 페이지가 로드될 때 'tab1'을 보여주기 위해 해당 탭 콘텐츠 호출--------------------------
document.addEventListener('DOMContentLoaded', function() {
    showTabContent('tab1');
});

// 선택한 탭 콘텐츠를 화면에 표시하는 함수
function showTabContent(tabId) {
    // 모든 탭 콘텐츠를 숨김
    const allTabContents = document.querySelectorAll('.tab-content');
    allTabContents.forEach(content => {
        content.style.display = 'none';
    });

    // 선택한 탭 콘텐츠를 화면에 표시
    const selectedTabContent = document.getElementById(tabId);
    if (selectedTabContent) {
        selectedTabContent.style.display = 'block';
    }
}

// 모든 탭 버튼에 클릭 이벤트를 추가하는 부분 
document.querySelectorAll('.tab .btn').forEach(tab => {
    tab.addEventListener('click', function(event) {
        // 기본 이벤트(링크 이동 등)를 취소
        event.preventDefault();
        // 클릭된 버튼의 href 속성 값을 가져와서 #을 제외한 ID 값을 찾아서 해당 탭 콘텐츠 호출
        const tabId = tab.getAttribute('href').replace('#', '');
        showTabContent(tabId);
    });
});
</script>

<script>
// 좋아요(👍) 또는 싫어요(👎) 버튼 클릭 시 색상을 변경하는 JavaScript 함수
function like(button, type) {
    const buttons = document.querySelectorAll('.likebtn button');

    buttons.forEach(btn => {
        btn.classList.remove('selected');
    });

    button.classList.add('selected');
    // 'type'에 따라 추가 기능을 구현할 수 있습니다.

    // 예를 들어, 'type'이 'up'인 경우
    if (type === 'up') {
        // 여기에 좋아요(👍) 버튼을 눌렀을 때의 추가 동작을 구현할 수 있습니다.
    } else if (type === 'down') {
        // 'type'이 'down'인 경우 싫어요(👎) 버튼을 누르는 추가 동작을 구현할 수 있습니다.
    }
}

</script>







<footer>
	<div class="footer">
	이곳에 푸터 위치합니다 
	</div>

</footer>

</body>
</html>