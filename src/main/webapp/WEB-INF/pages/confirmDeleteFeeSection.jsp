<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Fee Section</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Saraswati Girls Hostel</a>
		</div>
	</nav>

	<div class="container mt-5">
		<h2>Delete Fee Section</h2>
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title text-danger">Confirm Deletion</h5>
					</div>
					<div class="card-body">
						<p>Are you sure you want to delete the following Fee Section?</p>
						<ul>
							<li><strong>Sharing Room:</strong> ${feeSection.sharingRoom}</li>
							<li><strong>Bed Charge:</strong> ${feeSection.bedCharge}</li>
							<li><strong>Food Charge:</strong>${feeSection.foodCharge}</li>
							<li><strong>Total Fee:</strong> ${feeSection.totalFee}</li>

						</ul>
						<form action="confirmDeleteFeeSection" method="post">
							<input type="hidden" name="id" value="${feeSection.id}">
							<div class="text-center">
								<button type="submit" class="btn btn-danger">Confirm
									Delete</button>
								<a href="viewAllFeeSections" class="btn btn-secondary">Cancel</a>
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
