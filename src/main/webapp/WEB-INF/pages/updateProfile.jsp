<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
                <li class="nav-item">
                    <a class="nav-link" href="userDashboard">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a href="logout" class="btn btn-danger">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
    <div class="container my-5">
        <h2 class="text-center">Update Profile</h2>
        
        <form action="${pageContext.request.contextPath}/updateProfile" method="post">
            <!-- Hidden input to store the user ID -->
            <input type="hidden" name="id" value="${user.id}" />

            <div class="mb-3">
                <label for="emailId" class="form-label">Email ID</label>
                <input type="email" class="form-control" id="emailId" name="emailId" value="${user.emailId}" required>
            </div>

            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="${user.name}" required>
            </div>

            <div class="mb-3">
                <label for="age" class="form-label">Age</label>
                <input type="number" class="form-control" id="age" name="age" value="${user.age}" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" value="${user.password}" required>
            </div>

            <div class="mb-3">
                <label for="phoneNo" class="form-label">Phone Number</label>
                <input type="tel" class="form-control" id="phoneNo" name="phoneNo" value="${user.phoneNo}" required>
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <input type="text" class="form-control" id="address" name="address" value="${user.address}" required>
            </div>

            <div class="mb-3">
                <label for="city" class="form-label">City</label>
                <input type="text" class="form-control" id="city" name="city" value="${user.city}" required>
            </div>

            <div class="mb-3">
                <label for="state" class="form-label">State</label>
                <input type="text" class="form-control" id="state" name="state" value="${user.state}" required>
            </div>

            <div class="mb-3">
                <label for="pinCode" class="form-label">Pin Code</label>
                <input type="number" class="form-control" id="pinCode" name="pinCode" value="${user.pinCode}" required>
            </div>

            <div class="mb-3">
                <label for="purposeOfStaying" class="form-label">Purpose of Staying</label>
                <input type="text" class="form-control" id="purposeOfStaying" name="purposeOfStaying" value="${user.purposeOfStaying}" required>
            </div>

            <button type="submit" class="btn btn-primary">Update Profile</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
