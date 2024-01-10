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

// Check if action and ID are set in the URL
if (isset($_GET['action']) && isset($_GET['id'])) {
    $action = $_GET['action'];
    $appointmentId = $_GET['id'];

    // Delete the record if action is 'ignore'
    if ($action === 'ignore') {
        $sql = "DELETE FROM apt WHERE id = $appointmentId";

        if ($conn->query($sql) === TRUE) {
            echo "Record ignored successfully";
            header("Location: apt.php");
        exit();
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }

    // Additional actions can be added here

}

// Close the database connection
$conn->close();
?>