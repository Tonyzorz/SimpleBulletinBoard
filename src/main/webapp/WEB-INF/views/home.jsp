<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
${success }<br>
${session }
<P>  The time on the server is ${serverTime}. </P>
<c:choose>
	<c:when test="${session == null}">
        <a href="toLogin">login</a> &nbsp;&nbsp;&nbsp;
		<a href="toRegister">register</a> &nbsp;&nbsp;&nbsp;
	</c:when>
	<c:otherwise>
		<a href="logout">Logout</a> &nbsp;&nbsp;&nbsp;
		<a href="toRegister">register</a> &nbsp;&nbsp;&nbsp;
	</c:otherwise>
</c:choose>
<a href="boardList">게시판</a>&nbsp;&nbsp;&nbsp;
<form action="search">
	<span>검색 : </span><input type="text" name="search">&nbsp;&nbsp;
	<select name="type">
		<option value="btitle" selected="selected">title</option>
		<option value="bContent" >content</option>
	</select>
	<input type="submit" value="검색">
</form>

</body>
</html>
