<%@ page language="java"
    pageEncoding="UTF-8"%>
    
<style>
.mypageNavi {
	margin-top : 50px;
	top: 80px;
    width: 80%; /* 가로 폭 설정 */
    margin: 0 auto; /* 화면 중앙으로 옮김 */
    text-align: center; /* 내부 요소 수평 가운데 정렬 */
}
.tab.navi {
	width: auto;
    list-style: none;
    padding: 0;
    display: flex;
    border-radius: 5px;
    background-color: #567ff2;
    justify-content: center; /* 내부의 li 요소들을 수평 가운데 정렬 */
    margin:0;
}
.tab.navi li{
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 30px;
    width: 100%;
    height: 100%;
    font-size: 1.25rem;
}

hr {
	position:relative;
	top : 100px;
	width:100%;
    border-color: #567ff2; /* 변경할 색상 */
    border-width: 2px; /* 변경할 두께 */
}
.mypageNavi a{
		text-decoration-line: none;
		color: white;
}
</style>
<div class="mypageNavi">
	<ul class="tab navi">
		<li class="is_on">
			<a href="${pageContext.request.contextPath}/member/memberInfo.do" class="btn" onclick="swapTab('#tab1')">회원정보관리</a>
		</li>
		 <li>
			<a href="${pageContext.request.contextPath}/point/memberPoint.do" class="btn" onclick="swapTab('#tab2')">포인트관리</a>
		</li>
		 <li>
		   <a href="${pageContext.request.contextPath}/contents/bookmarkedContents.do" class="btn" onclick="swapTab('#tab3')">나의즐겨찾기</a>
		</li>
		<li>
		   <a href="${pageContext.request.contextPath}/qna/myQnA.do" class="btn" onclick="swapTab('#tab3')">1:1문의</a>
		</li>
	</ul>
</div>
<!-- bookmaredContents.css에서 마이페이지 헤더부분 사용 -->