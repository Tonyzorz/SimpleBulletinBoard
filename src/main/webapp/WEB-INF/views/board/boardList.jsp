<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../home.jsp" %>
<table border="1">
	<tr>
		<th>No.</th>
		<th>Title</th>
		<th>Writer</th>
		<th>Date</th>
		<th>Hit</th>
	</tr>
	<c:forEach var="board" items="${board}">
	<tr>
		<td>${board.boardId }</td>
		<td><a href="boardView?boardId=${board.boardId }">
		<c:forEach begin="1" end="${board.BIndent }">-</c:forEach>${board.BTitle }</a></td>
		<td>${board.BUsername }</td>
		<td>${board.BDate }</td>
		<td>${board.BHit }</td>
	</tr>
	</c:forEach>
</table>
<c:if test="${session != null }">
	<a href="boardWrite">글 쓰기</a>&nbsp;&nbsp;&nbsp;
</c:if>
</body>
</html>