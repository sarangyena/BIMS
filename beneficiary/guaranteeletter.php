<?php
session_start();
include("../connection.php");

// Fetch the status of the guarantee letter service
$query = "SELECT service_status FROM services WHERE service_name = 'guarantee_letter'";
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
    <title>Guarantee Letter</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/all.min.css" />
    <link rel="stylesheet" href="../css/benefcss.css">

    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="../js/sweetalert.min.js"></script>
</head>

<body>
    <section class="container">
        <header>Guarantee Letter Request Form</header><br>
        <header style="border: 1px solid green; border-radius: 5px;">
            <span style="color: green; font-size: smaller;">Patient's Information</span>
        </header>

        <form action="guaranteeletter.php" class="form" method="post">
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
                <input type="text" name="ename" id="ename" class="form-control" placeholder="e.g., JR, SR, II, III" oninput="this.value = this.value.toUpperCase();" autocomplete="off" />
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
                    <label>Phone Number:</label>
                    <input type="tel" name="pnumber" id="pnumber" class="form-control" pattern="09[0-9]{9}" placeholder="e.g., 09XXXXXXXXX" autocomplete="off" required>
                </div>
            </div>

            <div class="input-box">
                <label>Gender</label>
                <div class="select-box">
                    <select id="gender" name="gender" class="form-select" required>
                        <option hidden>Choose Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
            </div>

            <div class="input-box hospital">
                <label>Hospital</label>
                <div class="select-box">
                    <select id="hospital" name="hospital" class="form-select" required>
                        <option hidden>Choose Hospital</option>
                        <option value="Philippine Heart Center">Philippine Heart Center</option>
                        <option value="National Kidney and Transplant Institute">National Kidney and Transplant Institute</option>
                        <option value="Lung Center">Lung Center</option>
                        <option value="Philippine Children's Medical Center">Philippine Children's Medical Center</option>
                        <option value="East Avenue Medical Center">East Avenue Medical Center</option>
                        <option value="Philippine Orthopedic Center">Philippine Orthopedic Center</option>
                        <option value="Dr. Jose N. Rodriguez Memorial Hospital">Dr. Jose N. Rodriguez Memorial Hospital</option>
                        <option value="Philippine General Hospital">Philippine General Hospital</option>
                        <option value="Jose R. Reyes Memorial Medical Center">Jose R. Reyes Memorial Medical Center</option>
                        <option value="Quirino Memorial Medical Center">Quirino Memorial Medical Center</option>
                        <option value="Skyline Hospital and Medical Center (SJDM)">Skyline Hospital and Medical Center (SJDM)</option>
                        <option value="Healthway-Qualimed Medical Center (SJDM)">Healthway-Qualimed Medical Center (SJDM)</option>
                    </select>
                </div>
            </div>

            <div class="input-box">
                <label>Diagnosis</label>
                <input type="text" name="diagnosis" id="diagnosis" class="form-control" placeholder="Enter Diagnosis" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box">
                <label>Type of Assistance</label>
                <input type="text" name="gletter" id="gletter" value="Guarantee Letter" placeholder="Guarantee Letter" readonly>
            </div>

            <div class="input-box">
                <label>Amount</label>
                <input type="number" name="amount" id="amount" class="form-control" value="" placeholder="Enter Amount" min="1" max="300000" autocomplete="off" required/>
            </div>

            <div class="input-box">
                <input type="hidden" name="gstatus" id="gstatus" value="pending">
            </div>

            <button class="submit-button" name="submit" value="submit">Submit</button>
            <button type="button" class="cancel-button" onclick="location.href='../index.php'">Cancel</button>
        </form>
    </section>
</body>

</html>

<?php
if (isset($_POST['submit'])) {
    // something was posted
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
    $gender = $_POST['gender'];
    $hospital = $_POST['hospital'];
    $diagnosis = $_POST['diagnosis'];
    $gletter = $_POST['gletter'];
    $gstatus = $_POST['gstatus'];
    $amount = $_POST['amount'];

    $fullname = $_POST['fname'] . ' ' . $_POST['mname'] . ' ' . $_POST['lname'] . ' ' . $_POST['ename'];

    $duplicateCheckQuery = $con->prepare("SELECT * FROM guarantee WHERE fullname = '$fullname' AND pnumber = ?");
    $duplicateCheckQuery->bind_param("s", $pnumber);
    $duplicateCheckQuery->execute();
    $result = $duplicateCheckQuery->get_result();

    if ($result->num_rows > 0) {
        echo '<script>
      swal({
        title: "Failed!",
        text: "You Already Sent a Guarantee Letter",
        icon: "warning",
      });
    </script>';
    } elseif (!empty($fname) && !empty($lname) && !is_numeric($fname) && !is_numeric($mname) && !is_numeric($lname)) {
        // save to database
        $query = "INSERT INTO guarantee (fname,mname,lname,ename,fullname,address,barangay,age,bday,pnumber,gender,hospital,diagnosis,gletter,gstatus,amount,datecreated) VALUES ('$fname','$mname','$lname','$ename','$fullname','$address', '$barangay','$age','$bday','$pnumber','$gender','$hospital','$diagnosis','$gletter','$gstatus','$amount', NOW())";

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