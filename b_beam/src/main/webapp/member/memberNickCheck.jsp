<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="app.dao.MemberDao" %>
<%
int value = 0;
String str = "{\"value\":\""+value+"\"}";
out.print(str);
%>