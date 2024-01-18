<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 <link rel="stylesheet" href="styles/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>Contact Us</title>
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

        <% // Check if the user is logged in by verifying the session attribute
        if (session != null && session.getAttribute("loggedInUser") != null) {
            // User is logged in, retrieve the first name from the session
            // String firstName = (String) session.getAttribute("firstName");
            // String lastName = (String) session.getAttribute("lastName");
            boolean isLoggedIn = true; // You've already checked for this condition, so set it to true

            if (isLoggedIn) { %>
                <!-- If user is logged in, show a logout link or user-specific options -->
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="logout">Logout</a></li>
                <li><a href=""><%= session.getAttribute("loggedInUser") %></a></li>
            <% } else { %>
                <!-- If user is not logged in, show login/signin links -->
                <li><a href="register.jsp">LogIn / SignIn</a></li>
            <% }
        } else { %>
            <!-- If the session attribute is not present, show login/signin links -->
            <li><a href="register.jsp">LogIn / SignIn</a></li>
        <% } %>
    </ul>
</div>

        
        <!-- End of the navbar -->


	<div class="container mt-5">
    <div class="row">
      <div class="col-md-6">
        <img src="assets/party5.JPG" alt="" class="img-fluid">
      </div>
      <div class="col-md-6">
        <form action="contactUsServlet" method="post">
          <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="cusName" name="cusName" aria-describedby="emailHelp"
              placeholder="Enter name" required>
          </div>
          <br>
        
          <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" class="form-control" id="cusEmail" name="cusEmail" aria-describedby="emailHelp"
              placeholder="Enter email" required>
          </div>
          <br>
        
          <div class="form-group">
            <label for="subject">Subject</label>
            <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter subject" required>
          </div>
          <br>
        
          <div class="form-group">
            <label for="name">Message</label>
            <textarea class="form-control" id="message" name="message" placeholder="Enter message" rows="3" required></textarea>
          </div>
          <br>
        
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
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
	


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


</body>
</html>