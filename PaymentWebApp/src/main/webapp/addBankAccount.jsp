<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Bank Account Page</title>
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
    }
    .btn-primary:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
    <div class="header">
        <h1>Add Bank Account</h1>
    </div>
    <div class="container">
        <div class="form-container">
            <h2>Enter Bank Details</h2>
            <form action="Registration" method="Post">
                <div class="form-group mb-3">
                    <label for="bankName">Bank Name:</label>
                    <input type="text" id="bankName" name="bankName" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="accountNumber">Account Number:</label>
                    <input type="number" id="accountNumber" name="accountNumber" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="accountType">Account Type:</label>
                    <input type="text" id="accountType" name="accountType" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="ifscCode">IFSC Code:</label>
                    <input type="text" id="ifscCode" name="ifscCode" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="balance">Current Balance:</label>
                    <input type="number" id="balance" name="balance" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="pin">Pin:</label>
                    <input type="number" id="pin" name="pin" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary">Add Account</button>
            </form>
        </div>
    </div>
</body>
</html>