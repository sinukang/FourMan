<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨텐츠 상세보기 페이지</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.css">
<link rel="stylesheet" type="text/css" href="../source/css/contents/contentsList.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68d11d2bbd147dba922022847c11c1f1"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


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
	

</script>	

</head>
<body>



<jsp:include page="../source/include/header.jsp"/>


  <div class="contentsdetail">
       	 <div class="title-section">
        	<p>title</p>
    	</div>
    	<div class="favorite" id="favorite" onclick="toggleFavorite()">
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
		    
			    <label for="imageUpload" class="custom-image-upload-button">
			        <i class="fas fa-camera"></i> 
			    </label>
			    <input type="file" id="imageUpload" accept="image/*" multiple>
			    
			    <div class="image-preview">
			        <img id="uploadedImage" alt="Uploaded Image" style="display: none;">
			        <button class="remove-image-button" style="display: none;" onclick="removeImagePreview()">X</button>
			    </div>
		</div>
			
		<div class="commentReply">
				<table id="commentTable">
		        	<tr>
		        		<th id="userId">피묻은각도기</th>
		        		
		        		<th id="star">★★★★★</th>
		        		
		        		<th id="text" rowspan="2">글내용이 출력됩니다 우측사진을 클릭하면 팝업창이 뜨게되고  사진이 여러장일때 화살표로 넘기면서 모두 확인가능합니다</th>
		        		
		        		<th rowspan="2">
						    <div class="imageContainer">
			                    <img src="../source/images/duck4.jpg" class="commentImage">
			                   
			                </div>
						</th>
								        		
			            <th id="report" type="button" class="reportbtn">
			                <button type="button" onclick="">&#x1F6A8;</button>
			            </th>
		        	<tr>
		        		<th id="day" colspan="2">2024.11.06</th>
		        		
		        		 <th id="up" type="button" class="likebtn">
			                 <button class="like-button" onclick="like(this)">
							    <i class="fas fa-heart"></i>
							  </button>
			                 <span id="likeCount">10</span>
			            </th>
		        	</tr>
		    	</table>

		</div>
	

	<jsp:include page="../source/include/footer.jsp"/>
	
<script type="text/javascript">
// 페이지가 로드될 때 'tab1'을 보여주기 위해 해당 탭 콘텐츠 호출--------------------------
// 탭 전환을 처리하는 함수
function swapTab(tabId) {
    // 모든 탭 콘텐츠를 숨김
    const tabContents = document.querySelectorAll('.tab-content');
    tabContents.forEach(content => {
        content.style.display = 'none';
    });

    // 선택한 탭 콘텐츠를 화면에 표시
    const selectedTab = document.querySelector(tabId);
    if (selectedTab) {
        selectedTab.style.display = 'block';
    }

    // 모든 탭에서 'is_on' 클래스 제거
    const tabs = document.querySelectorAll('.tab');
    tabs.forEach(tab => {
        tab.classList.remove('is_on');
    });

    // 클릭한 탭에 'is_on' 클래스 추가
    const clickedTab = document.querySelector(`a[href='${tabId}']`);
    if (clickedTab) {
        clickedTab.parentNode.classList.add('is_on');
    }
}

//모든 탭 버튼에 클릭 이벤트 추가---------------------------------------
document.querySelectorAll('.btn').forEach(tab => {
    tab.addEventListener('click', function(event) {
        event.preventDefault();
        const tabId = tab.getAttribute('href');
        swapTab(tabId);

        // 모든 탭에서 'is_on' 클래스 제거
        const tabs = document.querySelectorAll('.tab li');
        tabs.forEach(tab => {
            tab.classList.remove('is_on');
        });

        // 클릭한 탭에 'is_on' 클래스 추가
        tab.parentElement.classList.add('is_on');
    });
});

</script>


<script>
//좋아요(👍) 버튼 클릭 시 색상을 변경하고 원래 상태로 전환하는 JavaScript 함수--------------
 function like(button) { button.classList.toggle('liked');}
</script>



<script>
//글자수 제한 카운트 증가 및 제한 스크립트---------------------------------------------- 
function updateCharacterCount() {
    const commentInput = document.getElementById('commentInput');
    const charCount = document.querySelector('.charCount span');
    const maxChar = 100; // 최대 글자 수

    charCount.textContent = commentInput.value.length;

    if (commentInput.value.length > maxChar) {
        commentInput.value = commentInput.value.slice(0, maxChar);
        charCount.textContent = maxChar;
    }
}
</script>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const imageUpload = document.getElementById('imageUpload');
    const imagePreview = document.querySelector('.image-preview');

    imageUpload.addEventListener('change', function() {
        const files = imageUpload.files;

        for (let i = 0; i < files.length; i++) {
            const file = files[i];
            const reader = new FileReader();

            reader.onload = function(e) {
                const img = document.createElement('img');
                img.src = e.target.result;
                img.style.width = '60px';
                img.style.height = '80px';

                const imageDiv = document.createElement('div');
                imageDiv.classList.add('image-preview-item');
                imageDiv.appendChild(img);

                const closeButton = document.createElement('button');
                closeButton.classList.add('remove-image-button');
                closeButton.innerHTML = 'X';
                closeButton.onclick = function() {
                    imageDiv.remove(); // 클릭하여 이미지 미리보기 제거
                };

                imageDiv.appendChild(closeButton);

                imagePreview.appendChild(imageDiv);
            };

            reader.readAsDataURL(file);
        }

        imageUpload.value = ''; // 파일 선택창 비우기
    });
});
</script>









</body>
</html>