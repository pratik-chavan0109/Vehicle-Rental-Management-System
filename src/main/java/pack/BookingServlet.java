pratik
package pack;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
  

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String vehicleId = request.getParameter("vehicleId");
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String bookingDate = request.getParameter("bookingDate");
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carservice", "root", "pratik2210");
            String query = "INSERT INTO bookings (vehicle_id, user_name, user_email, booking_date) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, vehicleId);
            stmt.setString(2, userName);
            stmt.setString(3, userEmail);
            stmt.setString(4, bookingDate);
            stmt.executeUpdate();
            conn.close();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("bookingConfirmation.jsp?userName=" + userName + "&bookingDate=" + bookingDate);
    }
}
