<?php
include("../connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "UPDATE medical SET mstatus = 'Approved' WHERE id = $id";
    mysqli_query($con, $query);
    header("Location: ../cos/cosmedical.php"); // Redirect back to the main page after approval
}
?>