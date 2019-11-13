<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../home.jsp" %>
${result }
<table border="1">
	<tr>
		<th>No.</th>
		<th>Title</th>
		<th>Writer</th>
		<th>Date</th>
		<th>Hit</th>
	</tr>
	<c:forEach var="board" items="${result}">
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
</body>
</html>