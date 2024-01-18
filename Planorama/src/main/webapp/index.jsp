<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Event Planner</title>

    
  
   <!--
      <link rel="preconnect" href="https://fonts.googleapis.com">
   
     -->
<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="styles/style.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
    .directors-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
        justify-content: center;
    }

    .director-card {
        text-align: center;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
    }

    .director-card img {
        margin-bottom: 10px;
    }
</style>
</head>
<body>

	<div class="navbar bg-dark container-fluid" >
    <img src="assets/logo.png" alt="" class="logo">
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="#eventTypes">Events</a></li>
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


        <div class="banner">
        <div class="content">
        	<h1>Planorama</h1>
            <p class="lead"><b>Where Imagination Meets Precision: Crafting Unforgettable Events Just for You!</b></p>

            <div>
                <button type="button"><span></span><a href="aboutUs.jsp">LEARN MORE</a></button>
            </div>
        </div>
            
        </div>
    
    
    
    <br><br><br>
    <div class="eventTypes" id="eventTypes">
    	<div class="types-row">
    		<div class="types-col">
    		<h1><a href="parties.jsp">Parties</a></h1>
    		<br>
    		<p>Transform ordinary occasions into extraordinary experiences with our bespoke party planning, where every detail is designed to dazzle and delight.</p>
    		
    	</div>
    	
    	<div class="types-col">
    		<h1><a href="weddings.jsp">Weddings</a></h1>
    		<br>
    		<p>Craft your perfect day with our expert guidance, turning your dream wedding into an enchanting reality filled with love, elegance, and cherished moments.</p>
    		
    	</div>
    	
    	<div class="types-col">
    		<h1><a href="corporsteEvents.jsp">Corporate Events</a></h1>
    		<br>
    		<p style="margin-top: -50px;">Elevate your professional gatherings to new heights with our tailored corporate event solutions, ensuring seamless execution and impactful experiences for your business.</p>
    		
    	</div>
    	</div>
    	
    	<br>
    </div> 
    
    <div class="gallery container">
    
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
    
    <!--  
   <div class="container">
        <div class="directorDetailsSection">
            <h1>Introducing Our Event Wizards and Planners</h1>

            <div class="row">
                <div class="col-md-6 custom-height">
                    <div class="d-flex justify-content-center align-items-center">
                        <img src="assets/director.png" class="img-fluid" alt="Director 1" width="150px">
                    </div>
                </div>
                <div class="col-md-6 custom-height">
                    <div class="d-flex justify-content-center align-items-center">
                        <p>In the world of events, imagination fuels innovation. Let's craft unforgettable experiences that surpass expectations.</p>
                    </div>
                </div>

                <div class="col-md-6 custom-height">
                    <div class="d-flex justify-content-center align-items-center">
                        <p>In the world of events, imagination fuels innovation. Let's craft unforgettable experiences that surpass expectations.</p>
                    </div>
                </div>
                <div class="col-md-6 custom-height">
                    <div class="d-flex justify-content-center align-items-center">
                        <img src="assets/director.png" class="img-fluid" alt="Director 1" width="150px">
                    </div>
                </div>

                <div class="col-md-6 custom-height">
                    <div class="d-flex justify-content-center align-items-center">
                        <img src="assets/director.png" class="img-fluid" alt="Director 1" width="150px">
                    </div>
                </div>
                <div class="col-md-6 custom-height">
                    <div class="d-flex justify-content-center align-items-center">
                        <p>In the world of events, imagination fuels innovation. Let's craft unforgettable experiences that surpass expectations.</p>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    
    -->
    <!-- ============================================================================================ -->
    <div class="container">
    <div class="directorDetailsSection">
        <h1 class="text-center mb-4">Introducing Our Event Wizards and Planners</h1>

        <div class="directors-grid">

            <!-- Director 1 -->
            <div class="director-card">
                <img src="assets/director.png" alt="Director 1" class="img-fluid" width="150px">
                <p>In the world of events, imagination fuels innovation. Let's craft unforgettable experiences that surpass expectations.</p>
            	<strong>CEO - Hansanie Neththasinghe</strong>
            </div>

            <!-- Director 2 -->
            <div class="director-card">
                <p>In the world of events, imagination fuels innovation. Let's craft unforgettable experiences that surpass expectations.</p>
                <strong>CEO - Hansanie Neththasinghe</strong>
                <img src="assets/director.png" alt="Director 2" class="img-fluid" width="150px">
            </div>

            <!-- Director 3 -->
            <div class="director-card">
                <img src="assets/director.png" alt="Director 3" class="img-fluid" width="150px">
                <p>In the world of events, imagination fuels innovation. Let's craft unforgettable experiences that surpass expectations.</p>
           		<strong>CEO - Hansanie Neththasinghe</strong>
            </div>

        </div>
    </div>
</div>

<br><br>

  <!-- Contact Us Banner -->




  
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
                  <li class="list-inline-item"><a href="#eventTypes">Events</a></li>
                  <li class="list-inline-item"><a href="gallery.jsp">Gallery</a></li>
                  <li class="list-inline-item"><a href="aboutUs.jsp">About Us</a></li>
                  <li class="list-inline-item"><a href="contactUs.jsp">Contact Us</a></li>
              </ul>
          </div>
      </div>
  </div>
</footer>
  
  
    
     
    <script src="https://unpkg.com/scrollreveal"></script>
    <script>
        // Define a function named scrollReveal
        function scrollReveal() {
            // Create a ScrollReveal instance and assign it to the window object
            window.sr = ScrollReveal();

            // Reveal elements with the class 'types-col' when they come into view
            sr.reveal('.types-col', {
                duration: 600,
                distance: '20px',
                easing: 'ease-out',
                origin: 'bottom',
                reset: true,
                scale: 1,
                viewFactor: 0,
                afterReveal: function (el) {
                    // Callback function to execute after reveal
                    var children = el.querySelectorAll('h3, p');
                    sr.reveal(children, {
                        duration: 500,
                        scale: 1,
                        distance: '20px',
                        origin: 'bottom',
                        reset: true,
                        easing: 'ease-out',
                        viewFactor: 1,
                    }, 75);
                }
            }, 150);
        }

        // Invoke the scrollReveal function once the DOM content is loaded
        document.addEventListener('DOMContentLoaded', scrollReveal);
    
        
     
        
        </script>

    
    
</body>
</html>