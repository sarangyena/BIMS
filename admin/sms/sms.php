<?php
session_start();

include("../../connection.php");
include("../../functions.php");

$user_data = check_login($con);

if ($_SESSION['usertype'] != 'admin') {
    header("location: ../../logout.php");
    exit();
}

$servername = "localhost";
$username = "root";
$password = "";
$database = "bims_db";

$connection = new mysqli($servername, $username, $password, $database);

if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

function columnExists($connection, $table, $column) {
    $result = $connection->query("SHOW COLUMNS FROM `$table` LIKE '$column'");
    return $result && $result->num_rows > 0;
}

function getPhoneNumbers($connection, $table, $statusColumn) {
    $phoneNumbers = [];
    $phoneColumn = columnExists($connection, $table, 'pnum') ? 'pnum' : (columnExists($connection, $table, 'pnumber') ? 'pnumber' : null);
    
    if ($phoneColumn === null) {
        return ''; // Return an empty string if neither column exists
    }

    $query = "SELECT $phoneColumn AS phone FROM $table WHERE $statusColumn = 'Approved'";
    $result = $connection->query($query);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $phoneNumbers[] = $row['phone'];
        }
    }
    return implode(',', $phoneNumbers);
}

function updateStatus($connection, $table, $statusColumn, $phoneColumn, $phoneNumber) {
    $query = "UPDATE $table SET $statusColumn = 'Messaged' WHERE $phoneColumn = '$phoneNumber'";
    $connection->query($query);
}

$tables = ['guarantee', 'medical', 'burial', 'financial', 'educational'];
$statusColumns = ['gstatus', 'mstatus', 'bstatus', 'fstatus', 'estatus'];
$phoneNumbersByCategory = [];

foreach ($tables as $index => $table) {
    $phoneNumbersByCategory[$table] = getPhoneNumbers($connection, $table, $statusColumns[$index]);
}
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
            position: relative;
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
        form input[type="submit"], form button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }
        form input[type="submit"]:hover, form button:hover {
            background-color: #0056b3;
        }
        .run-button {
            position: absolute;
            top: -75px;
            right: -1px;
        }
        .clear-message {
            position: absolute;
            top: 220px;
            right: 20px;
            cursor: pointer;
            color: red;
        }
        textarea#message {
            height: 200px; /* Set the desired height for the textarea */
        }
    </style>
    <script>
        function showAlert(message) {
            alert(message);
        }

        function runNodeScript() {
            fetch('run_script.php')
                .then(response => response.json())
                .then(data => showAlert(data.message))
                .catch(error => console.error('Error:', error));
        }

        function setPhoneNumbers(phoneNumbers) {
            document.getElementById('phone_numbers').value = phoneNumbers;
        }

        function displayAnnouncement() {
            const announcementText = "Magandang Araw Po! Nais po namin ipaalam na kayo po ay isa sa mga benepisyaryo ng Guarantee Letter / Financial Assistance / Medical Assistance / Burial Assistance mula sa tanggapan ni Cong. Dean Asistio at DSWD. \n\nMaaari na po kayong pumunta - (Change according to the set Date) - (Change according to the set Day) (Change according to the set Time) sa (Change according to the set PLace) Paalala lang po na pagkatapos pa ng Tatlong (3) buwan kayo maaaring kumuha ng Assistance sa ating tanggapan upang maiwasan ang diskwalipikasyon mula sa DSWD.\n\nPaalala: \n* Magdala po ng sariling BLACK BALLPEN, ORIGINAL ng VALID ID \n* Pumunta lamang po sa itinakdang oras upang maiwasan ang pag-hihintay ng matagal \n* Iwasan ang pagdadala ng mga minors. Maraming Salamat Po!\n\n [DO NOT REPLY]";
            document.getElementById('message').value = announcementText;
        }

        function clearMessage() {
            document.getElementById('message').value = "";
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
        <h1>SMS Sender</h1>
        <form action="" method="post">
            <button type="button" class="run-button" onclick="runNodeScript()">Run Modem</button>
            
            <?php foreach ($phoneNumbersByCategory as $category => $numbers): ?>
                <button type="button" class="btn btn-success" onclick="setPhoneNumbers('<?php echo $numbers; ?>')"><?php echo ucfirst($category); ?></button>
            <?php endforeach; ?>
            
            <br><br>
            
            <label for="phone_numbers">Phone Numbers (comma-separated):</label><br>
            <input type="text" id="phone_numbers" name="phone_numbers" required><br><br>
            
            <label for="message">Message:</label><br>
            <textarea id="message" name="message" required></textarea>

            <button type="button" class="btn btn-secondary" onclick="displayAnnouncement()">Announcement</button><br><br>
            
            <input type="submit" value="Send SMS">

            <span class="clear-message" onclick="clearMessage()">Clear Message</span>

            <input type="hidden" id="com_port" name="com_port" placeholder="Input COM" value="COM5">
        </form>
    </div>
</body>
</html>


<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $comPort = $_POST['com_port'];
    $phoneNumbers = explode(',', $_POST['phone_numbers']);
    $message = $_POST['message'];

    function initializeModem($comPort) {
        $fp = fopen($comPort, 'w+');
        if (!$fp) {
            die("Cannot open $comPort");
        }

        // Set modem parameters
        shell_exec("stty -F $comPort 9600");

        // Send initialization commands to the modem
        fwrite($fp, "AT\r");
        sleep(1);
        fwrite($fp, "ATE0\r"); // Echo off
        sleep(1);
        fwrite($fp, "AT+CMGF=1\r"); // Set SMS mode to text
        sleep(1);

        fclose($fp);
    }

    function sendSMS($comPort, $phoneNumber, $message) {
        $fp = fopen($comPort, 'w+');
        if (!$fp) {
            die("Cannot open $comPort");
        }

        fwrite($fp, "AT+CMGS=\"$phoneNumber\"\r");
        sleep(1);

        fwrite($fp, "$message" . chr(26)); // CTRL+Z to send the SMS
        sleep(1);

        fclose($fp);
    }

    // Initialize the modem
    initializeModem($comPort);

    foreach ($phoneNumbers as $phoneNumber) {
        $phoneNumber = trim($phoneNumber);
        if (!empty($phoneNumber)) {
            sendSMS($comPort, $phoneNumber, $message);
            sleep(2); // Adding a delay to ensure proper sending

            // Update the status in the database
            foreach ($tables as $index => $table) {
                $statusColumn = $statusColumns[$index];
                $phoneColumn = columnExists($connection, $table, 'pnum') ? 'pnum' : (columnExists($connection, $table, 'pnumber') ? 'pnumber' : null);
                
                if ($phoneColumn) {
                    updateStatus($connection, $table, $statusColumn, $phoneColumn, $phoneNumber);
                }
            }
        }
    }

    echo '<script type="text/javascript">',
         'showAlert("SMS sent Successfully!");',
         '</script>';
}
?>
