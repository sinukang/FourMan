<%@ page language="java"
    pageEncoding="UTF-8"%>
    
<style>
	.managerNavi {
	position: relative;
	top: 80px;
    width: 80%; /* 가로 폭 설정 */
    margin: 0 auto; /* 화면 중앙으로 옮김 */
    text-align: center; /* 내부 요소 수평 가운데 정렬 */
}
.tab.navi {
    list-style: none;
    padding: 0;
    display: flex;
    border-radius: 5px;
    background-color: #567ff2;
    justify-content: center; /* 내부의 li 요소들을 수평 가운데 정렬 */
}

hr {
	position:relative;
	top : 100px;
	width:100%;
    border-color: #567ff2; /* 변경할 색상 */
    border-width: 2px; /* 변경할 두께 */
    }
    
</style>


    
    
    
<div class="managerNavi">
	<ul class="tab navi">
		<li class="is_on">
			<a href="#tab1" class="btn" onclick="swapTab('#tab1')">신고내역</a>
		</li>
		 <li>
			<a href="#tab2" class="btn" onclick="swapTab('#tab2')">1:1문의</a>
		</li>
		 <li>
		   <a href="#tab3" class="btn" onclick="swapTab('#tab3')">공지사항</a>
		</li>
		<li>
		   <a href="#tab4" class="btn" onclick="swapTab('#tab4')">자주하는질문</a>
		</li>
	</ul>


</div>
<hr>
