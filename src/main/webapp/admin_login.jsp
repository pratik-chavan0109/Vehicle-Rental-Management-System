<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(45deg, #f3ec78, #af4261);
            font-family: 'Arial', sans-serif;
        }
        .login-container {
            display: flex;
            align-items: center;
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 0.5rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 800px;
        }
        .login-image {
            max-width: 300px;
            margin-right: 2rem;
            border-radius: 0.5rem;
        }
        .login-form h2 {
            margin-bottom: 1.5rem;
            color: #333333;
        }
        .login-form .form-label {
            font-weight: bold;
        }
        .login-form .btn-primary {
            background-color: #af4261;
            border-color: #af4261;
        }
        .login-form .btn-primary:hover {
            background-color: #f3ec78;
            border-color: #f3ec78;
            color: #333333;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <img src="image/login.png" alt="Login Image" class="login-image">
        <div class="login-form">
            <h2>Admin Login</h2>
            <form action="admin_dashboard.jsp" method="post">
                <div class="mb-3">
                    <label for="adminId" class="form-label">Admin ID</label>
                    <input type="text" class="form-control" id="adminId" name="adminId" required>
                </div>
                <div class="mb-3">
                    <label for="adminPassword" class="form-label">Password</label>
                    <input type="password" class="form-control" id="adminPassword" name="adminPassword" required>
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
        </div>
    </div>
</body>
</html>
