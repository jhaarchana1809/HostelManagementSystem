<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Equal image size */
        .card-img-top {
            height: 200px; /* Set a fixed height */
            object-fit: cover; /* Ensure the image covers the whole area */
        }

        /* Ensure no scrollbars */
        body, html {
            height: 100%;
            margin: 0;
        }

        main {
            min-height: 80vh; /* Adjust the main content height */
            margin-bottom: 20px; /* Add margin between main content and footer */
        }

        footer {
            height: 10vh; /* Footer height */
        }

        /* Reduce padding/margins to fit content in viewport */
        .container {
            max-height: 100vh;
            padding-top: 0;
            padding-bottom: 0;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="./index.html">Saraswati Girls Hostel</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="bookRoom">Book a Room</a></li>
                    <li class="nav-item"><a href="${pageContext.request.contextPath}/updateProfile?id=${user.id}"
                            class="btn btn-primary me-2">Update Profile</a></li>
                    <li class="nav-item"><a href="userLogout" class="btn btn-danger">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
   
    
    <main class="container my-3">
        <h1 class="text-center mb-4">Welcome to Saraswati Girls Hostel!${user.name} </h1>
         

          
  <h1>Welcome, Guest!</h1>
        <!-- Welcome Section -->
        <div class="alert alert-info" role="alert">You have successfully logged in.</div>

        <!-- Feature Sections -->
        <div class="d-flex justify-content-center">
            <div class="row g-5">
                <!-- View Room Details -->
                <div class="col-lg-6">
                    <div class="card h-100 d-flex flex-column">
                        <img src="https://img.freepik.com/free-photo/bedroom-decoration_53876-41703.jpg?semt=ais_hybrid"
                            class="card-img-top" alt="Room Details Image">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title">View Room Details</h5>
                            <p class="card-text">Check available rooms and their details.</p>
                            <a href="viewroomdetails" class="btn btn-primary mt-auto">Room Availability</a>
                        </div>
                    </div>
                </div>

                <!-- Manage Bookings -->
                <div class="col-lg-6">
                    <div class="card h-100 d-flex flex-column">
                        <img src="https://img.freepik.com/free-vector/room-service-woman-working-hotel_24877-52869.jpg?semt=ais_hybrid"
                            class="card-img-top" alt="Manage Bookings Image">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title">Manage Bookings</h5>
                            <p class="card-text">Review and manage your bookings.</p>
                            <a href="manageBookings" class="btn btn-primary mt-auto">Manage Bookings</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-dark text-white py-2">
        <div class="container text-center">
            <p>&copy; 2023 Saraswati Girls Hostel. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
