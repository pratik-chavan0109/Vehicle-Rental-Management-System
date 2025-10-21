<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String adminId = request.getParameter("adminId");
    String adminPassword = request.getParameter("adminPassword");

    // Predefined admin credentials
    String validAdminId = "admin2210";
    String validAdminPassword = "f1carservice";

    if (!adminId.equals(validAdminId) || !adminPassword.equals(validAdminPassword)) {
        response.sendRedirect("admin_login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #af4261;
        }

        .navbar .navbar-brand {
            color: #ffffff;
            font-size: 1.5rem;
            font-weight: bold;
        }

        .navbar .nav-link {
            color: #ffffff;
            font-size: 1.1rem;
        }

        .navbar .nav-link:hover {
            color: #f3ec78;
        }

        /* Dashboard Container */
        .dashboard {
            padding: 2rem;
        }

        .dashboard h1 {
            margin-bottom: 1.5rem;
            color: #333333;
            font-size: 2.5rem;
            text-align: center;
        }

        /* Dashboard Cards */
        .card {
            margin-bottom: 1.5rem;
            border: none;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }

        .card .card-body {
            padding: 2rem;
        }

        .card .card-title {
            color: #af4261;
            font-size: 1.8rem;
            margin-bottom: 1rem;
        }

        .card .card-text {
            color: #555555;
            font-size: 1.1rem;
        }

        .card .btn-primary {
            background-color: #af4261;
            border-color: #af4261;
            font-size: 1.2rem;
            padding: 0.75rem 2rem;
            transition: background-color 0.3s ease;
        }

        .card .btn-primary:hover {
            background-color: #f3ec78;
            border-color: #f3ec78;
            color: #333333;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .card {
                margin-bottom: 2rem;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Admin Dashboard</a>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="admin_login.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container dashboard">
        <h1>Welcome, Admin</h1>

        <div class="row">
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Manage Users</h5>
                        <p class="card-text">Add, edit, or delete users.</p>
                        <a href="display_users.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Manage Vehicles</h5>
                        <p class="card-text">Add, edit, or delete vehicles.</p>
                        <a href="dashboard.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">View Bookings</h5>
                        <p class="card-text">View and manage bookings.</p>
                        <a href="display_bookings.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
