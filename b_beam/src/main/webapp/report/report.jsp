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



		
<div class="container">
	
		<div class="gallery">
			<h1>REPORT</h1>
		</div>
		<jsp:include page="../source/include/managerNavi.jsp"/>
	
		<div id="tab1" class="tabContent">
		
		
		
			<table class="report-table">
				 <div id="delbutton">
		            <button class="deleteBtn">신고 글 삭제</button>
		        </div>
		
			    <thead>
			        <tr>
			        	<th id="delCheck"></th>
			            <th id="reportNum">신고번호</th>
			            <th id="reportCnt">누적신고</th>
			            <th id="sort">분류</th>
			            <th id="breed">유형</th>
			            <th id="useName">닉네임</th>
			            <th id="ctn">내용</th>
			            <th id="clearYn">처리여부</th>
			        </tr>
			    </thead>
			    <tbody>
			         <tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>1123</td>
			            <td>3422</td>
			            <td>리뷰</td>
			            <td>욕설</td>
			            <td>
			            <button class="userId">아놀드슈왈츠제네거</button>
			            
			            <div id="myModal" class="modal" style="display: none;">
						    <div class="modalContent">
						        <h2>사용자 정보</h2>
						        <p>ID: <span id="userId">아놀드슈왈츠제네거</span></p>
						        <p>Email: <span id="userEmail">bbeamproject@gmail.com</span></p>
						        
						        <h2>패널티 선택</h2>
						        <select class="penaltySelect">
						            <option value="none">패널티 없음</option>
						            <option value="7days">이용정지(7일)</option>
						            <option value="30days">이용정지(30일)</option>
						            <option value="permanent">이용정지(영구)</option>
						        </select>
						        
						        <button class="penaltyBtn">완료</button>
						        <button class="cancelBtn">취소</button>
						    </div>
						</div>
			            
			            </td>
			            <td>너 아빠없지?</td>
			             <td>처리중</td>
			        </tr>
			      	
			      	<tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>1343</td>
			            <td>122</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>
			            <button class="userId">맥그리거</button>
			            </td>
			            <td>너 T야?</td>
			             <td>처리중</td>
			        </tr>
			        
			        <tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>43</td>
			            <td>32</td>
			            <td>갤러리</td>
			            <td>광고</td>
			            <td>
			            <button class="userId">호랑이한호열</button>
			            </td>
			            <td>@@@사다리///토토////해외사이트$$$</td>
			             <td>처리완료</td>
			        </tr>
			        
			        <tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>1343</td>
			            <td>122</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>
			            <button class="userId">사용자</button>
			            </td>
			            <td></td>
			             <td>처리완료</td>
			        </tr>
			        
			        <tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>1343</td>
			            <td>122</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>
			            <button class="userId">사용자</button>
			            </td>
			            <td></td>
			             <td>처리완료</td>
			        </tr>
			        
			        <tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>1343</td>
			            <td>122</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>
			            <button class="userId">사용자</button>
			            </td>
			            <td></td>
			             <td>처리완료</td>
			        </tr>
			        
			        <tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>1343</td>
			            <td>122</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>
			            <button class="userId">사용자</button>
			            </td>
			            <td></td>
			             <td>처리완료</td>
			        </tr>
			        
			        <tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>1343</td>
			            <td>122</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>
			            <button class="userId">사용자</button>
			            </td>
			            <td></td>
			             <td>처리완료</td>
			        </tr>
			        
			        <tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>1343</td>
			            <td>122</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>
			            <button class="userId">사용자</button>
			            </td>
			            <td></td>
			             <td>처리완료</td>
			        </tr>
			        
			        <tr>
			         	<td><input type="checkbox" class="deleteBox"></td>
			            <td>1343</td>
			            <td>122</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>
			            <button class="userId">사용자</button>
			            </td>
			            <td></td>
			             <td>처리완료</td>
			        </tr>
			        
			
			        
			 
			        
			    </tbody>
			</table>
					
				
					
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

</div>













<script>
$(document).ready(function() {
    // 삭제 버튼 클릭 시
    $(".deleteBtn").on("click", function() {
        var checkboxes = $(".deleteBox:checked");
        if (checkboxes.length === 0) {
            alert("삭제할 글을 선택하세요");
        } else {
            var confirmDelete = confirm("삭제된 글은 복구가 어렵습니다. 삭제하시겠습니까?");
            if (confirmDelete) {
                // 여기서 선택된 행을 삭제하는 로직을 추가할 수 있습니다.
                // checkboxes.each(function() {
                //     $(this).closest('tr').remove(); // 선택된 항목 삭제하는 예시
                // });
            }
        }
    });
});
</script>


<script>
$(document).ready(function() {
    // 사용자 ID 클릭 시 모달 표시----------------------------------------------
    $(".userId").on("click", function() {
        var modal = $('#myModal');
        if (modal.is(':visible')) {
            modal.hide();
        } else {
            modal.show();
        }
    });
    // 완료 버튼 클릭 시 모달 닫기
    $(".penaltyBtn").on("click", function() {
        // 완료 버튼을 클릭한 경우 실행되는 코드 작성

        // 모달 닫기
        $('#myModal').hide();
    });

    // 취소 버튼 클릭 시 모달 닫기
    $(".cancelBtn").on("click", function() {
        // 취소 버튼을 클릭한 경우 모달 닫기
        $('#myModal').hide();
    });

    $(document).on("click", function(event) {
        if (!$(event.target).closest('#myModal, .userId').length) {
            $('#myModal').hide();
        }
    });
});
</script>











<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>