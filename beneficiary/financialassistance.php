<?php
session_start();
include("../connection.php");

// Fetch the status of the guarantee letter service
$query = "SELECT service_status FROM services WHERE service_name = 'financial_assistance'";
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
    <title>Financial Assistance</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/all.min.css" />
    <link rel="stylesheet" href="../css/benefcss.css">

    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="../js/sweetalert.min.js"></script>

    <script>
        function copyAbove() {
            if (document.getElementById('sameAbove').checked) {
                document.getElementById('bfname').value = document.getElementById('fname').value;
                document.getElementById('bmname').value = document.getElementById('mname').value;
                document.getElementById('blname').value = document.getElementById('lname').value;
                document.getElementById('bename').value = document.getElementById('ename').value;
                document.getElementById('baddress').value = document.getElementById('address').value;
                document.getElementById('bbarangay').value = document.getElementById('barangay').value;
                document.getElementById('bbday').value = document.getElementById('bday').value;
                document.getElementById('bcivil').value = document.getElementById('civil').value;
                document.getElementById('bgender').value = document.getElementById('gender').value;
                document.getElementById('bprecinct_num').value = document.getElementById('precinct_num').value;
            } else {
                document.getElementById('bfname').value = '';
                document.getElementById('bmname').value = '';
                document.getElementById('blname').value = '';
                document.getElementById('bename').value = '';
                document.getElementById('baddress').value = '';
                document.getElementById('bbarangay').value = '';
                document.getElementById('bbday').value = '';
                document.getElementById('bcivil').value = '';
                document.getElementById('bgender').value = '';
                document.getElementById('bprecinct_num').value = '';
            }
        }
    </script>
</head>

<body>
    <section class="container">
        <header>Financial Request Form</header><br>
        <header style="border: 1px solid green; border-radius: 5px;">
            <span style="color: green; font-size: smaller;">Claimant's Information</span>
        </header>

        <form action="financialassistance.php" class="form" method="post">
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
                    <select id="barangay" name="barangay" class="form-select" required>
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

            <div class="column">
                <div class="input-box status">
                    <label>Civil Status</label>
                    <div class="select-box">
                        <select name="civil" id="civil" class="form-select" required>
                            <option value="Single">Single</option>
                            <option value="Married">Married</option>
                            <option value="Seperated">Seperated / Divorced</option>
                            <option value="Widowed">Widowed</option>
                        </select>
                    </div>
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
            </div>

            <div class="input-box barangay">
                <label>Type of Assistance: </label>
                <div class="select-box">
                    <select name="financial" id="financial" class="form-select" required>
                        <option value="MEDICAL">MEDICAL</option>
                        <option value="BURIAL">BURIAL</option>
                        <option value="FINANCIAL">FINANCIAL</option>
                        <option value="CARD">CARD</option>
                        <option value="AKAP">AKAP</option>
                        <option value="LIVELIHOOD">LIVELIHOOD</option>
                    </select>
                </div>
            </div>

            <div class="input-box">
                <label>Precint Number</label>
                <input type="text" name="precinct_num" id="precinct_num" class="form-control" placeholder="Enter Precinct Number" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <br>
            <div class="input-box">
                <header style="border: 1px solid green; border-radius: 5px;">
                    <span style="color: green; font-size: smaller;">Beneficiary's Information</span>
                </header>
            </div>

            <div class="form">
                <input type="checkbox" id="sameAbove" onclick="copyAbove()">
                <label for="sameAbove">SAME AS ABOVE</label>
            </div>

            <div class="input-box">
                <label>Beneficiary's First Name</label>
                <input type="text" name="bfname" id="bfname" class="form-control" placeholder="Enter First Name" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box">
                <label>Beneficiary's Middle Name</label>
                <input type="text" name="bmname" id="bmname" class="form-control" placeholder="Enter Middle Name" oninput="this.value = this.value.toUpperCase();" autocomplete="off"/>
            </div>

            <div class="input-box">
                <label>Beneficiary's Last Name</label>
                <input type="text" name="blname" id="blname" class="form-control" placeholder="Enter Last Name" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box">
                <label>Beneficiary's Ext Name </label>
                <input type="text" name="bename" id="bename" class="form-control" placeholder="e.g., JR, SR, II, III" oninput="this.value = this.value.toUpperCase();" autocomplete="off"/>
            </div>

            <div class="input-box">
                <label>Address</label>
                <input type="text" name="baddress" id="baddress" class="form-control" placeholder="Enter Address" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="column">
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

                <div class="input-box">
                    <label>Birth Date</label>
                    <input type="date" name="bbday" id="bbday" class="form-control" placeholder="Enter Birth date" required />
                </div>
            </div>

            <div class="column">
                <div class="input-box status">
                    <label>Civil Status</label>
                    <div class="select-box">
                        <select name="bcivil" id="bcivil" class="form-select" required>
                            <option value="Single">Single</option>
                            <option value="Married">Married</option>
                            <option value="Seperated/Divorced">Seperated / Divorced</option>
                            <option value="Widowed">Widowed</option>
                        </select>
                    </div>
                </div>

                <div class="input-box">
                    <label>Gender</label>
                    <div class="select-box">
                        <select name="bgender" id="bgender" class="form-select" required>
                            <option hidden>Choose Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="input-box">
                <label>Relationship with the Beneficiary</label>
                <input type="text" name="brelation" id="brelation" class="form-control" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box">
                <label>Amount</label>
                <div class="column">
                    <div class="select-box">
                        <select name="amount" id="amount" class="form-select" required>
                            <option value="2000">2000</option>
                            <option value="3000">3000</option>
                            <option value="5000">5000</option>
                            <option value="10000">10000</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="input-box">
                <label>Precint Number</label>
                <input type="text" name="bprecinct_num" id="bprecinct_num" class="form-control" placeholder="Enter Precinct Number" oninput="this.value = this.value.toUpperCase();" autocomplete="off" required />
            </div>

            <div class="input-box">
                <input type="hidden" name="fstatus" value="pending">
            </div>

            <button class="submit-button" name="submit" value="submit">Submit</button>
            <button type="button" class="cancel-button" onclick="location.href='../index.php'">Cancel</button>
        </form>
    </section>
</body>

</html>

<?php
include("../connection.php");

if (isset($_POST['submit'])) {
    // Collect and sanitize inputs
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
    $civil = $_POST['civil'];
    $gender = $_POST['gender'];
    $financial = $_POST['financial'];
    $precinct_num = $_POST['precinct_num'];
    $bfname = $_POST['bfname'];
    $bmname = $_POST['bmname'];
    $blname = $_POST['blname'];
    $bename = $_POST['bename'];
    $baddress = $_POST['baddress'];
    $bbarangay = $_POST['bbarangay'];
    $bbday = $_POST['bbday'];
    $today1 = new DateTime();
    $birthDateObj1 = new DateTime($bbday);
    $bage = $today1->diff($birthDateObj1)->y;
    $bcivil = $_POST['bcivil'];
    $bgender = $_POST['bgender'];
    $brelation = $_POST['brelation'];
    $fstatus = $_POST['fstatus'];
    $amount = $_POST['amount'];
    $bprecinct_num = $_POST['bprecinct_num'];

    $fullname = $_POST['fname'] . ' ' . $_POST['mname'] . ' ' . $_POST['lname'] . ' ' . $_POST['ename'];
    $bfullname = $_POST['bfname'] . ' ' . $_POST['bmname'] . ' ' . $_POST['blname'] . ' ' . $_POST['bename'];

    $duplicateCheckQuery = $con->prepare("SELECT * FROM financial WHERE fullname = '$fullname' AND pnumber = ?");
    $duplicateCheckQuery->bind_param("s", $pnumber);
    $duplicateCheckQuery->execute();
    $result = $duplicateCheckQuery->get_result();

    if ($result->num_rows > 0) {
?>
        <script>
            swal({
                title: "Failed!",
                text: "You Already Sent a Financial Assistance",
                icon: "warning",
            });
        </script>

        <?php
    } elseif (!empty($fname) && !empty($lname) && !empty($bfname) && !empty($blname) && !is_numeric($fname) && !is_numeric($mname) && !is_numeric($lname) && !is_numeric($ename) && !is_numeric($bfname) && !is_numeric($bmname) && !is_numeric($blname) && !is_numeric($bename)) {

        //save to database

        $query = "INSERT INTO financial (fname,mname,lname,ename,fullname,address,barangay,age,bday,pnumber,civil,gender,financial,precinct_num,bfname,bmname,blname,bename,bfullname,baddress,bage,bbday,bcivil,bgender,brelation,fstatus,amount,bprecinct_num,datecreated) VALUES ('$fname','$mname','$lname','$ename','$fullname','$address', '$barangay','$age','$bday','$pnumber','$civil','$gender','$financial','$precinct_num','$bfname','$bmname','$blname','$bename','$bfullname','$baddress','$bage','$bbday','$bcivil','$bgender','$brelation','$fstatus','$amount','$bprecinct_num', NOW())";

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