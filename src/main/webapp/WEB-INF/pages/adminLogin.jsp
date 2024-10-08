<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Saraswati Girls Hostel</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="./">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-danger text-warning" href="adminLogout" >Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-5">
        <div class="text-center">
            <h2>Welcome, Admin!</h2>
            <p>Choose one of the following options to manage the hostel:</p>
        </div>
        
       
        <div class="row text-center">
        	<div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Hostels</h5>
                        <p class="card-text">Add, view, or remove hostel</p>
                        <a href="viewAllHostel" class="btn btn-primary">Manage Hostels</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Rooms</h5>
                        <p class="card-text">Add, view, or remove hostel rooms</p>
                        <a href="manageRooms" class="btn btn-primary">Manage Rooms</a>                    </div>
                </div>
            </div>
            
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Fee Section</h5>
                        <p class="card-text">Add, view, or remove rooms fee</p>
                        <a href="viewAllFeeSections" class="btn btn-primary">Manage Fee Section</a>                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Students</h5>
                        <p class="card-text">View, add or remove students</p>
                        <a href="managestudents" class="btn btn-primary">Manage Students</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">All Bookings</h5>
                        <p class="card-text">View all bookings or cancel the booking</p>
                        <a href="allBookings" class="btn btn-primary">Manage Bookings</a>
                    </div>
                </div>
            </div>

           
	
            
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-primary text-white text-center py-3 mt-5">
        <p>&copy; 2024 Saraswati Girls Hostel Management</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
