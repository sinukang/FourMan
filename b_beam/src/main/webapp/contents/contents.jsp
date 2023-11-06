<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<header class="header">
		<div class="header-logo">
			<h1 class="logo">
				<a class="svgLogo" href="./index.jsp">
					<img src="../source/images/logo4.png" width="150" height="80" alt="메인화면으로 이동">
				</a>
			</h1>
		</div>
		<div class="menu">
			<ul class="depth1">
				<li>
					<a href="${pageContext.request.contextPath}/contents/contents.do">컨텐츠</a>
				</li>
				<li>
					<a href="./index.jsp">TOP10</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/board/board.do">갤러리</a>
				</li>
				<li>
					<a href="./Home.jsp">마이페이지</a>
				</li>
				<li>
					<a href="./Home.jsp">고객지원</a>
				</li>
			</ul>
		</div>
		<span class="login">
			<a class="loginbutton" href="./member/memberLogin.jsp">
			<img src="../source/images/login.png">
			</a>
		</span>
	</header>
	



	
	
	
		
	<div class="container">
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents1.png"width="140px" height="150px">관광지
		</button>
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents2.png"width="140px" height="150px">문화시설
		</button>
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents3.png"width="140px" height="150px">음식점
		</button>
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents4.png"width="140px" height="150px">숙박
		</button>
		<button type="submit" class="contentsbutton">
			<img src="../source/images/contents5.png"width="140px" height="150px">축제공연
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
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
        </div>
    </button>
    
    <button type="button" class="listbutton" id="button1">
        <div class="content-info">
            <img src="../source/images/duck4.jpg" width="250px" height="200px">
            <div class="contents-title">전주덕진공원</div>
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
	
	
	
	
	
	
	
</body>
</html>