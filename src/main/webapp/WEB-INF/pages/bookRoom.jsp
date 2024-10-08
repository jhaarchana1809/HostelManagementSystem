<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Booking</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <!-- Brand name aligned to the left -->
        <a class="navbar-brand" href="./index.html">Saraswati Girls Hostel</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <!-- Links aligned to the right -->
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="./">Home</a></li>
                <li class="nav-item">
                    <a class="nav-link" href="userDashboard">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a href="userLogout" class="btn btn-danger">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content: Centered Form -->
<div class="container mt-5 d-flex justify-content-center">
    <div class="col-lg-6 col-md-8 col-sm-10">
        <div class="card shadow-sm">
            <div class="card-body">
                <h2 class="card-title text-center mb-4">Book a Room</h2>

                <form:form method="POST" modelAttribute="booking" action="bookRoom">
                    <!-- Room Selection -->
                    <div class="form-group">
                        <form:label path="room.id">Room:</form:label>
                        <form:select path="room.id" class="form-control" id="roomSelect">
                            <c:forEach var="room" items="${rooms}">
                                <option value="${room.id}" data-available-beds="${room.availablebed}">
                                    Room ${room.roomNumber}
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>

                    <!-- Number of Beds -->
                    <div class="form-group">
                        <form:label path="noOfBeds">Number of Beds:</form:label>
                        <form:input path="noOfBeds" type="number" class="form-control"
                                    id="noOfBedsInput" value="1" min="1" required="true"/>
                    </div>

                    <!-- User Name -->
                    <div class="form-group">
                        <form:hidden path="user.id" value="${loggedInUser.id}" />
                        <form:label path="userName">User Name:</form:label>
                        <form:input path="userName" type="text" class="form-control"
                                    value="${loggedInUser.name}" readonly="true"/>
                    </div>

                    <!-- Check-in Date -->
                    <div class="form-group">
                        <form:label path="checkInDate">Check-in Date:</form:label>
                        <form:input path="checkInDate" type="date" class="form-control" required="true"/>
                    </div>

                    <!-- Check-out Date -->
                    <div class="form-group">
                        <form:label path="checkOutDate">Check-out Date:</form:label>
                        <form:input path="checkOutDate" type="date" class="form-control" required="true"/>
                    </div>

                    <!-- Submit Button -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Book Now</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    document.addEventListener('DOMContentLoaded', function () {
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

</body>
</html>
