<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../home.jsp"%>
	
	<c:if test="${board.BUsername == session.username}">
		<form action="toBoardEdit" method="post">
			<input type="hidden" value="${board.boardId }" name="boardId">
			<input type="submit" value="edit">
		</form>
		<form action="boardDelete" method="post">
			<input type="hidden" value="${board.boardId }" name="boardId">
			<input type="submit" value="delete">
		</form>
	</c:if>
	<c:if test="${session != null }">
		<form action="toBoardReply" method="post">
			<input type="hidden" value="${board.BGroup }" name="BGroup">
			<input type="hidden" value="${board.BStep }" name="BStep">
			<input type="hidden" value="${board.BIndent }" name="BIndent">
			<input type="submit" value="reply to post">
		</form>
	</c:if>
	
	<table border="1">
		<tr>
			<td>이름</td>
			<td>${board.BUsername}</td>
		</tr>
		<tr>
			<td>Title</td>
			<td>${board.BTitle}</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${board.BHit }</td>
		</tr>
		<tr>
			<td>Time</td>
			<td>${board.BDate }</td>
		</tr>
		<tr>
			<td>Content</td>
			<td>${board.BContent }</td>
		</tr>
	</table>
	<table border="1">
		<c:forEach var="comment" items="${comment }">
		<tr>
			<td><span>${comment.username }</span></td>
			<td><span>${comment.content }</span></td>
			<td>
				<c:if test="${comment.username == session.username }">
					<form action="deleteComment" method="post">
						<input type="hidden" name="boardId" value="${comment.boardId }">
						<input type="hidden" name="commentId" value="${comment.commentId }">
						<input type="submit" value="delete comment">
					</form>
				</c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
	<form action="postComment" method="post">
		<input type="hidden" name="boardId" value="${board.boardId }">
		<input type="hidden" name="username" value="${session.username }">
		<textarea rows="5" cols="100" name="content"></textarea><br>
		<c:if test="${session.username != null }">
			<input type="submit" value="comment submit">
		</c:if>
	</form>


</body>
</html>