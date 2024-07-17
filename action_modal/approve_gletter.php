<?php
include("../connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "UPDATE guarantee SET gstatus = 'Approved' WHERE id = $id";
    mysqli_query($con, $query);
    header("Location: ../cos/cosguarantee.php"); // Redirect back to the main page after approval
}
?>