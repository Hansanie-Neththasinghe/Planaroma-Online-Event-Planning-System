<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 <link rel="stylesheet" href="styles/style.css">
 <link rel="stylesheet" href="styles/parties.css">
 
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<title>Weddings</title>
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


<h1 class="parties-heading">Weddings</h1>
	<div class="container lead" >
		<p>We specialize in crafting enchanting experiences for a spectrum of wedding themes. Whether you dream of an opulent 'Fairytale' affair, a serene beachside 'Bohemian Chic' celebration, a classic and elegant 'Vintage Romance,' or a vibrant 'Tropical Paradise' extravaganza, our team excels at translating your vision into a reality.</p>

		<div id="carouselIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselIndicators" data-slide-to="1"></li>
				<li data-target="#carouselIndicators" data-slide-to="2"></li>
				<li data-target="#carouselIndicators" data-slide-to="3"></li>
				<li data-target="#carouselIndicators" data-slide-to="4"></li>
				<li data-target="#carouselIndicators" data-slide-to="5"></li>
			</ol>
			<div class="carousel-inner ">
				<div class="carousel-item ">
                	<img src="assets/img1.JPG" class="d-block w-100 img-fluid" alt="Image 1" >
				</div>
				
				<div class="carousel-item">
                	<img src="assets/img2.JPG" class="d-block w-100 img-fluid" alt="Image 2">
				</div>
				
				<div class="carousel-item">
                	<img src="assets/img7.JPG" class="d-block w-100 img-fluid" alt="Image 3" style="height: 580px;">
				</div>
				
				<div class="carousel-item active">
                	<img src="assets/img4.JPG" class="d-block w-100 img-fluid" alt="Image 4">
				</div>
				
				<div class="carousel-item">
                	<img src="assets/img5.JPG" class="d-block w-100 img-fluid" alt="Image 5">
				</div>
				
				<div class="carousel-item">
                	<img src="assets/img6.JPG" class="d-block w-100 img-fluid" alt="Image 6">
				</div>
                  
                 
			</div>
			<a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
		</div>

	</div>
	
	<!--  End of carousel -->
	<div class="container">
	<div class="party-services">
		<h2>Services Offered</h2>
			<ul>
				<li><b>Personalized Invitations: </b>&nbsp Exquisite invitations crafted to reflect your chosen theme and capture the essence of your special day.</li>
				<li><b>Venue Decoration: </b>&nbsp FFrom breathtaking floral arrangements to intricate décor elements, we transform spaces to encapsulate the essence of your chosen theme, ensuring an ethereal ambiance.</li>
				<li><b>Entertainment Options: </b>&nbsp Curate magical moments with our array of musical talents, live bands, enchanting performers, and DJs to elevate the atmosphere and keep your guests enthralled throughout the celebration.</li>
				<li><b>Catering Options: </b>&nbsp Delight your guests with a diverse selection of culinary experiences, including tailored menus, gourmet courses, and fusion cuisines that cater to diverse palates.</li>
				<li><b>Party Favors: </b>&nbsp Unique tokens of appreciation for your guests, leaving a lasting impression and expressing gratitude for their presence on your special day.</li>
			</ul>
	</div>
	</div>
	
	<br>
	
	
	<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="card text-center mb-4">
                <div class="card-header">
                    <h3 class="card-title">Essential</h3>
                </div>
                <div class="card-body">
                    <h4 class="card-title">$999</h4>
                    <p class="card-text">Perfect for intimate weddings</p>
                    <ul class="list-unstyled">
                        <li>Basic Venue Decoration</li>
                        <li>Standard Catering Menu</li>
                        <li>Live Band or DJ</li>
                        <li>Standard Photography</li>
                    </ul>
                    <button class="btn btn-warning" id="wedding-essential" onclick="redirectToPlan('wessential')">Select Plan</button>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card text-center mb-4">
                <div class="card-header">
                    <h3 class="card-title">Premium</h3>
                </div>
                <div class="card-body">
                    <h4 class="card-title">$2999</h4>
                    <p class="card-text">Great for medium-sized weddings</p>
                    <ul class="list-unstyled">
                        <li>Enhanced Venue Decoration</li>
                        <li>Customized Catering Menu</li>
                        <li>Live Band and DJ Combo</li>
                        <li>Professional Photography & Videography</li>
                    </ul>
                    <button class="btn btn-warning" id="wedding-premium" onclick="redirectToPlan('wpremium')">Select Plan</button>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card text-center mb-4">
                <div class="card-header">
                    <h3 class="card-title">Luxury</h3>
                </div>
                <div class="card-body">
                    <h4 class="card-title">$5999</h4>
                    <p class="card-text">Perfect for extravagant weddings</p>
                    <ul class="list-unstyled">
                        <li>Luxurious Venue Decoration</li>
                        <li>Exquisite Customized Menu</li>
                        <li>Live Band, DJ & String Quartet</li>
                        <li>Top-tier Photography & Cinematography</li>
                    </ul>
                    <button class="btn btn-warning" id="wedding-luxury" onclick="redirectToPlan('wluxury')">Select Plan</button>
                </div>
            </div>
        </div>
    </div>
</div>
	



<div class="gallery">
    
    	<ul class="gallery">
  <li class="gallery"> <img class="gallery" src="assets/party1.jpg" alt="" /></li>
  <li class="gallery"> <img class="gallery" src="assets/party2.jpg" alt="" /></li>
  <li class="gallery"> <img class="gallery" src="assets/party3.JPG" alt="" /></li>
  <li class="gallery"> <img class="gallery" src="assets/party4.jpg" alt="" /></li>
  <li class="gallery"> <img class="gallery" src="assets/party5.JPG" alt="" /></li>
  <li class="gallery"> <img class="gallery" src="assets/party6.JPG" alt="" /></li>
  <li class="gallery"> <img class="gallery" src="assets/party7.jpg" alt="" /></li>
  <li class="gallery"> <img class="gallery" src="assets/party8.jpg" alt="" /></li>
  <li class="gallery"> <img class="gallery" src="assets/party9.JPG" alt="" /></li>
  </ul>
    
    </div>




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



<script>
    // Function to redirect to plan.jsp with a parameter
    function redirectToPlan(planId) {
        window.location.href = 'plan.jsp?plan=' + planId;
    }
</script>


<!-- Bootstrap JS and jQuery (for Bootstrap functionalities) -->
          <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
          


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>




</body>
</html>