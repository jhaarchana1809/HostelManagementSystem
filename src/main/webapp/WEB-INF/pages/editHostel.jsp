<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Hostel</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
		<h2>Edit Hostel</h2>
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title">Edit Hostel Details</h5>
					</div>
					<div class="card-body">
						<form action="updateHostel" method="post">
							<input type="hidden" name="id" value="${hostel.id}" />
							<div class="form-group mb-3">
								<label for="name" class="form-label">Hostel Name</label>
								<input type="text" class="form-control" id="name" name="name" value="${hostel.name}" required>
							</div>

							<div class="form-group mb-3">
								<label for="address" class="form-label">Hostel Address</label>
								<input type="text" class="form-control" id="address" name="address" value="${hostel.address}" required>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Update Hostel</button>
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
