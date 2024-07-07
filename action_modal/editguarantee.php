<?php 

session_start();


    include("../connection.php");
    include("../functions.php");

$user_data = check_login($con);

if ($_SESSION['usertype'] != 'admin') {
    header("location: ../logout.php");
}


?>



<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "bims_db";

$connection = new mysqli($servername, $username, $password, $database);



    $id = "";
    $fname = "";
    $mname = "";
    $lname = "";
    $address = "";
    $barangay = "";
    $gletter = "";
    $bday = "";
    $age = "";
    $pnum = "";
    $gender = "";
    $hospital = "";
    $diagnosis = "";
    $amount = "";

    $errormessage = "";
    $successmessage = "";


    if ( $_SERVER ['REQUEST_METHOD'] == 'GET' ) 
    {
      if ( !isset($_GET["id"]) ) 
      {
        header("location: ../admin/adminguarantee.php");
        exit;
      }

      $id = $_GET["id"];

      $sql = "SELECT * FROM guarantee WHERE id=$id";
      $result = $connection->query($sql);
      $row = $result->fetch_assoc();

      if (!$row) 
      {
        header("location: ../admin/adminguarantee.php");
        exit;
      }

   
    $fname = $row["fname"];
    $mname = $row["mname"];
    $lname = $row["lname"];
    $address = $row["address"];
    $barangay = $row["barangay"];
    $gletter = $row["gletter"];
    $bday = $row["bday"];
    $age = $row["age"];
    $pnum = $row["pnumber"];
    $gender = $row["gender"];
    $hospital = $row["hospital"];
    $diagnosis = $row["diagnosis"];
    $amount = $row["amount"];

    }

    else 
    {

    $id = $_POST["id"];
    $fname = $_POST["fname"];
    $mname = $_POST["mname"];
    $lname = $_POST["lname"];
    $address = $_POST["address"];
    $barangay = $_POST["barangay"];
    $gletter = $_POST["gletter"];
    $bday = $_POST['bday'];
    $today = new DateTime();
    $birthDateObj = new DateTime($bday);
    $age = $today->diff($birthDateObj)->y;
    $pnum = $_POST['pnumber'];
    $gender = $_POST['gender'];
    $hospital = $_POST['hospital'];
    $diagnosis = $_POST['diagnosis'];
    $amount = $_POST['amount'];

    $duplicateCheckQuery = $connection->prepare("SELECT * FROM guarantee WHERE pnumber = ?");
    $duplicateCheckQuery->bind_param("s", $pnum);
    $duplicateCheckQuery->execute();
    $result = $duplicateCheckQuery->get_result();

    if ($result->num_rows > 0) {
        ?>
        <script>

        swal({
              title: "Failed!",
              text:  "You Already Sent A Guarantee Letter",
              icon:  "warning",
            });
         
        </script>

        <?php
    }

    do 
    {
      if
       (empty($id) || 
        empty($fname) || 
        empty($lname) || 
        empty($address) || 
        empty($barangay) || 
        empty($gletter) || 
        empty($bday) || 
        empty($age) || 
        empty($pnum) || 
        empty($gender) || 
        empty($hospital) || 
        empty($diagnosis) || 
        empty($amount) )  
      {
        $errormessage = "FAILED";
        break;
      }

      $sql = "UPDATE guarantee SET 
      fname = '$fname', 
      mname = '$mname', 
      lname = '$lname', 
      address = '$address', 
      barangay = '$barangay', 
      gletter = '$gletter', 
      bday = '$bday', 
      age = '$age', 
      pnumber = '$pnum', 
      gender = '$gender', 
      hospital = '$hospital', 
      diagnosis = '$diagnosis', 
      amount = '$amount' 
      WHERE id = $id";


      $result = $connection->query($sql);

      if (!$result) 
      {
        $errormessage = "FAILED";
        break;
      }

      $successmessage = "SUCCESS";

      header("location: ../admin/adminguarantee.php");
      exit;

    } while (false);


    }

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link href="../css/benefcss.css" rel="stylesheet">
  </head>
  
  <body>
    <section class="container">
      <header>Gurantee Letter Request Form</header>
      <form action="editguarantee.php" class="form"  method="post">
        <input type="hidden" name="id" value="<?php echo $id; ?>"  >

        <div class="input-box">
          <label>First Name</label>
          <input type="text"  name="fname" value="<?php echo $fname; ?>" />
        </div>

        <div class="input-box">
          <label>Middle Name</label>
          <input type="text"  name="mname" value="<?php echo $mname;; ?>" />
        </div>

        <div class="input-box">
          <label>Last Name</label>
          <input type="text"  name="lname" value="<?php echo $lname;; ?>" />
        </div>

        <div class="input-box">
          <label>Address</label>
          <input type="text" name="address" value="<?php echo $address; ?>"/>
        </div>

        <div class="input-box barangay">
          <label>Barangay</label>
          <div class="column">
            <div class="select-box">
              <select name="barangay">
              <option hidden><?php echo $barangay; ?></option>
              <option value="178" > 178 </option>
              <option value="179" > 179 </option>
              <option value="180" > 180 </option>
              <option value="181" > 181 </option>
              <option value="182" > 182 </option>
              <option value="183" > 183 </option>
              <option value="184" > 184 </option>
              <option value="185" > 185 </option>
              <option value="186" > 186 </option>
              <option value="187" > 187 </option>
              <option value="188" > 188 </option>
            </select>
            </div>
          </div>
        </div>

        <div class="input-box">
          <label>Type of Assistance</label>
          <input type="" name="gletter" value="Guarantee Letter" placeholder="Guarantee Letter" readonly>
        </div>

        <div class="column">
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" name="bday" value="<?php echo $bday; ?>" />
          </div>
          <div class="input-box">
            <label>Phone Number: </label>
            <input type="tel" name="pnumber" pattern="09[0-9]{9}" placeholder="e.g., 09XXXXXXXXX" value="<?php echo $pnum; ?>" />
          </div>
        </div>
        
        <div class="input-box">
          <label>Gender</label>
          <div class="column">
            <div class="select-box">
              <select name="gender" >
              <option hidden><?php echo $gender; ?></option>
              <option value="Male" > Male </option>
              <option value="Female" > Female </option>
              <option value="Other" > Other </option>
            </select>
            </div>
          </div>
        </div>

        <div class="input-box hospital">
          <label>Hospital</label>
          <div class="column">
            <div class="select-box">
              <select name="hospital" >
              <option hidden><?php echo $hospital; ?></option>
              <option value="Philippine Heart Center" > Philippine Heart Center </option>
              <option value="National Kidney and Transplant Institute" > National Kidney and Transplant Institute </option>
              <option value="Lung Center" > Lung Center </option>
              <option value="Philippine Children's Medical Center" > Philippine Children's Medical Center </option>
              <option value="East Avenue Medical Center" > East Avenue Medical Center </option>
              <option value="Philippine Orthopedic Center" > Philippine Orthopedic Center </option>
              <option value="Dr. Jose N. Rodriguez Memorial Hospital" > Dr. Jose N. Rodriguez Memorial Hospital </option>
              <option value="Philippine General Hospital" > Philippine General Hospital </option>
              <option value="Jose R. Reyes Memorial Medical Center" > Jose R. Reyes Memorial Medical Center </option>
              <option value="Quirino Memorial Medical Center" > Quirino Memorial Medical Center </option>
              <option value="Skyline Hospital and Medical Center (SJDM)" > Skyline Hospital and Medical Center (SJDM) </option>
              <option value="Healthway-Qualimed Medical Center SJDM" > Healthway-Qualimed Medical Center SJDM </option>
            </select>
            </div>
          </div>
        </div>

        <div class="input-box">
          <label>Diagnosis</label>
          <input type="text"  name="diagnosis" value="<?php echo $diagnosis; ?>" />
        </div>

          <div class="input-box">
            <label>Amount</label>
            <input type="number" name="amount" value="<?php echo $amount; ?>" />
          </div>


        
        <button name="submit" class="submit-button" value="submit">Save</button>
        <button type="button" class="cancel-button" onclick="location.href='../admin/adminguarantee.php'">Cancel</button>
      </form>
    </section>
  </body>
</html>