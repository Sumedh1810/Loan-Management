<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Account Management System</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      color: black;
      background-color: #f8f9fa;
      vertical-align: middle;
    }
    
    .container {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    h1 {
      text-align: center;
      margin-bottom: 20px;
    }
    
    .form-group {
      margin-bottom: 20px;
    }
    
    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }
    
    .form-group input[type="text"] {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    
    .form-group .error-message {
      color: #ff0000;
    }
    
    .button-container {
      text-align: center;
    }
    
    .button-container button {
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      background-color: #007bff;
      color: #fff;
      cursor: pointer;
      font-size: 16px;
    }
    
    .button-container button:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Apply to home loan</h1>
    
    <form method="post" action="accountLogin">
      <div class="form-group">
        <label for="accNo">Account Number:</label>
        <input type="text" id="accNo" name="accNo" placeholder="Enter your account number">
      </div>
      <div class="form-group">
        <label for="accPassword">Password:</label>
        <input type="password" id="accPassword" name="accPassword" placeholder="Enter your account Password">
      </div>
      
      <div class="button-container">
        <button type="submit">Submit</button>
      </div>
    </form>
    
    <p>If you don't have an account, <a href="createAccountForm.jsp">click here</a> to create a new account.</p>
  </div>
</body>
</html>