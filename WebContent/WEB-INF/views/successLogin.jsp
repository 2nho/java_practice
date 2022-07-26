<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.inho.login.dto.LoginDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 @SuppressWarnings("unchecked")
 List<LoginDTO> member = (List<LoginDTO>)request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>성공</h1>
<%
	for(LoginDTO list : member){
%>
		아이디:<%=list.getId()%>  <br> 이름:<%=list.getName()%>
<%
	}
%>
</body>
</html>