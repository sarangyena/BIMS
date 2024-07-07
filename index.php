<?php
include("connection.php");

// Fetch the current status of all serivces
$query = "SELECT service_name, service_status FROM services";
$result = mysqli_query($con, $query);
$services = [];
while ($row = mysqli_fetch_assoc($result)) {
    $services[$row['service_name']] = $row['service_status'];
}
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Index</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link href="css/maincss.css" rel="stylesheet">
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
        <a class="navbar-brand" href="../BIMS/home.php">
            <img src="images/batangkankaloologo.png" class="logo img-fluid" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item ms-3">
                    <a class="nav-link custom-btn custom-border-btn btn" href="../BIMS/home.php">Home</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-12 text-center mx-auto">
                <h2 class="mb-5">Tulong Serbisyo para sa mga Batang Kankaloo</h2>
            </div>
            <?php if ($services['guarantee_letter']): ?>
                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                    <div class="featured-block d-flex justify-content-center align-items-center">
                        <a href="beneficiary/guaranteeletter.php" class="d-block">
                            <img src="images/icons/guarantee.png" class="featured-block-image img-fluid" alt="">
                            <p class="featured-block-text"><strong>Guarantee</strong> Letter</p>
                        </a>
                    </div>
                </div>
            <?php endif; ?>

            <?php if ($services['medical_assistance']): ?>
                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4" hidden>
                    <div class="featured-block d-flex justify-content-center align-items-center">
                        <a href="beneficiary/medicalassistance.php" class="d-block">
                            <img src="images/icons/medical.png" class="featured-block-image img-fluid" alt="">
                            <p class="featured-block-text"><strong>Medical</strong> Assistance</p>
                        </a>
                    </div>
                </div>
            <?php endif; ?>

            <?php if ($services['burial_assistance']): ?>
                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4" hidden>
                    <div class="featured-block d-flex justify-content-center align-items-center">
                        <a href="beneficiary/burialassistance.php" class="d-block">
                            <img src="images/icons/burial.png" class="featured-block-image img-fluid" alt="">
                            <p class="featured-block-text"><strong>Burial</strong> Assistance</p>
                        </a>
                    </div>
                </div>
            <?php endif; ?>
            <?php if ($services['financial_assistance']): ?>
                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                    <div class="featured-block d-flex justify-content-center align-items-center">
                        <a href="beneficiary/financialassistance.php" class="d-block">
                            <img src="images/icons/education.png" class="featured-block-image img-fluid" alt="">
                            <p class="featured-block-text"><strong>Financial</strong> Assistance</p>
                        </a>
                    </div>
                </div>
            <?php endif; ?>
            <?php if ($services['educational_assistance']): ?>
                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                    <div class="featured-block d-flex justify-content-center align-items-center">
                        <a href="beneficiary/educational.php" class="d-block">
                            <img src="images/icons/education.png" class="featured-block-image img-fluid" alt="">
                            <p class="featured-block-text"><strong>Educational</strong> Assistance</p>
                        </a>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>
</section>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/click-scroll.js"></script>
<script src="js/counter.js"></script>
<script src="js/custom.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
