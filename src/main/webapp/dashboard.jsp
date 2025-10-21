<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
     <style>
        /* Internal CSS */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 10px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
        }

        .nav-link {
            color: #ecf0f1 !important;
            font-size: 18px;
        }

        .nav-link:hover {
            color: #3498db !important;
        }

        .container {
            margin-top: 80px;
        }

        .search-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-bottom: 20px;
            text-align: center;
        }

        .search-container h3 {
            margin-bottom: 10px;
            color: #333;
            font-size: 24px;
        }

        .search-form {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }

        .search-form input[type=text] {
            width: 300px;
            padding: 10px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .search-form button {
            background-color: #3498db;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .search-form button:hover {
            background-color: #2980b9;
        }

        .search-results {
            margin-top: 20px;
        }

        .vehicle-card {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-bottom: 20px;
            text-align: center;
            transition: transform 0.2s ease-in-out;
        }

        .vehicle-card:hover {
            transform: scale(1.05);
        }

        .vehicle-card img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        .vehicle-card h3 {
            margin-bottom: 10px;
            color: #333;
            font-size: 20px;
        }

        .vehicle-card p {
            margin: 5px 0;
            font-size: 16px;
        }

        .booking-form button {
            background-color: #2c3e50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .booking-form button:hover {
            background-color: #1a242f;
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

    <!-- Main content -->
    <div class="container">
        <!-- Vehicle Availability Search -->
        <div class="search-container">
            <h3>Search Available Vehicles</h3>
            <form class="search-form" action="dashboard.jsp" method="get">
                <input type="text" class="form-control" placeholder="Enter vehicle model" name="searchQuery">
                <button type="submit" class="btn btn-outline-secondary">Search</button>
            </form>
        </div>

        <!-- Display Vehicle Cards -->
        <div class="search-results">
            <div class="row">
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/audi.avif" alt="img">
                            <h3>AUDI R8</h3>
                            <p>Vehicle ID: 1111 </p>
                            <p>Status: Unavailable</p>
                            <p>Rent: ₹ 50,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/bmw x5.webp" alt="img">
                            <h3>BMW X5</h3>
                            <p>Vehicle ID:1112 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 30,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/creta1.jpg" alt="img">
                            <h3>CRETA SUV</h3>
                            <p>Vehicle ID:1113 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 20,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/ford indivour.jpg" alt="img">
                            <h3>FORD ENDEAVOUR</h3>
                            <p>Vehicle ID:1114 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 29,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/fortuner1.webp" alt="img">
                            <h3>TOYOTA FORTUNER</h3>
                            <p>Vehicle ID:1115 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 25,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/innova-crysta1.webp" alt="img">
                            <h3>INNOVA CRESTA</h3>
                            <p>Vehicle ID:1116</p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 22,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/Jaguar-F-.jpg" alt="img">
                            <h3>JAGUAR F-PACE</h3>
                            <p>Vehicle ID:1117</p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 32,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/Lamborghini.webp" alt="img">
                            <h3>LAMBORGHINI AVENTADOR</h3>
                            <p>Vehicle ID:1118</p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 45,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/maruti-jimny.jpg" alt="img">
                            <h3>MARUTI JIMNY 8</h3>
                            <p>Vehicle ID:1119 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 25,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/mercdies g wagon.jpg" alt="img">
                            <h3>MERCEDES G-WAGON</h3>
                            <p>Vehicle ID:1120 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 40,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/Mercedes.jpg" alt="img">
                            <h3>MERCEDES-BENZ AMG SL</h3>
                            <p>Vehicle ID:1121</p>
                            <p>Status: Unavailable</p>
                            <p>Rent: ₹ 35,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/range-rover.webp" alt="img">
                            <h3>RANGE-ROVER</h3>
                            <p>Vehicle ID:1122</p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 60,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/rolls royce.avif" alt="img">
                            <h3>ROLLS ROYCE PHANTOM</h3>
                            <p>Vehicle ID:1123 </p>
                            <p>Status: Unavailable</p>
                            <p>Rent: ₹ 55,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/scorpio1.jpg" alt="img">
                            <h3>SCORPIO S 11 MT 7S</h3>
                            <p>Vehicle ID:1124</p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 10,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/supra.png" alt="img">
                            <h3>SUPRA MK14</h3>
                            <p>Vehicle ID:1125 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 25,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/swift1.webp" alt="img">
                            <h3>SWIFT ARENA</h3>
                            <p>Vehicle ID:1126 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 5,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/Tata-Nexon-CNG-Front.webp" alt="img">
                            <h3>TATA NEXON</h3>
                            <p>Vehicle ID:1127 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 17,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/tata-safari.webp" alt="img">
                            <h3>TATA SAFARI</h3>
                            <p>Vehicle ID:1128 </p>
                            <p>Status: Unavailable</p>
                            <p>Rent: ₹ 15,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/thar.jpg" alt="img">
                            <h3>MAHINDRA THAR</h3>
                            <p>Vehicle ID:1129 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 11,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/verna.webp" alt="img">
                            <h3>HYUNDAI VERNA</h3>
                            <p>Vehicle ID:1130</p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 15,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="vehicle-card">
                            <img src="car-model/bmw x5.webp" alt="img">
                            <h3>BMW X5</h3>
                            <p>Vehicle ID:1131 </p>
                            <p>Status: Available</p>
                            <p>Rent: ₹ 20,000 per day</p>
                                <form class="booking-form" action="booking.jsp" method="post">
                                    <button type="submit" class="btn btn-primary">Book Now</button>
                                </form>
                        </div>
                    </div>
                    
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
