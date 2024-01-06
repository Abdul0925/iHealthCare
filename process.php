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

// Process form data
if ($_SERVER["REQUEST_METHOD"] == "POST")  {
    $name = $_POST["name"];
    $doctor = $_POST["doctor"];
    $department = $_POST["department"];
    $date = $_POST["date"];
    $phone = $_POST["phone"];
    $message = $_POST["message"];
    $email = $_POST["email"];

    // Insert data into the database
    

    $sql = "INSERT INTO apt (name, email, date, phone, department, doctor, message)
    VALUES ('$name', '$email', '$date', '$phone', '$department', '$doctor', '$message');";
    if ($conn->query($sql) === TRUE) {
        echo "Data inserted successfully";
        // Redirect to the home page after successful insertion
        header("Location: index.html");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    



    
}

// Close the database connection
$conn->close();
?>
