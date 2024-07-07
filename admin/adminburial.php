<?php

session_start();

include("../connection.php");
include("../functions.php");

$user_data = check_login($con);

if ($_SESSION['usertype'] != 'admin') {
    header("location: ../logout.php");
}

$servername = "localhost";
$username = "root";
$password = "";
$database = "bims_db";

$connection = new mysqli($servername, $username, $password, $database);

if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get search keyword and date range
    $search = isset($_POST['search']) ? $_POST['search'] : '';
    $search = mysqli_real_escape_string($connection, $search);

    $startDate = isset($_POST['start_date']) ? $_POST['start_date'] : '';
    $endDate = isset($_POST['end_date']) ? $_POST['end_date'] : '';

    // Check if date fields are empty
    $dateCondition = "";
    if (!empty($startDate) && !empty($endDate)) {
        $dateCondition = " AND datecreated BETWEEN '$startDate' AND '$endDate'";
    }

    // Construct SQL query
    $sql = "SELECT * FROM burial 
            WHERE (fname LIKE '%$search%' 
            OR mname LIKE '%$search%' 
            OR lname LIKE '%$search%')
            $dateCondition";

    $result = $connection->query($sql);

    if (!$result) {
        die("Invalid query: " . $connection->error);
    }
} else {
    // If no search, get all data
    $sql = "SELECT * FROM burial";
    $result = $connection->query($sql);

    if (!$result) {
        die("Invalid query: " . $connection->error);
    }
}

// Function to export selected IDs to Excel
function exportSelectedToExcel($selectedIds, $connection)
{
    // Set headers for Excel file
    header("Content-Type: application/vnd.ms-excel");
    header("Content-Disposition: attachment; filename=\"AdminBurial_data.xls\"");

    // Output HTML content
    echo "<style>
            table {
                margin: auto; /* Center the table horizontally */
            }
            th, td {
                text-align: center; /* Center align content within cells */
            }
          </style>";

    echo "<table>";
    echo "<tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Middle Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>Age</th>
            <th>Birth Date</th>
            <th>Brgy</th>       
            <th>Contact Number</th>
            <th>Assistance Needed</th>
            <th>Amount</th>
            <th>Status</th>
            <th>Created At</th>
          </tr>";
    foreach ($selectedIds as $id) {
        $id = intval($id);
        $stmt = $connection->prepare("SELECT * FROM burial WHERE id = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['fname'] . "</td>";
        echo "<td>" . $row['mname'] . "</td>";
        echo "<td>" . $row['lname'] . "</td>";
        echo "<td>" . $row['address'] . "</td>";
        echo "<td>" . $row['age'] . "</td>";
        echo "<td>" . $row['bday'] . "</td>";
        echo "<td>" . $row['barangay'] . "</td>";
        echo "<td>" . $row['pnum'] . "</td>";
        echo "<td>" . $row['burial'] . "</td>";
        echo "<td>" . $row['amount'] . "</td>";
        echo "<td>" . $row['bstatus'] . "</td>";
        echo "<td>" . $row['datecreated'] . "</td>";
        echo "</tr>";
        $stmt->close();
    }
    echo "</table>";
}

// Export data if requested
if (isset($_POST['export_excel'])) {
    $selectedIds = isset($_POST['selected_ids']) ? $_POST['selected_ids'] : array();
    exportSelectedToExcel($selectedIds, $connection);
    exit; // Stop further execution
}

?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin Burial Beneficiaries</title>
    <!-- CSS FILES -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="../css/maincss.css" rel="stylesheet">
    <link href="../css/adminstyle.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body>
    <header class="site-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12 d-flex flex-wrap">
                    <p class="d-flex me-4 mb-0"></p>
                    <p class="d-flex mb-0"></p>
                </div>
                <div class="col-lg-3 col-12 ms-auto d-lg-block d-none">
                    <ul class="social-icon"></ul>
                </div>
            </div>
        </div>
    </header>
    <nav class="navbar navbar-expand-lg bg-light shadow-lg">
        <div class="container">
            <a class="navbar-brand" href="admin.php">
                <img src="../images/batangkankaloologo.png" class="logo img-fluid" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item ms-3">
                        <a class="nav-link custom-btn custom-border-btn btn" href="../admin/admin.php">Return</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-12 text-center mx-auto">
                    <h2 class="mb-5"><b>List of Burial Beneficiaries</b></h2>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <!-- Search Form -->
        <div class="search-container">
            <form action="" method="post" class="search-form">
                <input type="text" name="search" id="search" class="search-input" placeholder="Enter a name">
                <label for="start_date">Start Date:</label>
                <input type="date" name="start_date" id="start_date" class="search-input">
                <label for="end_date">End Date:</label>
                <input type="date" name="end_date" id="end_date" class="search-input">
                <input type="submit" value="Search" class="search-button btn btn-primary btn-sm">
            </form>
        </div>

        <form action="" method="post">
            <div>
                <button type="submit" name="export_excel" class="btn btn-excel">Export Excel File</button>
            </div>
            <br>
            <div>
                <button type="button" id="selectAll" class="btn btn-primary btn-sm">Select All</button>
                <button type="button" id="unselectAll" class="btn btn-secondary btn-sm">Unselect All</button>
            </div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Select</th>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>Address</th>
                        <th>Age</th>
                        <th>Birth Date</th>
                        <th>Brgy</th>
                        <th>Contact Number</th>
                        <th>Assistance Needed</th>
                        <th>Amount</th>
                        <th>Status</th>
                        <th>Created At</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Loop through the results
                    while ($row = $result->fetch_assoc()) {
                        echo "
                        <tr>
                            <td><input type='checkbox' name='selected_ids[]' value='" . $row['id'] . "'></td>
                            <td>$row[id]</td>
                            <td>$row[fname]</td>
                            <td>$row[mname]</td>
                            <td>$row[lname]</td>
                            <td>$row[address]</td>
                            <td>$row[age]</td>
                            <td>$row[bday]</td>
                            <td>$row[barangay]</td>
                            <td>$row[pnum]</td>
                            <td>$row[burial]</td>
                            <td>$row[amount]</td>
                            <td>$row[bstatus]</td>
                            <td>$row[datecreated]</td>
                            <td>
                
                <a class='btn btn-primary btn-sm' href='../action_modal/editburial.php?id=$row[id]'><i class='fa-solid fa-pen-to-square fa-xl' style='color: #ffffff;''></i></a>

 
                <a class='btn btn-danger btn-sm' href='../action_modal/deleteburial.php?id=$row[id]' onclick='return confirmDelete();'><i class='fa-solid fa-trash fa-xl' style='color: #ffffff;'></i></a>

                        </tr>
                      ";
                    }
                    ?>
                </tbody>
            </table>
        </form>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            document.getElementById('selectAll').addEventListener('click', function() {
                var checkboxes = document.querySelectorAll('input[type="checkbox"]');
                checkboxes.forEach(function(checkbox) {
                    checkbox.checked = true;
                });
            });

            document.getElementById('unselectAll').addEventListener('click', function() {
                var checkboxes = document.querySelectorAll('input[type="checkbox"]');
                checkboxes.forEach(function(checkbox) {
                    checkbox.checked = false;
                });
            });
        });


        function confirmDelete() {
            return confirm("Are you sure you want to delete this?");
        }
    </script>
</body>

</html>

<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "bims_db";

$connection = new mysqli($servername, $username, $password, $database);

// Function to terminate data after 3 months
function terminateData($connection)
{
    $currentDate = date('Y-m-d');
    $expiryDate = date('Y-m-d', strtotime('-3 months'));

    $sql = "DELETE FROM burial WHERE datecreated < '$expiryDate'";

    if ($connection->query($sql) === TRUE) {
    } else {
        echo "Error terminating data: " . $connection->error;
    }
}

// Call the function to terminate data
terminateData($connection);


?>