<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<br>
<a href="${pageContext.request.contextPath}/findTrainer">트레이너 찾기</a>
<script>
	document.addEventListener("DOMContentLoaded", ready);
	function ready(){
		location.href="${pageContext.request.contextPath}/findTrainer";
	}
</script>
</body>
</html>
