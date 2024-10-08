<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>User Login</title>
    
    <style>
      body {
        background-color: #f8f9fa;
      }

      .login-container {
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        margin-top: 80px;
      }

      .login-container h1 {
        margin-bottom: 30px;
        font-weight: 700;
        color: #343a40;
      }

      .form-group label {
        font-weight: 600;
      }

      .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
      }

      .btn-primary:hover {
        background-color: #0056b3;
        border-color: #004085;
      }

      .form-text a {
        color: #007bff;
        text-decoration: none;
      }

      .form-text a:hover {
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6 login-container">
          <h1 class="text-center">User Login</h1>
          <form action="userLogin" method="post" onsubmit="return validateForm()">
            <div class="form-group">
              <label for="email">Email address</label>
              <input type="email" class="form-control" id="emailId" name="emailId" aria-describedby="emailHelp" placeholder="Enter your email">
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
            <div class="form-text text-center mt-3">
              <p><a href="forgetUser.html">Forget Password</a></p>
              <p><a href="userRegister.html">New User? Register Here</a></p>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- Optional JavaScript -->
    <script>
      function validateForm() {
        var email = document.getElementById("emailId").value;
        var password = document.getElementById("password").value;

        if (email == "" || password == "") {
          alert("Both email and password are required!");
          return false;
        }

        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
          alert("Please enter a valid email address!");
          return false;
        }

        return true;
      }
    </script>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
  </body>
</html>
