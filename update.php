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

// Function to fetch data by ID
function getDataById($conn, $id) {
    $sql = "SELECT * FROM apt WHERE id = $id";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        return $result->fetch_assoc();
    } else {
        return null;
    }
}

// Check if an ID is provided in the URL
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Fetch data by ID
    $record = getDataById($conn, $id);
} else {
    $record = null;
}

// Handle form submission for updating data
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST["id"];
    $name = $_POST["name"];
    $email = $_POST["email"];
    $date = $_POST["date"];
    $phone = $_POST["phone"];
    $department = $_POST["department"];
    $doctor = $_POST["doctor"];
    $message = $_POST["message"];

    // Update data in the database
    $sql = "UPDATE apt SET
            name = '$name',
            email = '$email',
            date = '$date',
            phone = '$phone',
            department = '$department',
            doctor = '$doctor',
            message = '$message'
            WHERE id = $id";

    if ($conn->query($sql) === TRUE) {
        $message = "Data updated successfully";
        header("Location: apt.php");
        exit();
    } else {
        $message = "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close the database connection
$conn->close();
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
</html>