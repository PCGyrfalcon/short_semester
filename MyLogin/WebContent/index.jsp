<%@page import="com.kms.pojo.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:if test="${empty sessionScope.person }">
			<a href="login.jsp">登陆</a>|<a href="sign.jsp">注册</a>
		</c:if>
		<c:if test="${not empty sessionScope.person}">
			<a href="">${sessionScope.person.name} </a>|<a href="signout.servlet">登出</a>
		</c:if>
		
</body>
</html>