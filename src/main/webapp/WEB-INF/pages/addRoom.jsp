<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Room</title>

<!-- Bootstrap CSS -->
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

	<!-- Main Content -->
	<div class="container mt-5">
		<h2 class="text-center">Add New Room</h2>
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title">Room Details</h5>
					</div>
					<div class="card-body">
						<form action="saveRoom" method="post">
						<div class="form-group mb-3">
								<label for="id" class="form-label">Room Id</label>
								<input type="number" class="form-control" id="id" name="id" required>
							</div>
							
							
							<div class="form-group mb-3">
								<label for="roomNumber" class="form-label">Room Number</label>
								<input type="text" class="form-control" id="roomNumber" name="roomNumber" required>
							</div>
							
							<div class="form-group mb-3">
								<label for="capacity" class="form-label">Capacity</label>
								<input type="number" class="form-control" id="capacity" name="capacity" required>
							</div>

							<div class="form-group mb-3">
								<label for="allocatedBeds" class="form-label">Allocated Beds</label>
								<input type="number" class="form-control" id="allocatedBeds" name="allocatedBeds" required>
							</div>

							
							<div class="form-group mb-3">
								<label for="hostel" class="form-label">Hostel</label>
								<select class="form-select" id="hostel" name="hostel.id" required>
									<option value="">Select a Hostel</option>
									<c:forEach var="hostel" items="${hostels}">
										<option value="${hostel.id}">${hostel.name}, ${hostel.address }</option>
									</c:forEach>
								</select>
							</div>
							
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Save Room</button>
							</div>
						</form>
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
