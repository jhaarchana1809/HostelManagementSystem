<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Room</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Saraswati Girls Hostel</a>
		</div>
	</nav>

	<!-- Main Content -->
	<div class="container mt-5">
		<h2 class="text-center">Edit Room</h2>
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card mx-auto">
					<div class="card-header">
						<h5 class="card-title">Edit Room Details</h5>
					</div>
					<div class="card-body">
						<form action="updateRoom" method="post">
							<input type="hidden" name="id" value="${room.id}" />

							<div class="form-group mb-3">
								<label for="roomNumber" class="form-label">Room Number</label> <input
									type="text" class="form-control" id="roomNumber"
									name="roomNumber" value="${room.roomNumber}" required>
							</div>

							<div class="form-group mb-3">
								<label for="capacity" class="form-label">Capacity</label> <input
									type="number" class="form-control" id="capacity"
									name="capacity" value="${room.capacity}" required>
							</div>

							<div class="form-group mb-3">
								<label for="allocatedBeds" class="form-label">Allocated
									Beds</label> <input type="number" class="form-control"
									id="allocatedBeds" name="allocatedBeds"
									value="${room.allocatedBeds}" required>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Update
									Room</button>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
