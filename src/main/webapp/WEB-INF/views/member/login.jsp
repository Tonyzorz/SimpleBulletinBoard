<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${fail }
<form action="loginCheck" method="post">
	<div class="container">
		<label for="username"><b>Username</b></label>
		<input type="text" placeholder="Enter Username" name="username" required><br>
	
		<label for="password"><b>Password</b></label>
		<input type="password" placeholder="Enter Password" name="password" required><br>
		
		<button type="submit">Login</button>
		<input type="checkbox" name="remember">Remember me
	</div>
	<div class="container">
		<button type="button" class="cancelbtn">Cancel</button>
		<span class="psw"><a href="findPassword">Forgot password?</a></span>
	</div>
</form>
</body>
</html>