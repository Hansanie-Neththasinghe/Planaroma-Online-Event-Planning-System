<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


 <link rel="stylesheet" href="styles/style.css">
 <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
 
 <link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
	
<title>Sign In</title>
</head>
<body>
<div class="navbar bg-dark container-fluid">
            <img src="assets/logo.png" alt="" class="logo">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="index.jsp">Events</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="aboutUs.jsp">About Us</a></li>
                <li><a href="contactUs.jsp">Contact Us</a></li>
                <li><a href="register.jsp">LogIn / SignIn</a></li>
            </ul>
        </div>
        
        <!-- End of the navbar -->
        
        
        <div class="container">
        <h1 class="mt-4 text-center">Sign In</h1>
        
    </div>
    
    
	<div class="container mt-5">
    <div class="row">
      <div class="col-md-6">
        <img src="assets/login.png" alt="" class="img-fluid">
        
      </div>
      <div class="col-md-6">
        
        <form action="LoginServlet" method="post">
        
            <div class="form-group align-items-center">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>


            <button type="submit" class="btn btn-primary">Login</button>
        </form>
        
        <br><br>
        <h6><a href="register.jsp">Don't have an account? / Register</a></h6>
      </div>
    </div>
  </div>
  
  <br><br>
  
  <!-- footer -->
  
  <footer class="text-white text-center py-4" style="background-image: url('assets/image4.JPG'); background-size: cover;">
  <div class="container">
      <div class="row">
          <div class="col-md-6">
              <p>&copy; 2024 Planorama
              </p>
          </div>
          <div class="col-md-6">
              <ul class="list-inline mb-0">
                  <li class="list-inline-item"><a href="index.jsp">Home</a></li>
                  <li class="list-inline-item"><a href="index.jsp">Events</a></li>
                  <li class="list-inline-item"><a href="gallery.jsp">Gallery</a></li>
                  <li class="list-inline-item"><a href="aboutUs.jsp">About Us</a></li>
                  <li class="list-inline-item"><a href="contactUs.jsp">Contact Us</a></li>
              </ul>
          </div>
      </div>
  </div>
</footer>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>