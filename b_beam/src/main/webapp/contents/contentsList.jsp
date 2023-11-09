<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>컨텐츠 리스트 페이지</title>
<link rel="stylesheet" type="text/css" href="../source/css/contents/contentsList.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	

<script>
document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("button1").addEventListener("click", function () {
        // 버튼 1을 클릭했을 때 실행할 코드
        var link = "<%=request.getContextPath() %>/contents/contentsDetail.do";
        window.location.href = link;
    });
});
</script>

</head>
</head>
<body>

<jsp:include page="../source/include/header.jsp"/>
	



	
	
	
		
	<div class="container">
		<button type="submit" class="contentsbutton" id="contentTypeId12">
			<img src="../source/images/contents1.png">관광지
		</button>
		<button type="submit" class="contentsbutton" id="contentTypeId14">
			<img src="../source/images/contents2.png">문화시설
		</button>
		<button type="submit" class="contentsbutton" id="contentTypeId39">
			<img src="../source/images/contents3.png">음식점
		</button>
		<button type="submit" class="contentsbutton" id="contentTypeId32">
			<img src="../source/images/contents4.png">숙박
		</button>
		<button type="submit" class="contentsbutton" id="contentTypeId15">
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
	            <img src="../source/images/duck4.jpg" alt="12">
	        <div class="contents-title">
	        	<p class="title">전주덕진공원</p>
	        	<p class="cmtCnt">(0)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button2">
	    <div class="content-info">
	            <img src="../source/images/duck3.jpg" alt="14">
	        <div class="contents-title">
	        	<p class="title">전주동물원</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button3">
	    <div class="content-info">
	            <img src="../source/images/duck2.png" alt="32">
	        <div class="contents-title">
	        	<p class="title">한옥마을</p>
	        	<p class="cmtCnt"></p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button4">
	    <div class="content-info">
	            <img src="../source/images/duck1.png" alt="32">
	        <div class="contents-title">
	        	<p class="title">한옥마을</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button5">
	    <div class="content-info">
	            <img src="../source/images/duck5.jpg" alt="12">
	        <div class="contents-title">
	        	<p class="title">한옥마을</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button6">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="14">
	        <div class="contents-title">
	        	<p class="title">전주박물관</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button7">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="39">
	        <div class="contents-title">
	        	<p class="title">전주맛집</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button8">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="39">
	        <div class="contents-title">
	        	<p class="title">비빔밥</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button9">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="15">
	        <div class="contents-title">
	        	<p class="title">불꽃놀이</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button10">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="15">
	        <div class="contents-title">
	        	<p class="title">공예체험</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button11">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="15">
	        <div class="contents-title">
	        	<p class="title">콘서트</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
	    </div>
	</button>
	
	<button type="button" class="listbutton" id="button12">
	    <div class="content-info">
	            <img src="../source/images/duck4.jpg" alt="14">
	        <div class="contents-title">
	        	<p class="title">기지재</p>
	        	<p class="cmtCnt">(5454)</p>
	        </div>
	        <div class="likeStar">★</div>
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
	
	
	
<script>
document.addEventListener("DOMContentLoaded", function () {
    function showContents(contentType) {
        // 모든 컨텐츠를 숨김
        var allContents = document.querySelectorAll(".listbutton");
        allContents.forEach(function (content) {
            content.style.display = "none";
        });

        // 해당 컨텐츠 유형만 보이도록 함
        var contentsToShow = document.querySelectorAll(".listbutton img[alt='" + contentType + "']");
        contentsToShow.forEach(function (content) {
            content.closest(".listbutton").style.display = "block";
        });
    }

    // "관광지" 버튼 클릭 시
    document.querySelector("#contentTypeId12").addEventListener("click", function () {
        showContents("12");
    });

    // "문화시설" 버튼 클릭 시
    document.querySelector("#contentTypeId14").addEventListener("click", function () {
        showContents("14");
    });

    // "음식점" 버튼 클릭 시
    document.querySelector("#contentTypeId39").addEventListener("click", function () {
        showContents("39");
    });

    // "숙박" 버튼 클릭 시
    document.querySelector("#contentTypeId32").addEventListener("click", function () {
        showContents("32");
    });

    // "축제공연" 버튼 클릭 시
    document.querySelector("#contentTypeId15").addEventListener("click", function () {
        showContents("15");
    });
});
</script>	
	

	
	
	
	
	
	
	<jsp:include page="../source/include/footer.jsp"/>
	
</body>
</html>