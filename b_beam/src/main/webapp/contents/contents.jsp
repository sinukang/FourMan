<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>리스트 페이지</title>
<link rel="stylesheet" type="text/css" href="../source/css/contents/contents.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	

<script>
document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("button1").addEventListener("click", function () {
        // 버튼 1을 클릭했을 때 실행할 코드
        var link = "<%=request.getContextPath() %>/contents/contentsList.jsp";
        window.location.href = link;
    });
});
</script>

</head>
</head>
<body>

<jsp:include page="../source/include/header.jsp"/>
	



	
	
	
		
	<div class="container">
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents1.png">관광지
		</button>
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents2.png">문화시설
		</button>
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents3.png">음식점
		</button>
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents4.png">숙박
		</button>
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents5.png">축제공연
		</button>	
	</div>
	
	
	
	
	
	<table class="search-bar">
    <tr>
        <th>키워드 검색</th>
        <td>
            <input type="text" id="keyword" placeholder="검색어를 입력하세요">
        </td>
        <td>
            <button type="button" id="search-button">검색</button>
        </td>
    </tr>
	</table>
	<br>
	<br>
	
	
	
	
	
<div class="contentsbox">
  
    <button type="button" class="listbutton" id="button1">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="전주덕진공원">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt">(0)</p>
	        </div>
	        <div class="likeStar">☆</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button1">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="전주덕진공원">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">☆</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button1">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="전주덕진공원">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt"></p>
	        </div>
	        <div class="likeStar">☆</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button1">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="전주덕진공원">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">☆</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button1">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="전주덕진공원">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">☆</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button1">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="전주덕진공원">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">☆</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button1">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="전주덕진공원">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">☆</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button1">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="전주덕진공원">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">☆</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button1">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="전주덕진공원">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">☆</div>
	    </div>
	</button>
	
   
    
  
	
</div>

	




	<div class="pagination">
    <a href="#" class="arrow">◀</a>
    <a href="#" class="page">1</a>
    <a href="#" class="page">2</a>
    <a href="#" class="page">3</a>
    <a href="#" class="arrow">▶</a>
</div>
	
	
	
	
	
	
	<jsp:include page="../source/include/footer.jsp"/>
	
</body>
</html>