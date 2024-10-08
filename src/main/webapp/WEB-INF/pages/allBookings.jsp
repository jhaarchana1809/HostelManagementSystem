<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manage Bookings</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
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

	<div class="container my-5">
		<h2 class="text-center">Manage All Bookings</h2>
		<div class="row">
			<c:forEach var="booking" items="${bookings}">
				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<div class="card-body">
							<h5 class="card-title">Booking ID: ${booking.id}</h5>
							<p class="card-text">User: ${booking.user.name}</p>
							<p class="card-text">Room Number: ${booking.room.roomNumber}</p>
							<p class="card-text">Number of Beds: ${booking.noOfBeds}</p>
							
							<p class="card-text">Check-in Date: ${booking.checkInDate}</p>
							<p class="card-text">Check-out Date: ${booking.checkOutDate}</p>
							
							<form action="${pageContext.request.contextPath}/cancelBookingByAdmin"
								method="post" style="display: inline;">
								<input type="hidden" name="id" value="${booking.id}" />
								<button type="submit" class="btn btn-danger"
									onclick="return confirm('Are you sure you want to delete this booking?');">Cancel
									Booking</button>
							</form>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
