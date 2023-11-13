<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="app.dao.MemberDao" %>
<%
String Email = request.getParameter("memberEmail");
MemberDao md = new MemberDao();
int value = 0;
value = md.memberEmailCheck(Email);
String str = "{\"value\":\""+value+"\"}";
out.print(str);
%>