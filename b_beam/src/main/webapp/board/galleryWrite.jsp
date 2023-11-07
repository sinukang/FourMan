<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../source/css/home.css" type="text/css" rel="stylesheet">
	<link href="../source/css/galleryWrite.css" type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../source/include/header.jsp"/>
	<div class="wrap">
		<div class="container">
			<div class="inner-table">
				<div>
					<label id="back-btn" for="input-write">뒤로가기</label>
					<input type="button" id="input-write" name="btn" style="display:none;" onclick="location.href='${pageContext.request.contextPath}/board/galleryList.do';">
				</div>
				<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
					<tr style="height:30px;">
						<td >
							<input type="text" id="input-sub" name="subject" placeholder=" 제목을 입력하세요.">
						</td>
					</tr>
					<tr style="height:200px;">
						<td>
							<textarea id="input-cont" name="contents" placeholder="내용을 입력해주세요."></textarea>
						</td>
					</tr>
					<tr style="height:20px;">
						<td>
							<label for="input-file">사진선택</label>
							<input type="file" id="input-file" name="filename" style="display:none;">
						</td>
					</tr>
					<tr style="height:20px;">
						<td class="write-btn">
							<label id="write-btn" for="input-write">글쓰기</label>
							<input type="button" id="input-write" name="btn" style="display:none;" onclick="check();">
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>