<?php
include("../connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "UPDATE burial SET bstatus = 'Rejected' WHERE id = $id";
    mysqli_query($con, $query);
    header("Location: ../cos/cosburial.php"); // Redirect back to the main page after rejection
}
?>