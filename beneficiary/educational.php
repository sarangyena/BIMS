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
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/all.min.css" />
    <link rel="stylesheet" href="../css/benefcss.css">

    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="../js/sweetalert.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', (event) => {
            const educationalSelect = document.getElementById('educational');
            const amountInput = document.getElementById('amount');

            educationalSelect.addEventListener('change', function() {
                if (this.value === 'FINANCIAL ASSISTANCE') {
                    amountInput.value = '3000';
                } else {
                    amountInput.value = 'For Cheque';
                }
            });
        });
    </script>
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
                <input type="text" name="fname" id="fname" class="form-control" placeholder="Enter First Name" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box">
                <label>Middle Name</label>
                <input type="text" name="mname" id="mname" class="form-control" placeholder="Enter Middle Name" oninput="this.value = this.value.toUpperCase();" autocomplete="off" />
            </div>

            <div class="input-box">
                <label>Last Name</label>
                <input type="text" name="lname" id="lname" class="form-control" placeholder="Enter Last Name" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box">
                <label>Ext Name </label>
                <input type="text" name="ename" id="ename" class="form-control" placeholder="eg., JR, SR, II, III" oninput="this.value = this.value.toUpperCase();" autocomplete="off" />
            </div>

            <div class="input-box">
                <label>Address</label>
                <input type="text" name="address" id="address" class="form-control" placeholder="Enter Address" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box barangay">
                <label>Barangay</label>
                <div class="select-box">
                    <select name="barangay" id="barangay" class="form-select" required>
                        <?php
                        for ($i = 178; $i <= 188; $i++) {
                            echo "<option value='$i'>$i</option>";
                        }
                        ?>
                    </select>
                </div>
            </div>

            <div class="column">
                <div class="input-box">
                    <label>Birth Date</label>
                    <input type="date" name="bday" id="bday" class="form-control" placeholder="Enter Birth date" required />
                </div>

                <div class="input-box">
                    <label>Phone Number: </label>
                    <input type="tel" name="pnumber" id="pnumber" class="form-control" pattern="09[0-9]{9}" placeholder="e.g., 09XXXXXXXXX" autocomplete="off" required>
                </div>
            </div>

            <div class="input-box">
                <label>Email</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="example@gmail.com" autocomplete="off" required />
            </div>

            <div class="input-box">
                <label>Gender</label>
                <div class="select-box">
                    <select name="gender" id="gender" class="form-select" required>
                        <option hidden>Choose Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
            </div>

            <div class="input-box">
                <label>School Name</label>
                <input type="text" name="school" id="school" class="form-control" placeholder="Enter School Name" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box educational">
                <label>Type of Assistance</label>
                <div class="select-box">
                    <select name="educational" id="educational" class="form-control" required>
                        <option value="FINANCIAL ASSISTANCE">FINANCIAL ASSISTANCE</option>
                        <option value="TDP">TULONG DUNONG PROGRAM (TDP)</option>
                        <option value="TES">TERTIARY EDUCATION SUBSIDY (TES)</option>
                        <option value="SMART">STUDENT MONETARY ASSISTANCE FOR RECOVERY AND TRANSITION (SMART)</option>
                    </select>
                </div>
            </div>

            <div class="input-box">
                <label>Amount</label>
                <input type="text" name="amount" id="amount" class="form-control" value="3000" placeholder="3000" readonly />
            </div>

            <div class="input-box">
                <label>Precint Number</label>
                <input type="text" name="precinct_num" id="precinct_num" class="form-control" placeholder="Enter Precint Number" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box">
                <input type="hidden" name="estatus" id="estatus" value="pending">
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
    $ename = $_POST['ename'];
    $address = $_POST['address'];
    $barangay = $_POST['barangay'];
    $bday = $_POST['bday'];
    $today = new DateTime();
    $birthDateObj = new DateTime($bday);
    $age = $today->diff($birthDateObj)->y;
    $pnumber = $_POST['pnumber'];
    $email = $_POST['email'];
    $gender = $_POST['gender'];
    $school = $_POST['school'];
    $educational = $_POST['educational'];
    $estatus = $_POST['estatus'];
    $amount = $_POST['amount'];
    $precinct_num = $_POST['precinct_num'];

    $fullname = $_POST['fname'] . ' ' . $_POST['mname'] . ' ' . $_POST['lname'] . ' ' . $_POST['ename'];

    $duplicateCheckQuery = $con->prepare("SELECT * FROM educational WHERE fullname = '$fullname' AND pnumber = ?");
    $duplicateCheckQuery->bind_param("s", $pnumber);
    $duplicateCheckQuery->execute();
    $result = $duplicateCheckQuery->get_result();

    if ($result->num_rows > 0) {
        echo '<script>
        swal({
            title: "Failed!",
            text: "You Already Sent an Educational Assistance",
            icon: "warning",
        });
        </script>';
    } elseif (!empty($fname) && !empty($lname) && !is_numeric($fname) && !is_numeric($mname) && !is_numeric($lname) && !is_numeric($ename)) {
        //save to database
        $query = "INSERT INTO educational (fname,mname,lname,ename,fullname,address,barangay,age,bday,pnumber,email,gender,school,educational,estatus,amount,precinct_num,datecreated) VALUES ('$fname','$mname','$lname','$ename','$fullname','$address','$barangay','$age','$bday','$pnumber', '$email','$gender','$school','$educational','$estatus','$amount', '$precinct_num', NOW())";

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