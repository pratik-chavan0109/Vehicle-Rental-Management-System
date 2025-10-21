package pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Step 2: Open a connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carservice","root","pratik2210");

            // Step 3: Create a SQL statement
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);

            // Step 4: Execute the statement
            rs = stmt.executeQuery();
            

            // Step 5: Process the result set
            if (rs.next()) {
                // User authenticated, redirect to home page or dashboard
                response.sendRedirect("dashboard.jsp");
            } else {
                // Authentication failed, redirect back to login page with error message
                response.sendRedirect("login.jsp");
                
            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            throw new ServletException(ex);
        } finally {
            // Step 6: Close the connection, statement, and result set
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
