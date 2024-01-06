<?php
// Database configuration
$servername = "localhost"; // change this to your MySQL server name
$username = "root"; // change this to your MySQL username
$password = ""; // change this to your MySQL password
$dbname = "g4g";


// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate and sanitize the email input
    $email = filter_var($_POST["email"], FILTER_SANITIZE_EMAIL);

    // Insert the email into the database
    $sql = "INSERT INTO subscribe (email) VALUES ('$email')";

    if ($conn->query($sql) === TRUE) {
        echo "Email successfully stored in the database";
        header("Location: index.html");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close the database connection
$conn->close();
?>


