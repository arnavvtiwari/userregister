<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
</head>
<body>
    <%-- <table style="border:2">
    <tr>
    <th>Name</th>
    <th>Designation</th>
    <th>Salary</th>
    </tr>
    <%
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/dbname", "postgres", "password");
    		
    		String sql = "SELECT name, designation, salary FROM records";
    		PreparedStatement statement = connection.prepareStatement(sql);
    		ResultSet rs = statement.executeQuery();
    		while(rs.next()){
    			%>
    	           <tr><td><%rs.getInt("name"); %></td></tr>
    	           <tr><td><%rs.getDate("designation"); %></td></tr>
    	           <tr><td><%rs.getString("salary"); %></td></tr>
    	   <%
    		}
    		%>
    		</table>
    		<% 
    		rs.close();
    		statement.close();
    		connection.close();
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
    %>
    </table> --%>
    <h1>You have logged in</h1>
</body>
</html>
