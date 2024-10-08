<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Booking</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Saraswati Girls Hostel</a>
		</div>
	</nav>
    <div class="container my-5">
        <h2 class="text-center">Edit Booking</h2>
        <form action="${pageContext.request.contextPath}/updateBooking" method="post">
            <input type="hidden" name="id" value="${booking.id}" />
            
            <div class="mb-3">
                <label for="roomSelect" class="form-label">Room</label>
                <select  name="room" class="form-control" id="roomSelect">
                    <c:forEach var="room" items="${rooms}">
                        <option value="${room.id}" data-available-beds="${room.availablebed}" ${room.id == booking.room.id ? 'selected' : ''}>
                            Room Number: ${room.roomNumber} (Available Beds: ${room.capacity - room.allocatedBeds})
                        </option>
                    </c:forEach>
                </select>
            </div>
            
            <div class="mb-3">
                <label for="noOfBeds" class="form-label">Number of Beds</label>
                <input type="number" id="noOfBedsInput" min="1"  name="noOfBeds" class="form-control" value="${booking.noOfBeds}" required>
            </div>

            <div class="mb-3">
                <label for="user" class="form-label">User</label>
                <select id="user" name="user" class="form-control">
                    <c:forEach var="user" items="${users}">
                        <option value="${user.id}" ${user.id == booking.user.id ? 'selected' : ''}>
                            ${user.name}
                        </option>
                    </c:forEach>
                </select>
            </div>

            <div class="mb-3">
                <label for="checkInDate" class="form-label">Check-In Date</label>
                <input type="date" id="checkInDate" name="checkInDate" class="form-control" value="${booking.checkInDate}" required>
            </div>

            <div class="mb-3">
                <label for="checkOutDate" class="form-label">Check-Out Date</label>
                <input type="date" id="checkOutDate" name="checkOutDate" class="form-control" value="${booking.checkOutDate}" required>
            </div>

            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-success">Update Booking</button>
                <a href="${pageContext.request.contextPath}/manageBookings" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>

	<script>
    document.addEventListener('DOMContentLoaded', function() {
        const roomSelect = document.getElementById('roomSelect');
        const noOfBedsInput = document.getElementById('noOfBedsInput');

        function updateMaxBeds() {
            const selectedOption = roomSelect.options[roomSelect.selectedIndex];
            const availableBeds = selectedOption.getAttribute('data-available-beds');
            noOfBedsInput.max = availableBeds;
        }

        // Update max beds on page load and when the room selection changes
        updateMaxBeds();
        roomSelect.addEventListener('change', updateMaxBeds);
    });
</script>
	

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
