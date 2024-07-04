<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style type="text/css">
    	body {
            display: flex;
            justify-content: center;
            /* align-items: center; */
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color:#370018;
        }
         #form {
        	border: 2px solid #6f3048;
        	border-radius: 10px;
        	box-shadow:2px;
        	margin-top:80px;
            text-align: center;
            height: 30%;
            width: 30%;
            background-color: #370018;
            backdrop-filter: blur(5px);
			-webkit-backdrop-filter: blur(5px);
            color:white;

        }
        form {
            display: inline-block;
            text-align: left;
        }
        #username{
        margin-left:12px;
        border:1px solid white;
        border-radius:5px;
        }
        #password{
        margin-left:15px;
        border:1px solid white;
        border-radius:5px;
        }
        #submit{
        margin-left:50%;
        border:1px solid white;
        border-radius:5px;
        }
    </style>
</head>
<body>
    <div id="form">
    <h2>Login</h2>
    <form action="LoginServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>
    </div>
    <% if (request.getParameter("error") != null) { %>
        <p style="color:red;">Invalid username or password. Please try again.</p>
    <% } %>
    <% if (request.getParameter("success") != null) { %>
        <p style="color:red;">Login Successful</p>
        
    <% } %>
</body>
</html>
