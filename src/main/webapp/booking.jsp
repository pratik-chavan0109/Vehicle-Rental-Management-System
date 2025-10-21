<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: silver;
            color: #ffffff;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #212529;
            padding: 10px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
        }

        .nav-link {
            color: #ffffff !important;
            font-size: 18px;
        }

        .nav-link:hover {
            color: #d6eaf8 !important;
        }

        .container {
            margin-top: 80px;
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        .booking-form-container {
            background-color: #495057;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            margin-bottom: 20px;
            border-top: 4px solid #6c757d;
        }

        .booking-form-container h3 {
            margin-bottom: 20px;
            color: #ffffff;
            text-align: center;
            font-size: 28px;
            font-weight: 600;
        }

        .booking-form .form-group {
            margin-bottom: 15px;
        }

        .booking-form input[type="text"], 
        .booking-form input[type="email"], 
        .booking-form input[type="date"], 
        .booking-form input[type="number"] {
            width: 100%;
            padding: 15px;
            margin-bottom: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease-in-out;
        }

        .booking-form input[type="text"]:focus, 
        .booking-form input[type="email"]:focus, 
        .booking-form input[type="date"]:focus, 
        .booking-form input[type="number"]:focus {
            border-color: #6c757d;
            box-shadow: 0 0 5px rgba(108, 117, 125, 0.3);
        }

        .booking-form button {
            background-color: #212529;
            color: #ffffff;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease-in-out;
            display: block;
            width: 100%;
            margin-top: 20px;
        }

        .booking-form button:hover {
            background-color: #343a40;
        }

        .form-group label {
            font-size: 16px;
            color: #ffffff;
            font-weight: 500;
        }

        .alert-success, .alert-danger {
            padding: 20px;
            margin-top: 20px;
            border-radius: 5px;
            text-align: center;
        }

        .alert-success {
            background-color: #28a745;
            color: #ffffff;
        }

        .alert-danger {
            background-color: #dc3545;
            color: #ffffff;
        }

        /* Additional Styles */
        .btn-primary {
            background-color: #212529;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #343a40;
        }

        /* Mobile Styles */
        @media (max-width: 768px) {
            .navbar {
                padding: 10px;
            }

            .navbar-brand {
                font-size: 20px;
            }

            .nav-link {
                font-size: 16px;
            }

            .container {
                margin-top: 50px;
            }

            .booking-form-container {
                padding: 20px;
            }

            .booking-form-container h3 {
                font-size: 24px;
            }

            .booking-form input[type="text"], 
            .booking-form input[type="email"], 
            .booking-form input[type="date"], 
            .booking-form input[type="number"] {
                padding: 12px;
                font-size: 14px;
            }

            .booking-form button {
                padding: 10px;
                font-size: 14px;
            }
        }

        /* Large Screen Styles */
        @media (min-width: 1200px) {
            .container {
                max-width: 900px;
            }
        }

        /* Custom Scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
        }

        ::-webkit-scrollbar-track {
            background: #495057;
        }

        ::-webkit-scrollbar-thumb {
            background-color: #212529;
            border-radius: 5px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background-color: #343a40;
        }

        /* Placeholder Styles */
        ::-webkit-input-placeholder {
            color: #adb5bd;
        }

        :-moz-placeholder {
            color: #adb5bd;
        }

        ::-moz-placeholder {
            color: #adb5bd;
        }

        :-ms-input-placeholder {
            color: #adb5bd;
        }

        /* Keyframes */
        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .booking-form-container {
            animation: slideIn 1s ease-out;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="dashboard.jsp">User Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="home.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="profile.jsp">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="home.html">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <div class="booking-form-container">
            <h3>Book Vehicle</h3>
            <form class="booking-form" action="BookingServlet" method="post">
                <div class="form-group">
                    <label for="vehicleID">Vehicle ID</label>
                    <input type="number" id="vehicleID" name="vehicleID" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="userName">Name</label>
                    <input type="text" id="userName" name="userName" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="userEmail">Email</label>
                    <input type="email" id="userEmail" name="userEmail" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="bookingDate">Booking Date</label>
                    <input type="date" id="bookingDate" name="bookingDate" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary">Book Now</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
