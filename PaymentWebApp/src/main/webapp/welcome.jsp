<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
    body {
        background-color: #f8f9fa;
        font-family: 'Arial', sans-serif;
    }
    .header {
        background-color: #28a745;
        color: white;
        padding: 20px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    .form-container {
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin: 20px auto;
        max-width: 600px;
    }
    .form-container h2 {
        color: #28a745;
        margin-bottom: 20px;
        text-align: center;
    }
    .form-group label {
        color: #495057;
        font-weight: bold;
    }
    .btn-primary {
        background-color: #28a745;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        width: 100%;
    }
    .btn-primary:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
	<div id='header'>
	<h1>Welcome to Payment App</h1>
	</div>
    <div id='form'>
    <h2>Login Form</h2>
    <form method="post" action="WelcomePage">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <input type="submit" value="Login" class="btn btn-primary">   
    </form>
	</div>
    <div id='block'>
    <p>new user ? <a href='register.jsp'>Register here</a> </p>
    </div>
</body>
</html>