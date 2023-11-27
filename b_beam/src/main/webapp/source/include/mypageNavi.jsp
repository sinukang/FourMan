<%@ page language="java"
    pageEncoding="UTF-8"%>
        
 <script>
// document.addEventListener("DOMContentLoaded", function () {
//     document.getElementById("btn3").addEventListener("click", function () {
//         // 버튼 1을 클릭했을 때 실행할 코드
<%--         var link = "<%=request.getContextPath() %>/board/noticeList.do"; --%>
//         window.location.href = link;
//     });
// });
</script>   
    
    

<link href="../source/css/mNavi.css" type="text/css" rel="stylesheet">
<div class="m-navi">
	<div class="report-tap tap" onclick="mNavi(0)">회원정보관리</div>
	<div class="QnA-tap tap clicked" onclick="mNavi(1)">포인트관리</div>
	<div class="notice-tap tap" onclick="mNavi(2)">나의즐겨찾기</div>
	<div class="FAQ-tap tap" onclick="mNavi(3)">1:1문의</div>
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
		case 0 : location.href="${pageContext.request.contextPath}/member/memberInfo.do"; break;
		case 1 : location.href="${pageContext.request.contextPath}/point/memberPoint.do"; break;
		case 2 : location.href="${pageContext.request.contextPath}/contents/bookmarkedContents.do"; break;
		case 3 : location.href="${pageContext.request.contextPath}/qna/myQnA.do"; break;
		
		}
	}
</script>    