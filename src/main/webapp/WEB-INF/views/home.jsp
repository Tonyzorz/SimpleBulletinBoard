<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
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

<%-- <c:if test="${session == null }"> --%>
<!-- 	<a href="toLogin">login</a> &nbsp;&nbsp;&nbsp; -->
<!-- 	<a href="toRegister">register</a> &nbsp;&nbsp;&nbsp; -->
<%-- </c:if> --%>
<%-- <c:if test="${session != null }"> --%>
<!-- 	<a href="logout">Logout</a> &nbsp;&nbsp;&nbsp; -->
<!-- 	<a href="toRegister">register</a> &nbsp;&nbsp;&nbsp; -->
<%-- </c:if> --%>

</body>
</html>
