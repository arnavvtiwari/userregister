<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Page</title>
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
        	border: 2px solid white;
        	border-radius: 10px;
        	box-shadow:2px;
        	margin-top:80px;
            text-align: center;
            height: 40%;
            width: 50%;
			background-color: #370018;
            backdrop-filter: blur(5px);
			-webkit-backdrop-filter: blur(5px);
            color:white;

        }
        form {
            display: inline-block;
            text-align: left;
        }
        #designation{
        border:1px solid white;
        border-radius:5px;
        }
        #name{
        margin-left:42px;
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
        #salary{
        margin-left:40px;
        border:1px solid white;
        border-radius:5px;
        }
      </style>
</head>
<body>
	<div id="form"">
    <h2>Register</h2>
    <form action="RegisterServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="designation">Designation:</label>
        <input type="text" id="designation" name="designation" required><br><br>
        
        <label for="salary">Salary:</label>
        <input type="text" id="salary" name="salary" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Register" id="submit">
    </form>
    </div>
    <% if (request.getParameter("error") != null) { %>
        <p style="color:red;">Registration failed. Please try again.</p>
    <% } %>
    <% if (request.getParameter("success") != null) { %>
        <p style="color:green;">Registration successful! You can now <a href="login.jsp">login</a>.</p>
    <% } %>
</body>
</html>
