<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨텐츠 상세보기 페이지</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.css">
<link rel="stylesheet" type="text/css" href="../source/css/contents/contentsDetail.css">
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



<div class="container">

	<div class="container-title">
		<h1>DETAIL CONTENTS</h1>
	</div>
	<div class="contentsdetail">
		<div class="contents-visual">
			<div class="title-section">
		       	<p>title</p>
	      		 <div id="favorite" class="favorite"></div>
		   	</div>
		<%-- 		    	<c:choose> --%>
		<%-- 		    		<c:when test="${cv.contentLikeYN eq 'Y'}"> --%>
		<!-- 			       		 <span class="favorite-icon on">★</span> -->
		<%-- 			    	</c:when> --%>
		<%-- 			    	<c:otherwise> --%>
		<!-- 			       		 <span class="favorite-icon">☆</span> -->
		<%-- 			    	</c:otherwise> --%>
		<%-- 			    </c:choose> --%>
		   	<div class="main-image-section">
			    <img id="bigImage" src="../source/images/duck4.jpg" alt="Main Image">
			</div>
			<div class="small-images-section">
			    <img class="smallImage" src="../source/images/duck4.jpg" alt="Small Image">
				<img class="smallImage" src="../source/images/duck1.png" alt="Small Image">
				<img class="smallImage" src="../source/images/duck3.jpg" alt="Small Image">
				<img class="smallImage" src="../source/images/duck2.png" alt="Small Image">
				<img class="smallImage" src="../source/images/duck5.jpg" alt="Small Image">
				<img class="smallImage" src="../source/images/duck4.jpg" alt="Small Image">
			</div>
		</div>
		
			
		<div class="tabBox">
			<ul class="info-tab">
				<li>
	    			<a href="#tab1" class="btn" >기본정보</a>
				</li>
				  <li>
					<a href="#tab2" class="btn" >이용안내</a>
				</li>
				  <li>
				   <a href="#tab3" class="btn" >위치 및 상세정보</a>
				</li>
			</ul>
		
			<div class="tab-content">
	            이곳에 해당 게시물의 정보가 출력됩니다
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
		   
		  
		    <div class="commentCnt">글자수 제한 <span>100</span>/100자</div>
		    <button class="commentBtn" onclick="">완료</button>
		 
		    
			    <label for="imageUpload" class="custom-image-upload-button">
			        <i class="fas fa-camera"></i> 
			    </label>
			    <input type="file" id="imageUpload" accept="image/*" multiple>
			    
			    <div class="image-preview">
			        <img id="uploadedImage" alt="Uploaded Image" style="display: none;">
			        <button class="remove-image-button" style="display: none;" onclick="removeImagePreview()">X</button>
			    </div>
		</div>

<hr id="cutLine">		
		
		<div  class="commentArray">
			<h2>총<span id="cmtCnt">1766</span>건</h2>
			<button type="button"  id="1">인기순</button>
			<button type="button" id="2">최신순</button>
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
								        		
			            
			            <th> <button type="button" id="optBtn" onclick="">...</button></th>
		        	<tr>
		        		<th id="day" colspan="2">2024.11.06</th>
		        		
		        		 <th id="up" type="button" class="likebtn">
			                 <button class="like-button" onclick="like(this)">
							    <i class="fas fa-heart"></i>
							  </button>
			                 <span id="likeCount">1104</span>
			            </th>
			            
		        	</tr>
		        	
		    	</table>
		    	
		    	<table id="commentTable">
		        	<tr>
		        		<th id="userId">단단한점토</th>
		        		
		        		<th id="star">★★★</th>
		        		
		        		<th id="text" rowspan="2">글내용이 출력됩니다 우측사진을 클릭하면 팝업창이 뜨게되고  사진이 여러장일때 화살표로 넘기면서 모두 확인가능합니다</th>
		        		
		        		<th rowspan="2">
						    <div class="imageContainer">
			                    <img src="../source/images/duck4.jpg" class="commentImage">
			                   
			                </div>
						</th>
								        		
			            <th> <button type="button" id="optBtn" onclick="">...</button></th>
		        	<tr>
		        		<th id="day" colspan="2">2024.11.03</th>
		        		
		        		 <th id="up" type="button" class="likebtn">
			                 <button class="like-button" onclick="like(this)">
							    <i class="fas fa-heart"></i>
							  </button>
			                 <span id="likeCount">410</span>
			            </th>
		        	</tr>
		    	</table>
		    	<table id="commentTable">
		        	<tr>
		        		<th id="userId">+12수수깡</th>
		        		
		        		<th id="star">★★★★</th>
		        		
		        		<th id="text" rowspan="2">글내용이 출력됩니다 우측사진을 클릭하면 팝업창이 뜨게되고  사진이 여러장일때 화살표로 넘기면서 모두 확인가능합니다글내용이 출력됩니다 우측사진을 클릭하면 팝업창이 뜨게되고  사진이 여러장일때 화살표로 넘기면서 모두 확인가능합니다글내용이 출력됩니다 우측사진을 클릭하면 팝업창이 뜨게되고  사진이 여러장일때 화살표로 넘기면서 모두 확인가능합니다글내용이 출력됩니다 우측사진을 클릭하면 팝업창이 뜨게되고  사진이 여러장일때 화살표로 넘기면서 모두 확인가능합니다</th>
		        		
		        		<th rowspan="2">
						    <div class="imageContainer">
			                    <img src="../source/images/duck4.jpg" class="commentImage">
			                   
			                </div>
						</th>
								        		
			            <th> <button type="button" id="optBtn" onclick="">...</button></th>
		        	<tr>
		        		<th id="day" colspan="2">2024.11.06</th>
		        		
		        		 <th id="up" type="button" class="likebtn">
			                 <button class="like-button" onclick="like(this)">
							    <i class="fas fa-heart"></i>
							  </button>
			                 <span id="likeCount">21</span>
			            </th>
		        	</tr>
		    	</table>

		</div>
</div>	

	<jsp:include page="../source/include/footer.jsp"/>
	


<script>

//좋아요(👍) 버튼 클릭 시 색상을 변경하고 원래 상태로 전환하는 JavaScript 함수--------------
 function like(button) { button.classList.toggle('liked');}
</script>




<script>
//이미지 업로드 파일 선택 + 선택된 파일 이미지를 미리보기할수있는 기능 -----------------------
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



<script>
  // 글자 수 제한 및 카운트 업데이트 함수
  function updateCharacterCount() {
    const textarea = document.getElementById('commentInput');
    const characterCount = document.querySelector('.commentCnt span');
    const maxLength = 100; // 원하는 글자 수 제한을 여기에 설정하세요

    const currentLength = textarea.value.length;
    characterCount.textContent = currentLength;

    if (currentLength > maxLength) {
      textarea.value = textarea.value.substring(0, maxLength); // 초과된 글자 제한
    }
  }

  // 텍스트 영역에 입력이 발생할 때 이벤트 리스너 추가
  document.getElementById('commentInput').addEventListener('input', updateCharacterCount);

	
</script>
<script>
// 페이지 로딩시 즐겨찾기여부와 리뷰를 불러오기
getBookmark();
//getReviewList();
	function getBookmark(){
		// 해당 컨텐츠가 사용자가 bookmark를 한 컨텐츠인지 구분해서 보여주는 함수
		
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/contents/getBookmark.do",
			data:{"contentid":${param.contentid}},
			dataType:"json",
			success:function(data){
				console.log(data);
				if(data.value==1){// 북마크를 한 컨텐츠
					$('#favorite').html('<span class="favorite-icon on">★</span>')	
				}else if(data.value==0||data.value==2){// 북마크 하지 않은 컨텐츠 / 로그인을 하지 않았을 경우
					$('#favorite').html('<span class="favorite-icon">☆</span>')	
				}
			},
			error:function(){
				console.log("error");
			}
		});
	}
	function doBookmark(e){
		// bookmark를 하는 함수
		
		// 로그인 상태가 아니라면 로그인 페이지로 이동을 유도하는 
		if ("${empty mbno}"){
			var login = confirm("로그인을 해주세요");
			if(login){
				location.href="${pageContext.request.contextPath}/member/memberLogin.do"
			}
		}
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/contents/getBookmark.do",
			data:{"contentid":${param.contentid}},
			dataType:"json",
			success:function(data){
				console.log(data);
			},
			error:function(){
				console.log("error");
			}
		});
	}
</script>







</body>
</html>