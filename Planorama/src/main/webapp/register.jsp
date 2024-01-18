<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>

 <link rel="stylesheet" href="styles/style.css">
 <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
 
 <link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
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
        <h1 class="mt-4 text-center">Customer Registration Form</h1>
        
    </div>
    
    
	<div class="container mt-5">
    <div class="row">
      <div class="col-md-6">
        <img src="assets/register.png" alt="" class="img-fluid">
        </div>
      <div class="col-md-6">
        
        <form action="RegistrationServlet" method="post">

					<%
					String errorMessage = (String) request.getAttribute("errorMessage");
					String firstName = (String) request.getAttribute("firstName");
					String lastName = (String) request.getAttribute("lastName");
					String email = (String) request.getAttribute("email");
					String phoneNumber = (String) request.getAttribute("phoneNumber");
					String password = (String) request.getAttribute("password");
					String confirmPassword = (String) request.getAttribute("confirmPassword");
					%>
					
					
					<div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" class="form-control" id="firstName" name="firstName" value="<%= firstName != null ? firstName : "" %>"  required>
            </div>

            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" class="form-control" id="lastName" name="lastName" value="<%= lastName != null ? lastName : "" %>"  required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" value="<%= email != null ? email : "" %>" required>
            </div>
            
            
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" value="<%= phoneNumber != null ? phoneNumber : "" %>" required>
            </div>
					
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" value="<%= password != null ? password : "" %>" required>
            </div>

            <div class="form-group">
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword"value="<%= confirmPassword != null ? confirmPassword : "" %>"   required>
            </div>
            
            <%
					if (errorMessage != null) {
					%>
					<div style="color: red;">
						<%=errorMessage%>
					</div>
					<% } %>

			<br>
            <button type="submit" class="btn btn-primary">Register</button>
        	<br><br><br>
        	
        	<h6><a href="login.jsp">Already have an account? / Sign In</a></h6>
      
        
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

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>