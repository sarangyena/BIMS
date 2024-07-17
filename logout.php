<?php
session_start();

include("connection.php");

if (isset($_SESSION['user_id']) || isset($_SESSION['username'])) {
    $username = $_SESSION['username'];
    $usertype = $_SESSION['usertype'];

    // log action
    $action = 'User ' . $username . ' logged out successfully';
    $action_query = "INSERT INTO logs (username, usertype, action, logdate) VALUES ('$username', '$usertype', '$action', NOW())";

    if (mysqli_query($con, $action_query)) {
        unset($_SESSION['user_id']);
        unset($_SESSION['username']);
    } else {
        echo "Error: " . mysqli_error($con);
        die();
    }
}
header("location: login.php");
die();
?>