<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../source/css/home.css" type="text/css" rel="stylesheet">
	<link href="../source/css/gallery.css" type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../source/include/header.jsp"/>
	<div class="wrap">
		<div>
			<h1>GALLERY</h1>
		</div>
		<div class="container">
			<table class="wrap-table">
				<tr>
					<td colspan="4" class="write-btn">
						<label class="input-button" for="input-write">글쓰기</label>
						<input type="button" id="input-write" name="btn" style="display:none;" onclick="location.href='${pageContext.request.contextPath}/board/galleryWrite.do';">
					</td>
				</tr>
				<tr>
					<td>
					<div class="inner-table">
						<table class="table-cont" style=" cursor: pointer;" onclick="location.href='${pageContext.request.contextPath}/board/galleryContents.do';">
							<tr>
								<td colspan="2" style="padding-left: 10px;">닉네임</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../source/images/testimg.png"></td>
								
							</tr>
							<tr>
								<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
								<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
							</tr>
						</table>
					</div>
					</td>
					<td>
					<div class="inner-table">
						<table class="table-cont" style=" cursor: pointer;" onclick="location.href='${pageContext.request.contextPath}/board/galleryContents.do';">
							<tr>
								<td colspan="2" style="padding-left: 10px;">닉네임</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../source/images/testimg.png"></td>
								
							</tr>
							<tr>
								<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
								<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
							</tr>
						</table>
					</div>
					</td>
					<td>
					<div class="inner-table">
						<table class="table-cont" style=" cursor: pointer;" onclick="location.href='${pageContext.request.contextPath}/board/galleryContents.do';">
							<tr>
								<td colspan="2" style="padding-left: 10px;">닉네임</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../source/images/testimg.png"></td>
								
							</tr>
							<tr>
								<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
								<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
							</tr>
						</table>
					</div>
					</td>
					<td>
					<div class="inner-table">
						<table class="table-cont" style=" cursor: pointer;" onclick="location.href='${pageContext.request.contextPath}/board/galleryContents.do';">
							<tr>
								<td colspan="2" style="padding-left: 10px;">닉네임</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../source/images/testimg.png"></td>
								
							</tr>
							<tr>
								<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
								<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
							</tr>
						</table>
					</div>
					</td>
				</tr>
				<tr>
					<td>
					<div class="inner-table">
						<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
							<tr>
								<td colspan="2" style="padding-left: 10px;">닉네임</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../source/images/testimg.png"></td>
								
							</tr>
							<tr>
								<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
								<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
							</tr>
						</table>
					</div>
					</td>
					<td>
					<div class="inner-table">
						<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
							<tr>
								<td colspan="2" style="padding-left: 10px;">닉네임</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../source/images/testimg.png"></td>
								
							</tr>
							<tr>
								<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
								<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
							</tr>
						</table>
					</div>
					</td>
					<td>
					<div class="inner-table">
						<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
							<tr>
								<td colspan="2" style="padding-left: 10px;">닉네임</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../source/images/testimg.png"></td>
								
							</tr>
							<tr>
								<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
								<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
							</tr>
						</table>
					</div>
					</td>
					<td>
					<div class="inner-table">
						<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
							<tr>
								<td colspan="2" style="padding-left: 10px;">닉네임</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../source/images/testimg.png"></td>
								
							</tr>
							<tr>
								<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
								<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
							</tr>
						</table>
					</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="page">
			<table class="page-num">
				<tr>
				<td><a href="">◀</a></td>
				<td><a href="">1</a></td>
				<td><a href="">2</a></td>
				<td><a href="">3</a></td>
				<td><a href="">4</a></td>
				<td><a href="">5</a></td>
				<td><a href="">▶</a></td>
				</tr>
			</table>
		</div>
	</div>
	<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>