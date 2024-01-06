<?php
// Database configuration
$host = "localhost";
$username = "root"; // change this to your MySQL username
$password = ""; // change this to your MySQL password
$database = "g4g";

// Create a database connection
$conn = new mysqli($host, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to sanitize user input
function sanitizeInput($input) {
    return htmlspecialchars(trim($input));
}
//session code
session_start();

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get user input
    $username = sanitizeInput($_POST["username"]);
    $password = sanitizeInput($_POST["password"]);

    // Query the database for the user
    $query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
    $result = $conn->query($query);

    if ($result->num_rows == 1) {
        // Login successful
        $_SESSION['username'] = $username;
        echo "Login successful";
        header("Location: temp.php");
        exit();
    } else {
        // Login failed
        echo "Invalid username or password";
    }
}

// Close the database connection
$conn->close();
?>
