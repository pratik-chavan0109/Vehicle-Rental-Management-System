<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #343a40;
            color: #ffffff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        .container {
            width: 100%;
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            background-color: #495057;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            animation: slideIn 1s ease-out;
        }

        .confirmation-container {
            text-align: center;
            color: #ffffff;
            animation: fadeIn 1.5s ease-out;
        }

        .confirmation-container h3 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #ffc107;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
            animation: bounceIn 1s ease-out;
        }

        .confirmation-container p {
            font-size: 18px;
            margin: 10px 0;
            color: #ffffff;
            animation: fadeInUp 1s ease-out;
        }

        .confirmation-container a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #ffffff;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s ease-in-out;
            animation: bounceInUp 1s ease-out;
        }

        .confirmation-container a:hover {
            background-color: #0056b3;
        }

        /* Keyframes */
        @keyframes slideIn {
            from {
                transform: translateY(100px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes bounceIn {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-30px);
            }
            60% {
                transform: translateY(-15px);
            }
        }

        @keyframes fadeInUp {
            from {
                transform: translateY(20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes bounceInUp {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-30px);
            }
            60% {
                transform: translateY(-15px);
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
    </style>
</head>
<body>
    <div class="container">
        <div class="confirmation-container">
            <h3>Booking Confirmation</h3>
            <p>Thank you, Your booking has been confirmed.</p>
            <p>A confirmation email has been sent to you.</p>
            <a href="dashboard.jsp" class="btn btn-primary">Back to Dashboard</a>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
