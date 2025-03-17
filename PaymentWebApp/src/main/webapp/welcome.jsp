<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h1>Welcome to Payment App</h1>
<h2>Login Form</h2>
<form action="WelcomePage" method="Post">
<label>Username:</label>
<input type="text" name="username" required><br><br>

<label>Password:</label>
<input type="password" name="password" required> <br><br>

<input type="submit" value="Login">
</form>
<br><br>
<a href='register.jsp'>Register</a>
</body>
</html>
