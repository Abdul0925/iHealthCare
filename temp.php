<?php
$servername = "localhost"; // change this to your MySQL server name
$username = "root"; // change this to your MySQL username
$password = ""; // change this to your MySQL password
$dbname = "g4g";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the 'apt' table
$sql = "SELECT * FROM apt";
$result = $conn->query($sql);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointments</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .action-buttons {
            display: flex;
            gap: 5px;
        }

        .green-button {
            background-color: green;
        }

        .red-button {
            background-color: red;
        }


    /* Add more styles as needed */
 

    </style>
    <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

 
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!--   Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">



</head>
<body>
<div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">greekforgreeks@gmail.com</a>
        <i class="bi bi-phone"></i> +91 XXXX XXXX     </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="404.html" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="404.html" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="404.html" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="404.html" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </div>
   <!-- ======= Header ======= -->
   <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">GreekForGreeks</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Appointments</a></li>
          <li><a class="nav-link scrollto" href="#about">Subscription</a></li>
          
        
      </nav>
      <!-- .navbar -->

      <a href="logout.php" class="appointment-btn scrollto"><span class="d-none d-md-inline">Log</span> Out</a>


    </div>
  </header>


  <div class="container">
  <div class="text-center" style="padding: 25px;" ><button style="background-color: green; color: white;"type="submit" value="submit">Make an Appointment</button></div>
  <h2 padding>Appointments</h2>
    
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Date</th>
            <th>Phone</th>
            <th>Department</th>
            <th>Doctor</th>
            <th>Message</th>
            <th>Action</th>
        </tr>
        <h2>Appointments</h2>
    
    </div>

   
  

 


  


    

 
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["id"] . "</td>";
                echo "<td>" . $row["name"] . "</td>";
                echo "<td>" . $row["email"] . "</td>";
                echo "<td>" . $row["date"] . "</td>";
                echo "<td>" . $row["phone"] . "</td>";
                echo "<td>" . $row["department"] . "</td>";
                echo "<td>" . $row["doctor"] . "</td>";
                echo "<td>" . $row["message"] . "</td>";
                echo "<td class='action-buttons'>";
                echo "<button class='btn btn-success' onclick='approveAppointment(" . $row["id"] . ")'>Approve</button>";
                echo "<button class='btn btn-danger' onclick='ignoreAppointment(" . $row["id"] . ")'>Ignore</button>";
                echo "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='8'>No appointments found</td></tr>";
        }

        
        
        ?>

    </table>

    <script>
        function approveAppointment(id) {
            // You can implement the logic to handle approval in PHP
            window.location.href = 'process.php?action=approve&id=' + id;
        }

        function ignoreAppointment(id) {
            // You can implement the logic to handle ignoring in PHP
            window.location.href = 'process.php?action=ignore&id=' + id;
        }
    </script>
     <footer id="footer">

<div class="footer-top">
  <div class="container">
    <div class="row">

      <div class="col-lg-3 col-md-6 footer-contact">
        <h3>GreekForGreeks</h3>
        <p>
          Mumbai <br>
          Maharashtra<br>
          INDIA <br><br>
          <strong>Phone:</strong> +91 XXXXX XXXXX <br>
          <strong>Email:</strong> greekforgreeks@gmail.com<br>
        </p>
      </div>

      <div class="col-lg-2 col-md-6 footer-links">
        <h4>Useful Links</h4>
        <ul>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
        </ul>
      </div>
     

    </div>
  </div>
</div>

<div class="container d-md-flex py-4">

  <div class="me-md-auto text-center text-md-start">
    <div class="copyright">
      &copy; Copyright <strong><span>GreekForGreeks</span></strong>.</br> All Rights Reserved 2024-2030
    </div>
    <div class="credits">
     
    </div>
  </div>
  <div class="social-links text-center text-md-right pt-3 pt-md-0">
    <a href="404.html" class="twitter"><i class="bx bxl-twitter"></i></a>
    <a href="404.html" class="facebook"><i class="bx bxl-facebook"></i></a>
    <a href="404.html" class="instagram"><i class="bx bxl-instagram"></i></a>
    <a href="404.html" class="google-plus"><i class="bx bxl-skype"></i></a>
    <a href="404.html" class="linkedin"><i class="bx bxl-linkedin"></i></a>
  </div>
</div>
</footer>
<!-- End Footer -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

<!--   Main JS File -->
<script src="assets/js/main.js"></script>
   
  






</body>



<?php
// Close the database connection
$conn->close();
?>
