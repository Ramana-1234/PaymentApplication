<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
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
    .form-control {
        border-radius: 5px;
        border: 1px solid #ced4da;
        padding: 10px;
        width: 100%;
        box-sizing: border-box;
    }
    .form-control:focus {
        border-color: #28a745;
        box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
    }
    .btn-primary {
        background-color: #28a745;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        width: 100%;
        color: white;
        cursor: pointer;
    }
    .btn-primary:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
	<div id='header'>
	<h1>Payment Application</h1>
	</div>
	<div id='form'>
	    <h2>Registration Form</h2><br>
		<form action="Register" method="Post">	
			<div class="form-group">
	            <label for="username">User Name :</label>
	            <input type="text" id="username" name="username" class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="password">Password:</label>
	            <input type="password" id="password" name="password" class="form-control" required>
	        </div>
			<div class="form-group">
	            <label for="firstname">First Name:</label>
	            <input type="text" id="firstname" name="firstname" class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="lastname">Last Name:</label>
	            <input type="text" id="lastname" name="lastname" class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="phoneno">Phone No:</label>
	            <input type="tel" id="phoneno" name="phoneno" class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="email">email:</label>
	            <input type="email" id="email" name="email" class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="address">Address:</label>
	            <input type="address" id="address" name="address" class="form-control" required>
	        </div>
			<input type="submit" value="Register" class="btn btn-primary">
		</form>
	</div>
				
</body>
</html>