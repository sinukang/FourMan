<%@ page language="java" pageEncoding="UTF-8"%>
    
 <script>
document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("btn3").addEventListener("click", function () {
        // 버튼 1을 클릭했을 때 실행할 코드
        var link = "<%=request.getContextPath() %>/board/noticeList.do";
        window.location.href = link;
    });
});
</script>   
    
    

<link href="../source/css/mNavi.css" type="text/css" rel="stylesheet">
<div class="m-navi">
	<div class="report-tap tap" onclick="mNavi(0)">신고내역</div>
	<div class="QnA-tap tap clicked" onclick="mNavi(1)">1:1 문의내역</div>
	<div class="notice-tap tap" onclick="mNavi(2)">공지사항</div>
	<div class="FAQ-tap tap" onclick="mNavi(3)">자주하는 질문</div>
</div>

<script>
	//상단 메뉴 바 클릭 시 색상변화, 클릭 감지 이벤트 리스너 달아줌
	var tap = document.querySelectorAll(".tap");
	
	function handleClick1(e){
		for(let i = 0; i < tap.length; i++){
			tap[i].classList.remove("clicked");
		}
		e.target.classList.add("clicked");
	}
	function init1(){
		for(let i = 0; i < tap.length; i++){
			tap[i].addEventListener("click", handleClick1);
		}
	}
	init1();	
	
	function mNavi(e){
		switch(e){
		case 0 : location.href="${pageContext.request.contextPath}/report/report.do"; break;
		case 1 : location.href="${pageContext.request.contextPath}/qna/managerMyQnA.do"; break;
		case 2 : location.href="${pageContext.request.contextPath}/report/report.do"; break;
		case 3 : location.href="${pageContext.request.contextPath}/report/report.do"; break;
		
		}
	}
</script>    
    
    
<!-- <div class="managerNavi"> -->
<!-- 	<ul class="tab navi"> -->
<!-- 		<li class="is_on"> -->
<!-- 			<a href="#tab1" class="btn" id="btn1" onclick="swapTab('#tab1')">신고내역</a> -->
<!-- 		</li> -->
<!-- 		 <li> -->
<!-- 			<a href="#tab2" class="btn" id="btn2" onclick="swapTab('#tab2')">1:1문의</a> -->
<!-- 		</li> -->
<!-- 		 <li> -->
<!-- 		   <a href="#tab3" class="btn" id="btn3" onclick="swapTab('#tab3')">공지사항</a> -->
<!-- 		</li> -->
<!-- 		<li> -->
<!-- 		   <a href="#tab4" class="btn" id="btn4" onclick="swapTab('#tab4')">자주하는질문</a> -->
<!-- 		</li> -->
<!-- 	</ul> -->
<!-- </div> -->

<!-- <style> -->
<!-- /* .managerNavi { */ -->
<!-- /* 	width: 80%; /* 가로 폭 설정 */ */ -->
<!-- /* 	margin: 50px auto; /* 화면 중앙으로 옮김 */ */ -->
<!-- /* 	text-align: center; /* 내부 요소 수평 가운데 정렬 */ */ -->
<!-- /* } */ -->
<!-- /* .tab.navi { */ -->
<!-- /* 	list-style: none; */ -->
<!-- /* 	padding: 0; */ -->
<!-- /* 	display: flex; */ -->
<!-- /* 	border-radius: 5px; */ -->
<!-- /* 	background-color: #567ff2; */ -->
<!-- /* 	justify-content: center; /* 내부의 li 요소들을 수평 가운데 정렬 */ */ -->
<!-- /* } */ -->
<!-- </style> -->
