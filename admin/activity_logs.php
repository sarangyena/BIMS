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

?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Activity Logs</title>
  <!-- CSS FILES -->
  <link href="../css/bootstrap.min.css" rel="stylesheet">
  <link href="../css/bootstrap-icons.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <link href="../css/maincss.css" rel="stylesheet">
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
          <h2 class="mb-5"><b>Activity Logs</b></h2>
        </div>
      </div>
    </div>
  </section>

  <div class="container">
    <div class="table-responsive">
      <table class="table table-hover">
        <thead class="table-light">
          <tr>
            <th>USERNAME</th>
            <th>USER ROLE</th>
            <th>ACTION</th>
            <th>DATE</th>
          </tr>
        </thead>

        <tbody class="table-group-divider">
          <?php
          $result = mysqli_query($con, "SELECT * FROM logs ORDER BY logdate DESC");
          if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
          ?>
              <tr>
                <td><?php echo $row['username'] ?></td>
                <td><?php echo $row['usertype'] ?></td>
                <td><?php echo $row['action'] ?></td>
                <td><?php echo $row['logdate'] ?></td>
              </tr>
          <?php
            }
          }
          ?>
        </tbody>
      </table>
    </div>
  </div>
</body>

</html>