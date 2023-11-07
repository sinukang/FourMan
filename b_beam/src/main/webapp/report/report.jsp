<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고처리하기</title>
<link rel="stylesheet" type="text/css" href="../source/css/report.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	

</head>
<body>

<jsp:include page="../source/include/header.jsp"/>
	
<jsp:include page="../source/include/managerNavi.jsp"/>

<hr>
		<div> 
			이곳에 관리자 페이지 네비게이션이 들어갑니다 
		</div>

		<div>
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
			            <button type="button" >처리하기</button>
			            </td>
			        </tr>
			        <tr>
			            <td>2</td>
			            <td>갤러리</td>
			            <td>욕설</td>
			            <td>타이슨</td>
			            <td>너 T야?</td>
			             <td>
			            <button type="button" >처리하기</button>
			            </td>
			        </tr>
			        <tr>
			            <td>3</td>
			            <td>갤러리</td>
			            <td>광고</td>
			            <td>한호열</td>
			            <td>&&& 300%수익률 &&& 해외사이트 ### 사다리 %%% 불법토토!!!</td>
			             <td>
			            <button type="button" >처리하기</button>
			            </td>
			        </tr>
			        <tr>
			            <td>1</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			             <td>
			            <button type="button" >처리하기</button>
			            </td>
			        </tr>
			        <tr>
			            <td>1</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			            <td>
			            <button type="button" >처리하기</button>
			            </td>
			        </tr>
			        <tr>
			            <td>1</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			            <td>
			            <button type="button" >처리하기</button>
			            </td>
			        </tr>
			        <tr>
			            <td>1</td>
			            <td>분류1</td>
			            <td>유형1</td>
			            <td>닉네임1</td>
			            <td>내용1</td>
			            <td>
			            <button type="button" >처리하기</button>
			            </td>
			        </tr>
			        
			        <!-- 추가적인 게시물 -->
			    </tbody>
			</table>
					
				
				<div class="pagination">
				    <a href="#" class="arrow">◀</a>
				    <a href="#" class="page">1</a>
				    <a href="#" class="page">2</a>
				    <a href="#" class="page">3</a>
				    <a href="#" class="arrow">▶</a>
				</div>
					
		</div>

















<hr>

<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>