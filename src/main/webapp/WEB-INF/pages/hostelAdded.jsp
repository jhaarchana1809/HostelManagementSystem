<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Added Successfully</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Navigation -->
    <!-- Navigation -->
	    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Saraswati Girls Hostel</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="./">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="adminDashboard">Dashboard</a></li>
                    <li class="nav-item"><a class="nav-link" href="adminLogout">LogOut</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Main Content -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        <h5 class="card-title">Hostel Added Successfully</h5>
                    </div>
                    <div class="card-body">
                        <p class="lead">The hostel <strong>${hostel.name}</strong> has been successfully added to the system.</p>
                        <p>What would you like to do next?</p>
                        <div class="d-grid gap-2">
                            <a href="addHostel.html" class="btn btn-primary">Add Another Hostel</a>
                            <a href="viewAllHostel" class="btn btn-secondary">View All Hostels</a>
                            <a href="./adminLogin.jsp" class="btn btn-light">Return to Dashboard</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-primary text-white text-center py-3 mt-5 ">
        <p>&copy; 2024 Saraswati Girls Hostel Management</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>