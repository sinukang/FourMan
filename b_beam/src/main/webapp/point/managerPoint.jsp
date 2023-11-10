<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link rel="stylesheet" type="text/css" href="../source/css/report.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	

<script>
$(document).ready(function(){
    $(".tab a").click(function(e){
        e.preventDefault();
        var tabID = $(this).attr('href'); // 클릭된 탭의 ID를 가져옵니다.
        $(".tab li").removeClass('is_on'); // 모든 탭의 활성 클래스를 제거합니다.
        $(this).parent().addClass('is_on'); // 현재 선택된 탭에 활성 클래스를 추가합니다.
        $(".tabContent").hide(); // 모든 탭 컨텐츠를 숨깁니다.
        $(tabID).show(); // 선택된 탭의 컨텐츠를 표시합니다.
    });
});
</script>

</head>
<body>


<jsp:include page="../source/include/header.jsp"/>
<jsp:include page="../source/include/managerNavi.jsp"/>



		<div id="tab1" class="tabContent">
			<table class="report-table">
			    <thead>
			        <tr>
			            <th id="reportNum">글번호</th>
			            <th id="sort">분류</th>
			            <th id="breed">유형</th>
			            <th id="useName">닉네임</th>
			            <th id="ctn">내용</th>
			            <th id="clearYn">처리여부</th>
			        </tr>
			    </thead>
			    <tbody>
			         <tr>
			            <td>1</td>
			            <td>리뷰</td>
			            <td>욕설</td>
			            <td>맥그리거</td>
			            <td>너 아빠없지?</td>
			             <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">패널티없음</option>
		                        <option value="option2">이용정지(7일)</option>
		                        <option value="option3">영구정지</option>
		                    </select>
			            </td>
			        </tr>
			        <tr>
			            <td>2</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>타이슨</td>
			            <td>너 T야?</td>
			              <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">옵션 1</option>
		                        <option value="option2">옵션 2</option>
		                        <option value="option3">옵션 3</option>
		                    </select>
			            </td>
			        </tr>
			        <tr>
			            <td>3</td>
			            <td>갤러리</td>
			            <td>광고</td>
			            <td>한호열</td>
			            <td>&&& 300%수익률 &&& 해외사이트 ### 사다리 %%% 불법토토!!!</td>
			              <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">옵션 1</option>
		                        <option value="option2">옵션 2</option>
		                        <option value="option3">옵션 3</option>
		                    </select>
			            </td>
			        </tr>
			        <tr>
			            <td>4</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			             <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">옵션 1</option>
		                        <option value="option2">옵션 2</option>
		                        <option value="option3">옵션 3</option>
		                    </select>
			            </td>
			        </tr>
			        <tr>
			            <td>5</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			            <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">옵션 1</option>
		                        <option value="option2">옵션 2</option>
		                        <option value="option3">옵션 3</option>
		                    </select>
			            </td>
			        </tr>
			        <tr>
			            <td>6</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			            <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">옵션 1</option>
		                        <option value="option2">옵션 2</option>
		                        <option value="option3">옵션 3</option>
		                    </select>
			            </td>
			        </tr>
			        <tr>
			            <td>7</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			             <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">옵션 1</option>
		                        <option value="option2">옵션 2</option>
		                        <option value="option3">옵션 3</option>
		                    </select>
			            </td>
			        </tr>
			         <tr>
			            <td>8</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			             <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">옵션 1</option>
		                        <option value="option2">옵션 2</option>
		                        <option value="option3">옵션 3</option>
		                    </select>
			            </td>
			        </tr>
			        <tr>
			            <td>9</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			             <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">옵션 1</option>
		                        <option value="option2">옵션 2</option>
		                        <option value="option3">옵션 3</option>
		                    </select>
			            </td>
			        </tr>
			         <tr>
			            <td>10</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			             <td>
			            <button class="process-button">처리하기</button>
		                    <select class="select-box" style="display: none;">
		                        <option value="option1">옵션 1</option>
		                        <option value="option2">옵션 2</option>
		                        <option value="option3">옵션 3</option>
		                    </select>
			            </td>
			        </tr>
			       
			        
			        <!-- 추가적인 게시물 -->
			    </tbody>
			</table>
					
				
					
		</div>
				<div class="pagination">
				    <a href="#" class="arrow">◀</a>
				    <a href="#" class="page">1</a>
				    <a href="#" class="page">2</a>
				    <a href="#" class="page">3</a>
				    <a href="#" class="arrow">▶</a>
				</div>


<div id="tab2" class="tabContent" style="display: none;">
	이곳에 1:1문의가 들어갈거에요
</div>

<div id="tab3" class="tabContent" style="display: none;">
	공지사항
</div>

<div id="tab4" class="tabContent" style="display: none;">
		자주묻는질문 
	</div>














<script>
//처리하기 부분 샐랙트 박스---------------------------------
$(document).ready(function() {
    $(".process-button").click(function() {
        var selectBox = $(this).siblings(".select-box");
        if (selectBox.is(":hidden")) {
            $(".select-box").hide();
            selectBox.show();
        } else {
            selectBox.hide();
        }
    });
});
</script>















<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>