<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>리스트 페이지</title>
<link rel="stylesheet" type="text/css" href="../source/css/contents/contentsR.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	


</head>
</head>
<body>

<jsp:include page="../source/include/header.jsp"/>
<div class="wrap">
	<div class="container-title">
		<h1>
			랭킹 Top10
		</h1>
	</div>
	<div class="container">
		<div class="rankcontainer">
			<div class="rankingbox">
				<c:forEach var="i" begin="1" end="4" step="1">
					<div class="contentsbox rank">
						<h3 class="ranktitle">
							XX Top10
						</h3>
						<c:forEach var="i" begin="1" end="10" step="1">
						    <button type="button" class="listbutton rank" id="button1">
						        <div class="contents-info rank">
						            <img src="../source/images/duck4.jpg">
						            <div class="contents-title rank">전주덕진공원</div>
						        </div>
						    </button>
					    </c:forEach>
					</div>	
			    </c:forEach>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>