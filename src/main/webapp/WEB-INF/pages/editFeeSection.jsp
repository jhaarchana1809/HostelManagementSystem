<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Fee Section</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Saraswati Girls Hostel</a>
        </div>
    </nav>

    <div class="container mt-5">
        <h2>Edit Fee Section</h2>
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Fee Section Details</h5>
                    </div>
                    <div class="card-body">
                        <form action="updateFeeSection" method="post">
                            <input type="hidden" name="id" value="${feeSection.id}">
                            <div class="form-group mb-3">
                                <label for="sharingRoom" class="form-label">Sharing Room</label>
                                <input type="text" class="form-control" id="sharingRoom" name="sharingRoom" value="${feeSection.sharingRoom}" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="bedCharge" class="form-label">Bed Charge</label>
                                <input type="number" class="form-control" id="bedCharge" name="bedCharge" value="${feeSection.bedCharge}" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="foodCharge" class="form-label">Food Charge</label>
                                <input type="number" class="form-control" id="foodCharge" name="foodCharge" value="${feeSection.foodCharge}" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="totalFee" class="form-label">Total Fee</label>
                                <input type="number" class="form-control" id="totalFee" name="totalFee" value="${feeSection.totalFee}" required>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Update Fee Section</button>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
