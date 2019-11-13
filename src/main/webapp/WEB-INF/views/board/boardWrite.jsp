<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="boardInsert" method="post">
	<input type="hidden" name="bUsername" value="${session.username }">
		<table border="1">
			<tr>
				<td>이름</td>
				<td>${session.username }</td>
			</tr>
			<tr>
				<td>Title</td>
				<td><input type="text" name="bTitle"></td>
			</tr>
			<tr>
				<td>Content</td>
				<td><textarea name="bContent" rows="30" cols="100"></textarea></td>
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