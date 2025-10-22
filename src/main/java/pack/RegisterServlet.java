package pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String username = request.getParameter("username");
        String mobile = request.getParameter("mobile");
        String aadhar = request.getParameter("aadhar");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement stmt = null;

        try 
        {
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carservice", "root", "pratik2210");

            String sql = "INSERT INTO users (username, mobile, aadhar, email, password) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, mobile);
            stmt.setString(3, aadhar);
            stmt.setString(4, email);
            stmt.setString(5, password);

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) 
            {
                response.sendRedirect("login.jsp"); 
            } 
            else 
            {
                response.sendRedirect("registration_error.jsp"); 
            }
        } 
        catch (SQLException | ClassNotFoundException ex) 
        {
            ex.printStackTrace();
            throw new ServletException(ex);
        } 
        finally 
        {
            try 
            {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } 
            catch (SQLException ex) 
            {
                ex.printStackTrace();
            }
        }
    }
}