<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
기본 페이지입니다.
<br>
<a href="<%=request.getContextPath()%>/member/memberJoin.do">회원가입페이지</a>
<br>
<%if (session.getAttribute("midx") == null) { %>
<a href="<%=request.getContextPath()%>/member/memberLogin.do">로그인</a>
<%}else{%>
<a href="<%=request.getContextPath()%>/member/memberLogout.do">로그아웃</a>
<%} %>
<br>
<a href="<%=request.getContextPath()%>/board/boardWrite.do">글쓰기페이지</a>
<br>
<a href="<%=request.getContextPath()%>/member/memberList.do">회원 리스트</a>
<br>
<a href="<%=request.getContextPath()%>/board/boardList.do">글목록 </a>


</body>
</html>