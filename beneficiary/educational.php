<?php
session_start();
include("../connection.php");

// Fetch the status of the guarantee letter service
$query = "SELECT service_status FROM services WHERE service_name = 'educational_assistance'";
$result = mysqli_query($con, $query);

if ($result && $row = mysqli_fetch_assoc($result)) {
    if ($row['service_status'] == 0) {
        // Service disabled: Redirect to index page with a clear message
        header('Location: ../index.php');
        exit; // Terminate script execution after redirect
    }
} else {
    // Handle potential errors during database query or fetching
    echo "Error: Could not retrieve service status."; // Or log the error for debugging
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Educational Assistance</title>
    <link rel="stylesheet" href="../css/all.min.css" />
    <link rel="stylesheet" href="../css/benefcss.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body>
    <section class="container">
        <header>Educational Request Form</header><br>
        <header style="border: 1px solid green; border-radius: 5px;">
            <span style="color: green; font-size: smaller;">Student's Information</span>
        </header>

        <form action="educational.php" class="form" method="post">
            <div class="input-box">
                <label>First Name</label>
                <input type="text" name="fname" placeholder="Enter First Name" oninput="this.value = this.value.toUpperCase();" required />
            </div>

            <div class="input-box">
                <label>Middle Name</label>
                <input type="text" name="mname" placeholder="Enter Middle Name" oninput="this.value = this.value.toUpperCase();" />
            </div>

            <div class="input-box">
                <label>Last Name</label>
                <input type="text" name="lname" placeholder="Enter Last Name" oninput="this.value = this.value.toUpperCase();" required />
            </div>

            <div class="input-box">
                <label>Address</label>
                <input type="text" name="address" placeholder="Enter Address" oninput="this.value = this.value.toUpperCase();" required />
            </div>

            <div class="input-box barangay">
                <label>Barangay</label>
                <div class="column">
                    <div class="select-box">
                        <select name="barangay" required>
                            <option value="178" checked>178</option>
                            <option value="179">179</option>
                            <option value="180">180</option>
                            <option value="181">181</option>
                            <option value="182">182</option>
                            <option value="183">183</option>
                            <option value="184">184</option>
                            <option value="185">185</option>
                            <option value="186">186</option>
                            <option value="187">187</option>
                            <option value="188">188</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="input-box">
                <label>Type of Assistance</label>
                <input type="text" name="educational" value="Educational Assistance" placeholder="Educational Assistance" readonly>
            </div>

            <div class="column">
                <div class="input-box">
                    <label>Birth Date</label>
                    <input type="date" name="bday" placeholder="Enter Birth date" required />
                </div>
                <div class="input-box">
                    <label>Phone Number: </label>
                    <input type="tel" name="pnumber" pattern="09[0-9]{9}" placeholder="e.g., 09XXXXXXXXX" required>
                </div>
            </div>

            <div class="input-box">
                <label>Gender</label>
                <div class="column">
                    <div class="select-box">
                        <select name="gender" required>
                            <option hidden>Choose Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="input-box">
                <label>School Name</label>
                <input type="text" name="school" placeholder="Enter School Name" oninput="this.value = this.value.toUpperCase();" required />
            </div>

            <div class="input-box">
                <label>Amount</label>
                <input type="number" name="amount" value="3000" placeholder="3000" readonly />
            </div>

            <div class="input-box">
                <input type="hidden" name="estatus" value="pending">
            </div>

            <button class="submit-button" name="submit" value="submit">Submit</button>
            <button type="button" class="cancel-button" onclick="location.href='../index.php'">Cancel</button>
        </form>
    </section>
</body>

</html>

<?php

include("../connection.php");

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "bims_db";

if (!$con = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname)) {
    die("failed to connect!");
}

if (isset($_POST['submit'])) {
    //something was posted
    $fname = $_POST['fname'];
    $mname = $_POST['mname'];
    $lname = $_POST['lname'];
    $address = $_POST['address'];
    $barangay = $_POST['barangay'];
    $educational = $_POST['educational'];
    $bday = $_POST['bday'];
    $today = new DateTime();
    $birthDateObj = new DateTime($bday);
    $age = $today->diff($birthDateObj)->y;
    $pnum = $_POST['pnumber'];
    $gender = $_POST['gender'];
    $school = $_POST['school'];
    $estatus = $_POST['estatus'];
    $amount = $_POST['amount'];

    $duplicateCheckQuery = $con->prepare("SELECT * FROM educational WHERE pnumber = ?");
    $duplicateCheckQuery->bind_param("s", $pnum);
    $duplicateCheckQuery->execute();
    $result = $duplicateCheckQuery->get_result();

    if ($result->num_rows > 0) {
        echo '<script>
        swal({
            title: "Failed!",
            text: "You Already Sent An Educational Assistance",
            icon: "warning",
        });
        </script>';
    } elseif (!empty($fname) && !empty($lname) && !is_numeric($fname) && !is_numeric($mname) && !is_numeric($lname)) {
        //save to database
        $query = "insert into educational (fname,mname,lname,address,barangay,educational,age,bday,pnumber,gender,school,estatus,amount,datecreated) values ('$fname','$mname','$lname','$address', '$barangay','$educational','$age','$bday','$pnum','$gender','$school','$estatus','$amount', NOW())";

        $alert = mysqli_query($con, $query);

        if ($alert) {
?>
            <script>
                swal({
                    title: "Success!",
                    text: "Your Data is Submitted",
                    icon: "success",
                }).then(function() {
                    window.location = "../index.php"; // Redirect to the home page
                });
            </script>

        <?php

        }
        die;
    } else {
        ?>
        <script>
            swal({
                title: "Failed!",
                text: "Enter Valid Data",
                icon: "warning",
            });
        </script>

<?php
    }
}

?>