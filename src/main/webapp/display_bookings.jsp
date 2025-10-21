<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookings List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <%
        // Example of fetching users from a database (should ideally be in a separate servlet)
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Establish database connection (replace with your database credentials)
            String dbURL = "jdbc:mysql://localhost:3306/carservice";
            String username = "root";
            String password = "pratik2210";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, username, password);

            // SQL query to fetch users
            String sql = "SELECT * FROM bookings";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            // Displaying user list
    %>

    <h1>User List</h1>
    <table border="1">
        <tr>
            <th>Vehicle ID</th>
            <th>User Name</th>
            <th>Email</th>
            <th>Booking Date</th>
            
        </tr>
        <% while (rs.next()) { %>
        <tr>
            <td><%= rs.getInt("vehicle_id") %></td>
            <td><%= rs.getString("user_name") %></td>
            <td><%= rs.getString("user_email") %></td>
            <td><%= rs.getString("booking_date") %></td>
        </tr>
        <% } %>
    </table>

    <%
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            if (rs != null) try { rs.close(); } catch (SQLException e) { /* ignored */ }
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { /* ignored */ }
            if (conn != null) try { conn.close(); } catch (SQLException e) { /* ignored */ }
        }
    %>

</body>
</html>
