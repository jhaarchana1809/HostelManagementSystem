<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Fee Section</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

   <!-- Navigation Bar -->
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

    <div class="container mt-5">
        <h2>Add Fee Section</h2>
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Fee Section Details</h5>
                    </div>
                    <div class="card-body">
                        <form action="saveFeeSection" method="post">
                            <div class="form-group mb-3">
                                <label for="sharingRoom" class="form-label">Sharing Room</label>
                                <input type="text" class="form-control" id="sharingRoom" name="sharingRoom" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="bedCharge" class="form-label">Bed Charge</label>
                                <input type="number" class="form-control" id="bedCharge" name="bedCharge" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="foodCharge" class="form-label">Food Charge</label>
                                <input type="number" class="form-control" id="foodCharge" name="foodCharge" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="totalFee" class="form-label">Total Fee</label>
                                <input type="number" class="form-control" id="totalFee" name="totalFee" required>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Save Fee Section</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-primary text-white text-center py-3 mt-5">
        <p>&copy; 2024 Saraswati Girls Hostel Management</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
