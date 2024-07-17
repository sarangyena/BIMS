<?php
include("../connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "UPDATE financial SET fstatus = 'Rejected' WHERE id = $id";
    mysqli_query($con, $query);
    header("Location: ../cos/cosfinancial.php"); // Redirect back to the main page after rejection
}
?>