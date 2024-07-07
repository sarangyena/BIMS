<?php

session_start();

include("../connection.php");
include("../functions.php");

$user_data = check_login($con);

if ($_SESSION['usertype'] != 'admin') {
    header("location: ../logout.php");
}


if ($_SERVER['REQUEST_METHOD'] == "POST") {
    // something was posted
    $user_name = $_POST['username'];
    $password = $_POST['password'];
    $usertype = $_POST['user'];
    $gender = $_POST['gender'];

    if (!empty($user_name) && !empty($password) && !empty($usertype) && !is_numeric($user_name)) {

        // save to database
        $user_id = random_num(10);
        $query = "insert into user (user_id,username,password,gender,usertype,date) values ('$user_id','$user_name','$password','$gender','$usertype', NOW())";

        mysqli_query($con, $query);

        // log action
        if (isset($_SESSION['usertype'])) {
            $action = 'Added new user with username of ' . $user_name;
            $action_query = mysqli_query($con, "INSERT INTO logs (username, usertype, action, logdate) VALUES ('" . $user_data['username'] . "', '" . $user_data['usertype'] . "', '$action', NOW())");
        }

        header("location: ../admin/admin.php");
        die;
    } else {
        echo "Please enter some valid information!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="../css/registration.css" />
</head>

<body>
    <section class="container">
        <header>Registration Form</header>
        <form action="registration.php" class="form" method="post" onsubmit="return validateForm()">
            <div class="input-box">
                <label>Username</label>
                <input type="text" name="username" placeholder="Username" required />
            </div>

            <div class="input-box">
                <label>Password</label>
                <input type="password" name="password" placeholder="Password" required />
            </div>
            <div class="gender-box">
                <h3>Gender</h3>
                <div class="gender-option">
                    <div class="gender">
                        <input type="radio" id="check-male" name="gender" value="male" checked />
                        <label for="check-male">Male</label>
                    </div>
                    <div class="gender">
                        <input type="radio" id="check-female" name="gender" value="female" />
                        <label for="check-female">Female</label>
                    </div>
                </div>
            </div>
            <div class="select-box">
                <select name="user">
                    <option hidden>Office Role</option>
                    <option value="admin">System Admin</option>
                    <option value="cos">Chief of Staff</option>
                    <option value="officehead">Office Head</option>
                </select>
            </div>
            <div class="column">
            </div>
            <button name="submit" class="submit-button" value="submit">Submit</button>
            <button type="button" class="cancel-button" onclick="cancelRegistration()">Cancel</button>
        </form>
    </section>

    <script>
        function cancelRegistration() {
            window.location.href = "../admin/admin.php";
        }

        function validateForm() {
            // Add any additional form validation logic here if needed
            return true; // Returning true to allow form submission
        }
    </script>

</body>

</html>