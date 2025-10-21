<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            margin-top: 50px;
        }

        .profile-card {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-bottom: 20px;
            max-width: 500px;
            margin: auto;
        }

        .profile-card h3 {
            margin-bottom: 10px;
            color: #333;
        }

        .profile-card p {
            margin: 5px 0;
        }

        .profile-card .btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <!-- Main content -->
    <div class="container">
        <div class="profile-card">
            <h3>User Profile</h3>
            <p><strong>Username:</strong> <c:out value="${sessionScope.user.username}" /></p>
            <p><strong>Mobile:</strong> <c:out value="${sessionScope.user.mobile}" /></p>
            <p><strong>Email:</strong> <c:out value="${sessionScope.user.email}" /></p>
            <a href="dashboard.jsp" class="btn btn-primary">Back to Dashboard</a>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
