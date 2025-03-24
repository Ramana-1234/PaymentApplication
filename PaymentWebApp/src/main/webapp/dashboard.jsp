<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard Page</title>
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
	<%@ include file="header.jsp" %>
	<div id='block'>
		<div id='userSection'>
		    <div>
				<h4>Primary bank Account no</h4>
				<h4>Account balance</h4>
				<h4>Wallet balance</h4>
			</div>
			<div id='sendMoneyButton'>
			<a href='sendMoney.jsp'>
				<button class="sendMoney">Send Money</button>
			</a>
			</div>
		</div>
	</div>
	
	<div id='block'>
		<div id='userSection'>
			<table border="">
			    <tr>
					<td>
						BANK NAME:</br>
						BANK Acct No:</br>
						Curr Balance: </br>
						IFSC CODE:</br>
						BRANCH:
					</td>
				</tr>
			</table>
			<div id='sendMoneyButton'>
				<button class="sendMoney">Add BankAccount</button>
			</div>
		</div>
	</div>
	
	<div id='block'>
		<div  id='userSection'>
			<div>
				<h4>Recent 10 transactions</h4>
			</div>
			<div id='sendMoneyButton'>
				<button class="statement">Detailed Statement</button>
			</div>
		</div>
	</div>
</body>
</html>