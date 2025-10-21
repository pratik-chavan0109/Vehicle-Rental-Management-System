<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
        /* Internal CSS */
        body {
            font-family: Arial, sans-serif;
            background-image:url("image/register-back.jpg");
            background-attachment:fixed;
            background-repeat:no-repeat;
            background-size:cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 400px;
            background-color:rgba(255, 255, 255, 0.4);
            padding: 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: dark-black;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 10px;
            color: dark-black;
        }

        input[type=text], input[type=email], input[type=password], input[type=number] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type=submit] {
            background-color: #333;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type=submit]:hover {
            background-color: #555;
        }

        .error {
            color: red;
            margin-top: 5px;
        }
    </style>
    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var mobile = document.getElementById("mobile").value;
            var aadhar = document.getElementById("aadhar").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;

            var usernameRegex = /^[a-zA-Z0-9]{4,20}$/;
            var mobileRegex = /^[0-9]{10}$/;
            var aadharRegex = /^[0-9]{12}$/;
            var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            var passwordRegex = /^[a-zA-Z0-9!@#$%^&*]{6,20}$/;

            if (!usernameRegex.test(username)) {
                alert("Username must be 4-20 characters long and contain only letters and numbers.");
                return false;
            }

            if (!mobileRegex.test(mobile)) {
                alert("Mobile number must be 10 digits long.");
                return false;
            }

            if (!aadharRegex.test(aadhar)) {
                alert("Aadhar card number must be 12 digits long.");
                return false;
            }

            if (!emailRegex.test(email)) {
                alert("Invalid email format.");
                return false;
            }

            if (!passwordRegex.test(password)) {
                alert("Password must be 6-20 characters long and can contain letters, numbers, and special characters.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>User Registration</h2>
        <form action="RegisterServlet" method="post" onsubmit="return validateForm()">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="mobile">Mobile Number</label>
            <input type="number" id="mobile" name="mobile" required>

            <label for="aadhar">Aadhar Card Number</label>
            <input type="number" id="aadhar" name="aadhar" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
