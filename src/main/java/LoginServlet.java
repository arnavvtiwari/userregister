import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Properties props = new Properties();
        try (FileInputStream in = new FileInputStream("/Users/arnavtiwari/Desktop/java/hello/src/main/webapp/WEB-INF/db.properties")) {
            props.load(in);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
            return;
        }

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String url = props.getProperty("jdbc.url");
        String uName = props.getProperty("jdbc.username");
        String pass = props.getProperty("jdbc.password");

        
        
        try {
        	
        	
        	Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(url, uName, pass);
            
            String sql = "SELECT * FROM records WHERE name = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            System.out.print(password+" "+username);            
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                response.sendRedirect("success.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
 
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}