<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>

 <link rel="stylesheet" href="styles/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

 <style>
    /* Add custom styles here */
    /* For demonstration, some basic styling is included */
    body {
      background-color: #f8f9fa;
      color: #333;
      font-family: Arial, sans-serif;
      padding-top: 20px;
    }
    .about-section {
      padding: 50px 0;
    }
    .about-heading {
      font-size: 28px;
      font-weight: bold;
      margin-bottom: 30px;
      text-align: center;
    }
    .about-content {
      background-color: #fff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .service-item {
      margin-bottom: 20px;
    }
    .service-item h4 {
      font-weight: bold;
      margin-bottom: 10px;
    }
    .service-item p {
      margin-bottom: 0;
    }
  </style>



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
        
        
        
        
        
        
  <div class="container">
    <div class="about-section">
      <div class="row">
        <div class="col-lg-12">
          <h2 class="about-heading">Welcome to Planaroma</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="about-content">
            <p class="text-center">At Planaroma, we understand that every event is a unique narrative waiting to unfold, and our mission is to transform those narratives into unforgettable experiences. With a relentless passion for innovation and a meticulous eye for detail, we specialize in crafting seamless and extraordinary events tailored to our clients' visions.</p>

            <h3 class="mt-4 mb-3">Our Vision</h3>
            <p>Our vision at Planaroma is to redefine the landscape of event planning by blending creativity, technology, and unparalleled customer service. We aim to be the catalysts that bring dreams to life, curating moments that linger in memories long after the event concludes.</p>

            <h3 class="mt-4 mb-3">What Sets Us Apart</h3>
            <div class="service-item">
              <h4>Innovative Approach</h4>
              <p>We pride ourselves on our ability to fuse cutting-edge technology with timeless creativity. From conceptualization to execution, we harness the latest tools and trends to craft immersive experiences.</p>
            </div>
            <div class="service-item">
              <h4>Tailored Solutions</h4>
              <p>Understanding the uniqueness of each event, we offer bespoke solutions that cater to diverse needs, ensuring every detail reflects the client's personality and objectives.</p>
            </div>
            <div class="service-item">
              <h4>Dedicated Team</h4>
              <p>Our team comprises passionate individuals dedicated to surpassing expectations. Their expertise, professionalism, and commitment ensure flawless execution at every stage of event planning.</p>
            </div>

            <h3 class="mt-4 mb-3">Our Services</h3>
            <div class="service-item">
              <h4>Comprehensive Planning</h4>
              <p>Whether it's a grand corporate gala, an intimate wedding affair, or a themed celebration, our comprehensive planning services cover every aspect, ensuring a seamless and stress-free event.</p>
            </div>
            <div class="service-item">
              <h4>Technological Integration</h4>
              <p>Leveraging state-of-the-art event planning software, we provide clients with real-time updates, interactive planning tools, and 24/7 access to streamline communication and collaboration.</p>
            </div>
            <div class="service-item">
              <h4>Personalized Consultation</h4>
              <p>Our dedicated consultants work closely with clients, understanding their aspirations and desires, to translate their vision into an exceptional and meticulously executed event.</p>
            </div>

            <h3 class="mt-4 mb-3">Our Commitment</h3>
            <p>At Planaroma, we are committed to fostering trust, integrity, and transparency with our clients. From the initial brainstorming session to the final farewells, we prioritize clear communication, ensuring that clients remain informed and empowered throughout the planning journey.</p>

            <h3 class="mt-4 mb-3">Why Choose Planaroma?</h3>
            <p>Unwavering Dedication, Impeccable Execution, and Memorable Experiences.</p>

            <h3 class="mt-4 mb-3">Join Us in Creating Timeless Memories</h3>
            <p>Partner with Planaroma and embark on a journey to transform your event dreams into a breathtaking reality. Let's collaborate to craft moments that will be cherished for a lifetime.</p>

            <div class="contact-info">
              <h3>Contact Us</h3>
              <p>For inquiries or consultations, reach out to us:</p>
              <p>Email: info@planaroma.com</p>
              <p>Phone: +1 (123) 456-7890</p>
            </div>
          </div>
        </div>
      </div>
    </div>
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


<!-- Bootstrap JS and jQuery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<!-- Bootstrap JS and jQuery (for Bootstrap functionalities) 
          <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
          


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

-->

</body>
</html>