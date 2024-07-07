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
    $financial = "";
    $bday = "";
    $age = "";  
    $pnum = "";
    $civil = "";
    $gender = "";
    $bfname = "";
    $bmname = "";
    $blname = "";
    $baddress = "";
    $bbday = "";
    $bage = "";
    $bcivil = "";
    $bgender = "";
    $brelation = "";
    $amount = "";

    $errormessage = "";
    $successmessage = "";


    if ( $_SERVER ['REQUEST_METHOD'] == 'GET' ) 
    {
      if ( !isset($_GET["id"]) ) 
      {
        header("location: ../admin/adminfinancial.php");
        exit;
      }

      $id = $_GET["id"];

      $sql = "SELECT * FROM financial WHERE id=$id";
      $result = $connection->query($sql);
      $row = $result->fetch_assoc();

      if (!$row) 
      {
        header("location: ../admin/adminfinancial.php");
        exit;
      }

   
    $fname = $row["fname"];
    $mname = $row["mname"];
    $lname = $row["lname"];
    $address = $row["address"];
    $barangay = $row["barangay"];
    $financial = $row["financial"];
    $bday = $row["bday"];
    $age = $row["age"];
    $pnum = $row["pnum"];
    $civil = $row["civil"];
    $gender = $row["gender"];
    $bfname = $row["bfname"];
    $bmname = $row["bmname"];
    $blname = $row["blname"];
    $baddress = $row["baddress"];
    $bbday = $row["bbday"];
    $bage = $row["bage"];
    $bcivil = $row["bcivil"];
    $bgender = $row["bgender"];
    $brelation = $row["brelation"];
    $amount = $row["amount"];

    }

    else 
    {

    $id = $_POST["id"];
    $fname = $_POST['fname'];
    $mname = $_POST['mname'];
    $lname = $_POST['lname'];
    $address = $_POST['address'];
    $barangay = $_POST['barangay'];
    $financial = $_POST['financial'];
    $bday = $_POST['bday'];
    $today = new DateTime();
    $birthDateObj = new DateTime($bday);
    $age = $today->diff($birthDateObj)->y;
    $pnum = $_POST['pnumber'];
    $civil = $_POST['civil'];
    $gender = $_POST['gender'];
    $bfname = $_POST['bfname'];
    $bmname = $_POST['bmname'];
    $blname = $_POST['blname'];
    $baddress = $_POST['baddress'];
    $bbday = $_POST['bbday'];
    $today1 = new DateTime();
    $birthDateObj1 = new DateTime($bbday);
    $bage = $today1->diff($birthDateObj1)->y;
    $bcivil = $_POST['bcivil'];
    $bgender = $_POST['bgender'];
    $brelation = $_POST['brelation'];
    $amount = $_POST['amount'];

    $duplicateCheckQuery = $connection->prepare("SELECT * FROM financial WHERE pnum = ?");
    $duplicateCheckQuery->bind_param("s", $pnum);
    $duplicateCheckQuery->execute();
    $result = $duplicateCheckQuery->get_result();

    if ($result->num_rows > 0) {
                ?>
        <script>

        swal({
              title: "Failed!",
              text: "You Already Sent A Financial Assistance",
              icon: "warning",
            });
         
        </script>

        <?php
    }

    do 
    {
      if ( empty($id) || 
        empty($fname) ||  
        empty($lname) || 
        empty($address) || 
        empty($barangay) || 
        empty($financial) || 
        empty($bday) || 
        empty($age) || 
        empty($pnum) || 
        empty($civil) ||
        empty($gender) || 
        empty($bfname) ||  
        empty($blname) ||
        empty($baddress) ||
        empty($bbday) ||
        empty($bage) ||
        empty($bcivil) ||
        empty($bgender) ||
        empty($brelation) ||
        empty($amount) )  
      {
        $errormessage = "FAILED";
        break;
      }

      $sql = "UPDATE financial SET 
      fname = '$fname', 
      mname = '$mname', 
      lname = '$lname', 
      address = '$address', 
      barangay = '$barangay', 
      financial = '$financial', 
      bday = '$bday', 
      age = '$age', 
      pnum = '$pnum', 
      civil = '$civil',
      gender = '$gender', 
      bfname = '$bfname',
      bmname = '$bmname',
      blname = '$blname',
      baddress = '$baddress',
      bage = '$bage',
      bbday = '$bbday',
      bcivil = '$bcivil',
      bgender = '$bgender',
      brelation = '$brelation',
      amount = '$amount' 
      WHERE id = $id";


      $result = $connection->query($sql);

      if (!$result) 
      {
        $errormessage = "FAILED";
        break;
      }

      $successmessage = "SUCCESS";

      



      header("location: ../admin/adminfinancial.php");
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
      <header>Financial Form</header>
      <form action="editfinancial.php" class="form"  method="post">
        <input type="hidden" name="id" value="<?php echo $id; ?>"  >

        <div class="input-box">
          <label>First Name</label>
          <input type="text"  name="fname" value="<?php echo $fname; ?>" />
        </div>

        <div class="input-box">
          <label>Middle Name</label>
          <input type="text"  name="mname" value="<?php echo $mname; ?>" />
        </div>

        <div class="input-box">
          <label>Last Name</label>
          <input type="text"  name="lname" value="<?php echo $lname; ?>" />
        </div>

        <div class="input-box">
          <label>Address</label>
          <input type="text" name="address" value="<?php echo $address; ?>" />
        </div>

        <div class="input-box barangay">
          <label>Barangay</label>
          <div class="column">
            <div class="select-box">
              <select name="barangay" >
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
          <input type="text" value="Financial" name="financial" placeholder="Financial" readonly />
        </div>

        <div class="column">

          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" name="bday" value="<?php echo $bday; ?>" />
          </div>
          <div class="input-box">
            <label>Phone Number: </label>
            <input type="tel" name="pnumber" pattern="09[0-9]{9}" placeholder="e.g., 09XXXXXXXXX" value="<?php echo $pnum; ?>">
          </div>
        </div>
        <div class="input-box status">
          <label>Civil Status</label>
          <div class="column">
            <div class="select-box">
              <select name="civil">
              <option hidden><?php echo $civil; ?></option>
              <option value="Single" > Single </option>
              <option value="Married" > Married </option>
              <option value="Seperated" > Seperated / Divorced </option>
              <option value="Widowed" > Widowed </option>
            </select>
            </div>
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

        <div class="input-box">
          
          <h4>_____________________________________________________</h4>
          
        </div>

        <div class="input-box">
          <label>Beneficiary's First Name</label>
          <input type="text"  name="bfname" value="<?php echo $bfname; ?>" />
        </div>

        <div class="input-box">
          <label>Beneficiary's Middle Name</label>
          <input type="text"  name="bmname" value="<?php echo $bmname; ?>" />
        </div>

        <div class="input-box">
          <label>Beneficiary's Last Name</label>
          <input type="text"  name="blname" value="<?php echo $blname; ?>" />
        </div>

        <div class="input-box">
          <label>Address</label>
          <input type="text" name="baddress" value="<?php echo $baddress; ?>" />
        </div>

          <div class="column">

          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" name="bbday" value="<?php echo $bbday; ?>" />
          </div>
        </div>
        <div class="input-box status">
          <label>Civil Status</label>
          <div class="column">
            <div class="select-box">
              <select name="bcivil">
              <option hidden><?php echo $bcivil; ?></option>
              <option value="Single" > Single </option>
              <option value="Married" > Married </option>
              <option value="Seperated/Divorced" > Seperated / Divorced </option>
              <option value="Widowed" > Widowed </option>
            </select>
            </div>
          </div>
        </div>

         <div class="input-box">
          <label>Gender</label>
          <div class="column">
            <div class="select-box">
              <select name="bgender" >
              <option hidden><?php echo $bgender; ?></option>
              <option value="Male" > Male </option>
              <option value="Female" > Female </option>
              <option value="Other" > Other </option>
            </select>
            </div>
          </div>
        </div>

        <div class="input-box">
          <label>Relationship with the Beneficiary</label>
          <input type="text" name="brelation" value="<?php echo $brelation; ?>" />
        </div>



          <div class="input-box">
            <label>Amount</label>
            <input type="number" name="amount" value="<?php echo $amount; ?>" />
          </div>


        
        <button name="submit" class="submit-button" value="submit">Save</button>
        <button type="button" class="cancel-button" onclick="location.href='../admin/adminfinancial.php'">Cancel</button>
      </form>
    </section>
  </body>
</html>