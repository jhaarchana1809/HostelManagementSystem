<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Availability</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
</head>

<body>
<!-- Header Section -->
<header class="bg-light py-3">
    <div class="container d-flex justify-content-between align-items-center">
        <!-- Logo Section -->
        <div class="logo-container ">
            <img src="images/girlsHostelLogo.png" alt="Saraswati Girls Hostel Logo" class="img-fluid logo rounded-circle" style="max-height: 100px;">
        </div>

<!-- Address and Contact Information in Single Line -->
        <div class="contact-info d-flex align-items-center">
            <a href="https://facebook.com" class="text-dark me-3 d-flex align-items-center">
                <i class="fab fa-facebook me-1"></i> 
            </a>
            <a href="mailto:archanaktr17@gmail.com" class="text-dark me-3 d-flex align-items-center">
                <i class="far fa-envelope me-1"></i> archanaktr17@gmail.com
            </a>
            <a href="https://wa.me/918945678990" class="text-dark me-3 d-flex align-items-center">
                <i class="fab fa-whatsapp me-1"></i> +91 8945678990
            </a>
            <span class="text-dark me-3 d-flex align-items-center">
                <i class="fas fa-phone me-1"></i> +91 6788905436
            </span>
            <span class="text-dark d-flex align-items-center">
                <i class="fas fa-map-marker-alt me-1"></i> Bihar, India
            </span>
        </div>

        <!-- Login Links -->
        <div id="login">
           <!--   <a href="adminlogin.html" class="btn btn-outline-primary me-2">Admin Login</a>-->
           
        </div>
    </div>
</header>
   
    <!-- Room Availability Section -->
    <main class="container my-5">
        <h2 class="text-center">Room Availability</h2>
        <div class="row">
            <!-- Iterate over the list of rooms -->
            <c:forEach var="room" items="${rooms}">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h5 class="card-title">Room Number: ${room.roomNumber}</h5>
                            <p class="card-text">Capacity: ${room.capacity}</p>
                            <p class="card-text">Status: 
                          <span class="badge ${room.capacity > room.allocatedBeds ? 'bg-success' : 'bg-danger'}">
                         <c:choose>
                            <c:when test="${room.capacity > room.allocatedBeds}">
                                <c:out value="${room.capacity - room.allocatedBeds}"/> Bed/s available
                            </c:when>
                            <c:otherwise>
                                Occupied
                            </c:otherwise>
                        </c:choose>
                    </span>

                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </main>

    <!-- Footer Section -->
    <footer class="bg-dark text-white py-4">
        <div class="container text-center">
            <p>&copy; 2023 Saraswati Girls Hostel. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
