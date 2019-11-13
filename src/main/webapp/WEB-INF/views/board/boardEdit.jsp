<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="boardEdit" method="post">
	<input type="hidden" name="boardId" value="${board.boardId}">
		<table border="1">
			<tr>
				<td>이름</td>
				<td>${board.BUsername }</td>
			</tr>
			<tr>
				<td>Title</td>
				<td><input type="text" name="bTitle" value="${board.BTitle }"></td>
			</tr>
			<tr>
				<td>Content</td>
				<td><textarea name="bContent" rows="30" cols="100">${board.BContent }</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit" value="submit">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>