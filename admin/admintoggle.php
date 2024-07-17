<?php
session_start();
include("../connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $services = [
        'guarantee_letter' => isset($_POST['guarantee_letter']) ? 1 : 0,
        'financial_assistance' => isset($_POST['financial_assistance']) ? 1 : 0,
        'educational_assistance' => isset($_POST['educational_assistance']) ? 1 : 0,
        'tesda_scholarship' => isset($_POST['tesda_scholarship']) ? 1 : 0,
        'medical_mission' => isset($_POST['medical_mission']) ? 1 : 0,
        'medical_mission' => isset($_POST['kda_bkda']) ? 1 : 0,
    ];

    $updateQuery = "UPDATE services SET service_status = CASE service_name
                      WHEN 'guarantee_letter' THEN ?
                      WHEN 'financial_assistance' THEN ?
                      WHEN 'educational_assistance' THEN ?
                      WHEN 'tesda_scholarship' THEN ?
                      WHEN 'medical_mission' THEN ?
                      WHEN 'kda_bkda' THEN ?
                      END";

    $stmt = $con->prepare($updateQuery);
    $stmt->bind_param('iiiii', 
                      $services['guarantee_letter'],
                      $services['financial_assistance'],
                      $services['educational_assistance'],
                      $services['tesda_scholarship'],
                      $services['medical_mission'],
                      $services['kda_bkda']
                     );
    $stmt->execute();
    $stmt->close();

    header("Location: admintoggle.php");
    exit;
}

$query = "SELECT service_name, service_status FROM services";
$result = $con->query($query);
$services = [];
while ($row = $result->fetch_assoc()) {
    $services[$row['service_name']] = $row['service_status'];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Admin Dashboard Toggle">
    <meta name="author" content="">
    <title>Admin Toggle</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-icons.css" rel="stylesheet">
    <link href="../css/maincss.css" rel="stylesheet">
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
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col-12">
                    <h2 class="mb-5 text-center"><b>Admin Dashboard Toggle</b></h2>
                    <form method="post" class="text-center">
                        <div class="form-check form-switch mb-3 text-start d-flex justify-content-center align-items-center">
                            <input class="form-check-input me-2" type="checkbox" name="guarantee_letter" id="guarantee_letter" <?php if ($services['guarantee_letter']) echo 'checked'; ?>>
                            <label class="form-check-label" for="guarantee_letter">Guarantee Letter</label>
                        </div>

                        <div class="form-check form-switch mb-3 text-start d-flex justify-content-center align-items-center">
                            <input class="form-check-input me-2" type="checkbox" name="financial_assistance" id="financial_assistance" <?php if ($services['financial_assistance']) echo 'checked'; ?>>
                            <label class="form-check-label" for="financial_assistance">Financial Assistance</label>
                        </div>

                        <div class="form-check form-switch mb-3 text-start d-flex justify-content-center align-items-center">
                            <input class="form-check-input me-2" type="checkbox" name="educational_assistance" id="educational_assistance" <?php if ($services['educational_assistance']) echo 'checked'; ?>>
                            <label class="form-check-label" for="educational_assistance">Educational Assistance</label>
                        </div>

                        <div class="form-check form-switch mb-3 text-start d-flex justify-content-center align-items-center">
                            <input class="form-check-input me-2" type="checkbox" name="tesda_scholarship" id="tesda_scholarship" <?php if ($services['tesda_scholarship']) echo 'checked'; ?>>
                            <label class="form-check-label" for="tesda_scholarship">TESDA Scholarship</label>
                        </div>

                        <div class="form-check form-switch mb-3 text-start d-flex justify-content-center align-items-center">
                            <input class="form-check-input me-2" type="checkbox" name="medical_mission" id="medical_mission" <?php if ($services['medical_mission']) echo 'checked'; ?>>
                            <label class="form-check-label" for="medical_mission">Medical Mission</label>
                        </div>

                        <div class="form-check form-switch mb-3 text-start d-flex justify-content-center align-items-center">
                            <input class="form-check-input me-2" type="checkbox" name="kda_bkda" id="kda_bkda" <?php if ($services['kda_bkda']) echo 'checked'; ?>>
                            <label class="form-check-label" for="kda_bkda">KDA / BKDA</label>
                        </div>

                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script src="../js/bootstrap.bundle.min.js"></script>
</body>
</html>
