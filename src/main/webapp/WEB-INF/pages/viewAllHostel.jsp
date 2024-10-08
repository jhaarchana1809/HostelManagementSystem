<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View all hostels</title>

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
		<h2>Manage Hostels</h2>
		<div class="row">
			<div class="col-md-12 mb-4">
				<!-- Hostel Table -->
				<div class="card">
					<div class="card-header">
						<h5 class="card-title">Existing Hostels</h5>
						 <a href="addHostel.html" class="btn btn-primary">Add Hostel</a>
					</div>
					<div class="card-body">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Address</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="hostel" items="${hostels}">
									<tr>
										<td>${hostel.id}</td>
										<td>${hostel.name}</td>
										<td>${hostel.address}</td>
										<td>
										<a href="${pageContext.request.contextPath}/editHostel?id=${hostel.id}" class="btn btn-warning btn-sm">Edit</a>
										<a href="${pageContext.request.contextPath}/deleteHostel?id=${hostel.id}" class="btn btn-danger btn-sm">Delete</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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
