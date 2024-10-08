<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Confirm Delete Hostel</title>

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
		<h2>Confirm Delete Hostel</h2>
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title">Confirm Deletion</h5>
					</div>
					<div class="card-body">
						<p>Are you sure you want to delete the hostel with the following details?</p>
						<ul>
							<li><strong>ID:</strong> ${hostel.id}</li>
							<li><strong>Name:</strong> ${hostel.name}</li>
							<li><strong>Address:</strong> ${hostel.address}</li>
						</ul>
						<form action="deleteHostel" method="post">
							<input type="hidden" name="id" value="${hostel.id}" />
							<div class="text-center">
								<button type="submit" class="btn btn-danger">Confirm Delete</button>
								<a href="viewAllHostel" class="btn btn-secondary">Cancel</a>
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
