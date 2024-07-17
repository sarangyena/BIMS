<?php
include("../../connection.php");

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['guarantee', 'medical', 'burial', 'financial', 'educational'])) {
    $service = $_GET['guarantee', 'medical', 'burial', 'financial', 'educational'];

    $validServices = ['guarantee', 'medical', 'burial', 'financial', 'educational'];
    if (!in_array($service, $validServices)) {
        echo json_encode(['success' => false, 'message' => 'Invalid service']);
        exit;
    }

    $query = "SELECT pnum FROM $service WHERE status = 'Approved'";
    $result = $connection->query($query);

    if ($result && $result->num_rows > 0) {
        $phoneNumbers = [];
        while ($row = $result->fetch_assoc()) {
            $phoneNumbers[] = $row['pnum'];
        }
        echo json_encode(['success' => true, 'phone_numbers' => $phoneNumbers]);
    } else {
        echo json_encode(['success' => false, 'message' => 'No phone numbers found']);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request']);
}
?>
