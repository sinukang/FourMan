<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/contents/contents.do">컨텐츠</a>
<a href="${pageContext.request.contextPath}/board/board.do">게시판</a>
<a href="${pageContext.request.contextPath}/comment/comment.do">댓글</a>
<a href="${pageContext.request.contextPath}/member/member.do">회원</a>
<a href="${pageContext.request.contextPath}/qna/qna.do">1:1문의</a>
<a href="${pageContext.request.contextPath}/review/review.do">후기</a>
<a href="${pageContext.request.contextPath}/report/report.do">신고</a>
</body>
</html>