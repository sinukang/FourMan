<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../source/css/home.css" type="text/css" rel="stylesheet">
	<link href="../source/css/galleryContents.css" type="text/css" rel="stylesheet">
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
					<td>
						<div class="inner-table">
							<table class="table-cont">
								<tr>
									<td colspan="2" style="padding: 5px 0 5px 5px;">닉네임</td>
								</tr>
								<tr>
									<td colspan="2"><img src="../source/images/testimg.png"></td>
									
								</tr>
								<tr>
									<td style="border-bottom:0; padding: 5px 0 3px 15px;">전주 한옥마을 야경</td>
									<td class="like" style="border-bottom:0; padding-right: 7px;">♥</td>
								</tr>
								<tr>
									<td colspan="2" style="border: 0; color:#567ff2">
										#전주 #한옥마을 #야경
									</td>
								</tr>
								<tr>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div>
											<input type="text" id="comment-write" placeholder="댓글을 작성해주세요.">
										</div>
										<div>
											<label class="write-btn" for="comment-btn">
												<img src="../source/images/commentbtn.png">
											</label>
											<input type="button" id="comment-btn" value="작성">
										</div>
									</td>
								</tr>
								<tr>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											<span>닉네임</span>
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
										<div>
											2023.11.06
										</div>
									</td>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											닉네임
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
									</td>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											닉네임
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
									</td>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											닉네임
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
									</td>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											닉네임
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
									</td>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											닉네임
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
									</td>
									<td class="comment-area" colspan="2" style="border-bottom:0;"> 
										<div class="commnet-id">
											닉네임
										</div>
										<div class="commnet-cont">
											댓글을 작성하였습니다.
										</div>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<jsp:include page="../source/include/footer.jsp"/>
</body>
</html>