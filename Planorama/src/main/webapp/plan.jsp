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
	
<title>Plan</title>
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
        
        
        <div id="pbasicForm" class="form-container">
    <!-- Display basic plan form details here -->
    <div class="container mt-5">
    <h2>Basic Event Package - Customer Details Form</h2>
    
    <!-- Basic Event Package - Customer Details Form -->
<form action="/submit-basic-form" method="post">
    <!-- Contact Information -->
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <input type="text" class="form-control" id="fullName" name="fullName" required>
    </div>
    <div class="form-group">
        <label for="email">Email Address:</label>
        <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" class="form-control" id="phone" name="phone" required>
    </div>

    <!-- Event Details -->
    <div class="form-group">
        <label for="eventDate">Event Date:</label>
        <input type="date" class="form-control" id="eventDate" name="eventDate" required>
    </div>
    <div class="form-group">
        <label for="venue">Preferred Venue:</label>
        <input type="text" class="form-control" id="venue" name="venue">
    </div>

    <!-- Guest Information -->
    <div class="form-group">
        <label for="guestCount">Estimated Number of Guests:</label>
        <input type="number" class="form-control" id="guestCount" name="guestCount" required>
    </div>

    <!-- Special Requests or Preferences -->
    <div class="form-group">
        <label for="additionalRequests">Additional Requests (Optional):</label>
        <textarea class="form-control" id="additionalRequests" name="additionalRequests"></textarea>
    </div>

    <!-- Agreement and Confirmation -->
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="confirmation" name="confirmation" required>
        <label class="form-check-label" for="confirmation">I confirm my booking for the Basic Package on [Event Date].</label>
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
</form>
    <br>
    
    </div>
</div>

<div id="pstandardForm" class="form-container">
    <!-- Display standard plan form details here -->
    <div class="container mt-5">
    <h2>Standard Event Package - Customer Details Form</h2>
    
    <!-- Standard Event Package - Customer Details Form -->
<form action="/submit-standard-form" method="post">
    <!-- Contact Information -->
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <input type="text" class="form-control" id="fullName" name="fullName" required>
    </div>
    <div class="form-group">
        <label for="email">Email Address:</label>
        <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" class="form-control" id="phone" name="phone" required>
    </div>

    <!-- Event Details -->
    <div class="form-group">
        <label for="eventDate">Event Date:</label>
        <input type="date" class="form-control" id="eventDate" name="eventDate" required>
    </div>
    <div class="form-group">
        <label for="venue">Preferred Venue:</label>
        <input type="text" class="form-control" id="venue" name="venue">
    </div>

    <!-- Guest Information -->
    <div class="form-group">
        <label for="guestCount">Estimated Number of Guests:</label>
        <input type="number" class="form-control" id="guestCount" name="guestCount" required>
    </div>

    <!-- Special Requests or Preferences -->
    <div class="form-group">
        <label for="additionalRequests">Additional Requests (Optional):</label>
        <textarea class="form-control" id="additionalRequests" name="additionalRequests"></textarea>
    </div>

    <!-- Agreement and Confirmation -->
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="confirmation" name="confirmation" required>
        <label class="form-check-label" for="confirmation">I confirm my booking for the Standard Package on [Event Date].</label>
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
</form>
    
    <br>
    </div>
</div>

<div id="ppremiumForm" class="form-container">
    <!-- Display premium plan form details here -->
    <div class="container mt-5">
    <h2>Premium Event Package - Customer Details Form</h2>
    
    <!-- Premium Event Package - Customer Details Form -->
<form action="/submit-premium-form" method="post">
    <!-- Contact Information -->
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <input type="text" class="form-control" id="fullName" name="fullName" required>
    </div>
    <div class="form-group">
        <label for="email">Email Address:</label>
        <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" class="form-control" id="phone" name="phone" required>
    </div>

    <!-- Event Details -->
    <div class="form-group">
        <label for="eventDate">Event Date:</label>
        <input type="date" class="form-control" id="eventDate" name="eventDate" required>
    </div>
    <div class="form-group">
        <label for="venue">Preferred Venue:</label>
        <input type="text" class="form-control" id="venue" name="venue">
    </div>

    <!-- Guest Information -->
    <div class="form-group">
        <label for="guestCount">Estimated Number of Guests:</label>
        <input type="number" class="form-control" id="guestCount" name="guestCount" required>
    </div>

    <!-- Special Requests or Preferences -->
    <div class="form-group">
        <label for="additionalRequests">Additional Requests (Optional):</label>
        <textarea class="form-control" id="additionalRequests" name="additionalRequests"></textarea>
    </div>

    <!-- Agreement and Confirmation -->
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="confirmation" name="confirmation" required>
        <label class="form-check-label" for="confirmation">I confirm my booking for the Premium Package on [Event Date].</label>
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
</form>
    <br>
    
    </div>
</div>



<div id="cexecutiveForm" class="form-container">
    <!-- Display basic plan form details here -->
    <div class="container mt-5">
    <h2>Executive Corporate Package - Customer Details Form</h2>
    
    <!-- Executive Corporate Package - Customer Details Form -->
<form action="/submit-executive-form" method="post">
    <!-- Contact Information -->
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <input type="text" class="form-control" id="fullName" name="fullName" required>
    </div>
    <div class="form-group">
        <label for="email">Email Address:</label>
        <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" class="form-control" id="phone" name="phone" required>
    </div>

    <!-- Event Details -->
    <div class="form-group">
        <label for="eventDate">Event Date:</label>
        <input type="date" class="form-control" id="eventDate" name="eventDate" required>
    </div>
    <div class="form-group">
        <label for="venue">Preferred Venue:</label>
        <input type="text" class="form-control" id="venue" name="venue">
    </div>

    <!-- Attendee Information -->
    <div class="form-group">
        <label for="attendeeCount">Estimated Number of Attendees:</label>
        <input type="number" class="form-control" id="attendeeCount" name="attendeeCount" required>
    </div>

    <!-- Additional Requests or Preferences -->
    <div class="form-group">
        <label for="additionalRequests">Additional Requests (Optional):</label>
        <textarea class="form-control" id="additionalRequests" name="additionalRequests"></textarea>
    </div>

    <!-- Agreement and Confirmation -->
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="confirmation" name="confirmation" required>
        <label class="form-check-label" for="confirmation">I confirm my booking for the Executive Package on [Event Date].</label>
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
</form>
    
    <br>
    </div>
</div>


<div id="cprofessionalForm" class="form-container">
    <!-- Display basic plan form details here -->
   <div class="container mt-5">
    <h2>Professional Corporate Package - Customer Details Form</h2>
    
    <!-- Professional Corporate Package - Customer Details Form -->
<form action="" method="post">
    <!-- Contact Information -->
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <input type="text" class="form-control" id="fullName" name="fullName" required>
    </div>
    <div class="form-group">
        <label for="email">Email Address:</label>
        <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" class="form-control" id="phone" name="phone" required>
    </div>

    <!-- Event Details -->
    <div class="form-group">
        <label for="eventDate">Event Date:</label>
        <input type="date" class="form-control" id="eventDate" name="eventDate" required>
    </div>
    <div class="form-group">
        <label for="venue">Preferred Venue:</label>
        <input type="text" class="form-control" id="venue" name="venue">
    </div>

    <!-- Attendee Information -->
    <div class="form-group">
        <label for="attendeeCount">Estimated Number of Attendees:</label>
        <input type="number" class="form-control" id="attendeeCount" name="attendeeCount" required>
    </div>

    <!-- Additional Requests or Preferences -->
    <div class="form-group">
        <label for="additionalRequests">Additional Requests (Optional):</label>
        <textarea class="form-control" id="additionalRequests" name="additionalRequests"></textarea>
    </div>

    <!-- Agreement and Confirmation -->
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="confirmation" name="confirmation" required>
        <label class="form-check-label" for="confirmation">I confirm my booking for the Professional Package on [Event Date].</label>
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
</form>
    
    <br>
    </div>
</div>



<div id="cgalaForm" class="form-container">
    <!-- Display basic plan form details here -->
    <div class="container mt-5">
    <h2>Corporate Gala Package - Customer Details Form</h2>
    	<!-- Corporate Gala Package - Customer Details Form -->
<form action="" method="post">
    <!-- Contact Information -->
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <input type="text" class="form-control" id="fullName" name="fullName" required>
    </div>
    <div class="form-group">
        <label for="email">Email Address:</label>
        <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" class="form-control" id="phone" name="phone" required>
    </div>

    <!-- Event Details -->
    <div class="form-group">
        <label for="eventDate">Event Date:</label>
        <input type="date" class="form-control" id="eventDate" name="eventDate" required>
    </div>
    <div class="form-group">
        <label for="venue">Preferred Venue:</label>
        <input type="text" class="form-control" id="venue" name="venue">
    </div>

    <!-- Attendee Information -->
    <div class="form-group">
        <label for="attendeeCount">Estimated Number of Attendees:</label>
        <input type="number" class="form-control" id="attendeeCount" name="attendeeCount" required>
    </div>

    <!-- Additional Requests or Preferences -->
    <div class="form-group">
        <label for="additionalRequests">Additional Requests (Optional):</label>
        <textarea class="form-control" id="additionalRequests" name="additionalRequests"></textarea>
    </div>

    <!-- Agreement and Confirmation -->
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="confirmation" name="confirmation" required>
        <label class="form-check-label" for="confirmation">I confirm my booking for the Corporate Gala Package on [Event Date].</label>
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
</form>
    	<br>
    </div>
</div>





<div id="wessentialForm" class="form-container">
    <!-- Display basic plan form details here -->
    
	<div class="container mt-5">
    <h2>Essential Wedding Package - Customer Details Form</h2>
    <form action="" method="post">
        <!-- Contact Information -->
        <div class="form-group">
            <label for="fullName">Full Name:</label>
            <input type="text" class="form-control" id="fullName" name="fullName" required>
        </div>
        <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="tel" class="form-control" id="phone" name="phone" required>
        </div>

        <!-- Wedding Details -->
        <div class="form-group">
            <label for="weddingDate">Wedding Date:</label>
            <input type="date" class="form-control" id="weddingDate" name="weddingDate" required>
        </div>
        <div class="form-group">
            <label for="venue">Preferred Venue:</label>
            <input type="text" class="form-control" id="venue" name="venue">
        </div>

        <!-- Guest Information -->
        <div class="form-group">
            <label for="guestCount">Estimated Number of Guests:</label>
            <input type="number" class="form-control" id="guestCount" name="guestCount" required>
        </div>

        <!-- Special Requests or Preferences -->
        <div class="form-group">
            <label for="dietaryRequirements">Dietary Requirements:</label>
            <textarea class="form-control" id="dietaryRequirements" name="dietaryRequirements"></textarea>
        </div>
        <div class="form-group">
            <label for="musicPreferences">Music Preferences:</label>
            <textarea class="form-control" id="musicPreferences" name="musicPreferences"></textarea>
        </div>
        <div class="form-group">
            <label for="decorationsTheme">Decorations/Theme Preferences:</label>
            <textarea class="form-control" id="decorationsTheme" name="decorationsTheme"></textarea>
        </div>

        <!-- Additional Services -->
        <div class="form-group">
            <label for="additionalServices">Additional Services (Optional):</label>
            <textarea class="form-control" id="additionalServices" name="additionalServices"></textarea>
        </div>

        <!-- Agreement and Confirmation -->
        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="confirmation" name="confirmation" required>
            <label class="form-check-label" for="confirmation">I confirm my booking for the Essential Package on [Wedding Date].</label>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </form>
</div>
<br>

</div>





<div id="wpremiumForm" class="form-container">
    <!-- Display basic plan form details here -->
    

	<div class="container mt-5">
    <h2>Premium Wedding Package - Customer Details Form</h2>
    <form action="" method="post">
        <!-- Contact Information -->
        <div class="form-group">
            <label for="fullName">Full Name:</label>
            <input type="text" class="form-control" id="fullName" name="fullName" required>
        </div>
        <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="tel" class="form-control" id="phone" name="phone" required>
        </div>

        <!-- Wedding Details -->
        <div class="form-group">
            <label for="weddingDate">Wedding Date:</label>
            <input type="date" class="form-control" id="weddingDate" name="weddingDate" required>
        </div>
        <div class="form-group">
            <label for="venue">Preferred Venue:</label>
            <input type="text" class="form-control" id="venue" name="venue">
        </div>

        <!-- Guest Information -->
        <div class="form-group">
            <label for="guestCount">Estimated Number of Guests:</label>
            <input type="number" class="form-control" id="guestCount" name="guestCount" required>
        </div>

        <!-- Special Requests or Preferences -->
        <div class="form-group">
            <label for="dietaryRequirements">Dietary Requirements:</label>
            <textarea class="form-control" id="dietaryRequirements" name="dietaryRequirements"></textarea>
        </div>
        <div class="form-group">
            <label for="musicPreferences">Music Preferences:</label>
            <textarea class="form-control" id="musicPreferences" name="musicPreferences"></textarea>
        </div>
        <div class="form-group">
            <label for="decorationsTheme">Decorations/Theme Preferences:</label>
            <textarea class="form-control" id="decorationsTheme" name="decorationsTheme"></textarea>
        </div>

        <!-- Additional Services -->
        <div class="form-group">
            <label for="additionalServices">Additional Services (Optional):</label>
            <textarea class="form-control" id="additionalServices" name="additionalServices"></textarea>
        </div>

        <!-- Agreement and Confirmation -->
        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="confirmation" name="confirmation" required>
            <label class="form-check-label" for="confirmation">I confirm my booking for the Premium Package on [Wedding Date].</label>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </form>
</div>
	<br>
	
	
</div>

<div id="wluxuryForm" class="form-container">
    <!-- Display basic plan form details here -->
    <div class="container mt-5">
    <h2>Luxury Wedding Package - Customer Details Form</h2>
    	
    	<!-- Luxury Wedding Package - Customer Details Form -->
<form action="" method="post">
    <!-- Contact Information -->
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <input type="text" class="form-control" id="fullName" name="fullName" required>
    </div>
    <div class="form-group">
        <label for="email">Email Address:</label>
        <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" class="form-control" id="phone" name="phone" required>
    </div>

    <!-- Wedding Details -->
    <div class="form-group">
        <label for="weddingDate">Wedding Date:</label>
        <input type="date" class="form-control" id="weddingDate" name="weddingDate" required>
    </div>
    <div class="form-group">
        <label for="venue">Preferred Venue:</label>
        <input type="text" class="form-control" id="venue" name="venue">
    </div>

    <!-- Guest Information -->
    <div class="form-group">
        <label for="guestCount">Estimated Number of Guests:</label>
        <input type="number" class="form-control" id="guestCount" name="guestCount" required>
    </div>

    <!-- Special Requests or Preferences -->
    <div class="form-group">
        <label for="dietaryRequirements">Dietary Requirements:</label>
        <textarea class="form-control" id="dietaryRequirements" name="dietaryRequirements"></textarea>
    </div>
    <div class="form-group">
        <label for="musicPreferences">Music Preferences:</label>
        <textarea class="form-control" id="musicPreferences" name="musicPreferences"></textarea>
    </div>
    <div class="form-group">
        <label for="decorationsTheme">Decorations/Theme Preferences:</label>
        <textarea class="form-control" id="decorationsTheme" name="decorationsTheme"></textarea>
    </div>

    <!-- Additional Services -->
    <div class="form-group">
        <label for="additionalServices">Additional Services (Optional):</label>
        <textarea class="form-control" id="additionalServices" name="additionalServices"></textarea>
    </div>

    <!-- Agreement and Confirmation -->
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="confirmation" name="confirmation" required>
        <label class="form-check-label" for="confirmation">I confirm my booking for the Luxury Package on [Wedding Date].</label>
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
</form>
    	
    
    </div>
    <br>
</div>



<script>
    // Function to display relevant form details based on the parameter
    function displayFormDetails() {
        // Get the plan parameter from the URL
        var urlParams = new URLSearchParams(window.location.search);
        var planId = urlParams.get('plan');

        // Hide all form containers
        var allContainers = document.querySelectorAll('.form-container');
        allContainers.forEach(function(container) {
            container.style.display = 'none';
        });

        // Display the form for the selected plan
        var selectedContainer = document.getElementById(planId + 'Form');
        if (selectedContainer) {
            selectedContainer.style.display = 'block';
        }
    }

    // Call the function when the page loads
    window.onload = displayFormDetails;
</script>
        
        
        
        
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