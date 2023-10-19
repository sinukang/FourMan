<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>    

<%@ page import="com.my0803.myapp.domain.*" %>  
<% 
//포워드는 공유속성때문에 넘겨받을수 있다
ArrayList<MemberVo> list = null;
list = (ArrayList<MemberVo>)request.getAttribute("alist");%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원목록</title>
<link href="./css/member.css" type="text/css" rel="stylesheet">

<style>

body {
    background-color: #e0f7fa; /* Light green background */
}

table {
    border: 2px solid #009688; /* Teal border for the table */
    border-radius: 15px; /* Elliptical corners */
    background-color: #e0f7fa; /* Light blue background inside the table */
    margin: 20px auto;
}

table th, table td {
    padding: 10px;
    text-align: center;
}

input[type="text"], input[type="password"] {
    width: 280px;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #009688;
    border-radius: 5px;
    background-color: #e0f7fa; /* Light blue background for text input */
}

</style>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원목록</title>
<link href="./css/member.css" type="text/css" rel="stylesheet">
</head>
<body>
<h1>회원목록</h1>
<br>
<table border="1" style="width:600px">
<thead>
		<tr>
		<th>회원번호</th>
		<th>아이디</th>
		<th>이름</th>		
		<th>가입일</th>
		</tr>
</thead>
<tbody>	

	<% for(MemberVo mv : list ) {%>
		<tr>
		<td><%=mv.getMidx() %></td>
		<td><%=mv.getMemberId() %></td>
		<td><%=mv.getMemberName() %></td>		
		<td><%=mv.getWriteday() %></td>
		</tr>
	<% } %>			
</tbody>		
</table>
</body>
</html>