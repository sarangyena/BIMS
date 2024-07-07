<?php

session_start();

include("../../connection.php");
include("../../functions.php");

$user_data = check_login($con);

if ($_SESSION['usertype'] != 'admin') {
    header("location: ../../logout.php");
}

$servername = "localhost";
$username = "root";
$password = "";
$database = "bims_db";

$connection = new mysqli($servername, $username, $password, $database);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bulk SMS Sender</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/bootstrap-icons.css" rel="stylesheet">
    <link href="../../css/maincss.css" rel="stylesheet">
    <style>
        body {
            font-family: Metropolis, sans-serif;
            background-color: #f8f9fa;
        }

        .site-header {
            color: white;
            padding: 10px 0;
        }

        .site-header p {
            margin: 0;
        }

        .navbar {
            margin-bottom: 20px;
        }

        .container h1 {
            margin: 20px 0;
        }

        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        form label {
            font-weight: bold;
            margin-top: 10px;
        }

        form input[type="text"],
        form textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }

        form input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }

        form input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .social-icon {
            text-align: right;
        }

        .social-icon li {
            display: inline;
            margin: 0 10px;
        }

        .social-icon li a {
            color: white;
            text-decoration: none;
        }
    </style>
    <script>
        function showAlert(message) {
            alert(message);
        }
    </script>

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
            <a class="navbar-brand" href="../admin.php">
                <img src="../../images/batangkankaloologo.png" class="logo img-fluid" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item ms-3">
                        <a class="nav-link custom-btn custom-border-btn btn" href="../admin.php">Return</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h1>Bulk SMS Sender</h1>
        <form action="" method="post">
            <label for="com_port">COM Port:</label><br>
            <input type="text" id="com_port" name="com_port" placeholder="Input COM" required><br><br>
            
            <label for="phone_numbers">Phone Numbers (comma-separated):</label><br>
            <input type="text" id="phone_numbers" name="phone_numbers" required><br><br>
            
            <label for="message">Message:</label><br>
            <textarea id="message" name="message" required></textarea><br><br>
            
            <input type="submit" value="Send SMS">
        </form>
    </div>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $comPort = $_POST['com_port'];
        $phoneNumbers = explode(',', $_POST['phone_numbers']);
        $message = $_POST['message'];

        function sendSMS($comPort, $phoneNumber, $message) {
            $fp = fopen($comPort, 'w+');
            if (!$fp) {
                die("Cannot open $comPort");
            }

            shell_exec("stty -F $comPort 9600");

            fwrite($fp, "AT+CMGF=1\r");
            sleep(1);

            fwrite($fp, "AT+CMGS=\"$phoneNumber\"\r");
            sleep(1);

            fwrite($fp, "$message" . chr(26));
            sleep(1);

            fclose($fp);
        }

        foreach ($phoneNumbers as $phoneNumber) {
            $phoneNumber = trim($phoneNumber);
            if (!empty($phoneNumber)) {
                sendSMS($comPort, $phoneNumber, $message);
                sleep(2); // Adding a delay to ensure proper sending
            }
        }

        echo '<script type="text/javascript">',
             'showAlert("SMS sent Successfully!");',
             '</script>';
    }
    ?>
</body>
</html>
