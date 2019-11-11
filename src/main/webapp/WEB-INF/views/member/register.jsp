<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="register" method="post">
	<div class="container">
		<label name="username"><b>Username</b></label>
		<input type="text" name="username"><br>
		
		<label name="password"><b>Password</b></label>
		<input type="password" name="password"><br>
		
		<label name="passwordCheck"><b>Password check</b></label>
		<input type="password" name="passwordCheck"><br>
		
		<label name="gender"><b>Select gender</b></label>
		<input type="radio" name="gender" value="m">M
		<input type="radio" name="gender" value="f">F<br>
		
		<label name="email"><b>Email</b></label>
		<input type="text" name="email"><br>
		
		<label name="birthday"><b>Birthday</b></label>
		<input type="date" name="birthday"><br>
		<input type="submit" value="JOIN">
	</div>
	<div class="container">
		<a href="findPassword">Forgot Password?</a>
	</div>
	

</form>
</body>
</html>