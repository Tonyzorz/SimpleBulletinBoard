<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<p>데이터를 처리 하는 과정에서 문제가 발생하였습니다.</p>
		<p>관리자에게 문의하여 주십시오.</p>
	</div>
	<c:forEach var="stack" items="${exception.getStackTrace() }">
		<li>${stack.toString() }</li>
	</c:forEach>
</body>
</html>