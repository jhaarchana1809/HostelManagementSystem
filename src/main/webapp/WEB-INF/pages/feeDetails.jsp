<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fee Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style type="text/css">
    
     
       
       
    
    </style>
    
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
            <a href="userlogin.html" class="btn btn-outline-primary">User Login</a>
        </div>
    </div>
</header>

    <!-- Fee Details Section -->
    <div class="container mt-5">
        <h2 class="text-center mb-4">Fee Details</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Sharing Room</th>
                    <th>Bed Charge</th>
                    <th>Food Charge</th>
                    <th>Total Fee</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over fee details -->
                <c:forEach var="feeDetail" items="${feeDetails}">
                    <tr>
                        <td>${feeDetail.sharingRoom}</td>
                        <td>${feeDetail.bedCharge}</td>
                        <td>${feeDetail.foodCharge}</td>
                        <td>${feeDetail.totalFee}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    
        <!-- Footer Section -->
    <footer class="bg-dark text-white py-4 mt-auto">
        <div class="container text-center">
            <p>&copy; 2023 Saraswati Girls Hostel. All Rights Reserved.</p>
        </div>
    </footer>

    

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
