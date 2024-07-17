<?php
include("../connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['approve_selected'])) {
        $selectedItems = $_POST['selected_ids'];
        foreach ($selectedItems as $itemId) {
            $query = "UPDATE guarantee SET gstatus = 'Approved' WHERE id = $itemId";
            mysqli_query($con, $query);
        }
    } elseif (isset($_POST['reject_selected'])) {
        $selectedItems = $_POST['selected_ids'];
        foreach ($selectedItems as $itemId) {
            $query = "UPDATE guarantee SET gstatus = 'Rejected' WHERE id = $itemId";
            mysqli_query($con, $query);
        }
    }

    header("Location: ../cos/cosguarantee.php"); // Redirect back to the main page after bulk action
}
?>