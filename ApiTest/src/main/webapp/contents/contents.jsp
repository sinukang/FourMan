<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>리스트 페이지</title>
<link rel="stylesheet" type="text/css" href="./css/contents.css">
</head>
</head>
<body>

<header class="header">
		<div class="header-logo">
			<h1 class="logo">
				<a class="svgLogo" href="./Home.jsp">
					<img src="./images/logo4.png" width="150" height="80" alt="메인화면으로 이동">
				</a>
			</h1>
		</div>
		<div class="menu">
			<ul class="depth1">
				<li>
					<a href="./Home.jsp">관광컨텐츠</a>
				</li>
				<li>
					<a href="./Home.jsp">자유게시판</a>
				</li>
				<li>
					<a href="./Home.jsp">로그인</a>
				</li>
				<li>
					<a href="./Home.jsp">마이페이지</a>
				</li>
				<li>
					<a href="./Home.jsp">공지사항</a>
				</li>
			</ul>
		</div>
		<span calss="login">
			<a class="loginbutton" href="로그인페이지">
			<img src="./images/login.png">
			</a>
		</span>
	</header>


<form>	
	
	
	
		
	<div class="container">
		<button type="submit" class="listbutton">
			<img src="/teamProject_bbeam/images/contents1.png"width="140px" height="150px">관광지
		</button>
		<button type="submit" class="listbutton">
			<img src="/teamProject_bbeam/images/contents2.png"width="140px" height="150px">문화시설
		</button>
		<button type="submit" class="listbutton">
			<img src="/teamProject_bbeam/images/contents3.png"width="140px" height="150px">음식점
		</button>
		<button type="submit" class="listbutton">
			<img src="/teamProject_bbeam/images/contents4.png"width="140px" height="150px">숙박
		</button>
		<button type="submit" class="listbutton">
			<img src="/teamProject_bbeam/images/contents5.png"width="140px" height="150px">축제공연
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
<div class="contentsbox1"> 
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	<button type="submit" class="contentsbutton"> 
		 <img src="/teamProject_bbeam/images/hanok.png"width="250px" height="200px"> 전주한옥마을
	</button>
	
	
</div>	
	


	<br>
	<br>
	<div class="pagination">
    <a href="#" class="arrow">◀</a>
    <a href="#" class="page">1</a>
    <a href="#" class="page">2</a>
    <a href="#" class="page">3</a>
    <a href="#" class="arrow">▶</a>
</div>
	
	
	
	
	
	
	
	
	
	
	</form>
</body>
</html>