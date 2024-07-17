<?php

session_start();

include("../connection.php");
include("../functions.php");

$user_data = check_login($con);

$success_msg = "";
$update_msg = "";
$delete_msg = "";
$error_msg = "";

if ($_SESSION['usertype'] != 'admin') {
    header("location: ../logout.php");
}


if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['btn_add'])) {
    // something was posted
    $user_name = $_POST['username'];
    $password = $_POST['password'];
    $usertype = $_POST['user'];
    $gender = $_POST['gender'];

    if (!empty($user_name) && !empty($password) && !empty($usertype) && !is_numeric($user_name)) {

        // save to database
        $user_id = random_num(5);
        $query = "insert into user (user_id,username,password,gender,usertype,date) values ('$user_id','$user_name','$password','$gender','$usertype', NOW())";

        mysqli_query($con, $query);

        // log action
        if (isset($_SESSION['usertype'])) {
            $action = 'Added new user with username of ' . $user_name;
            $action_query = mysqli_query($con, "INSERT INTO logs (username, usertype, action, logdate) VALUES ('" . $user_data['username'] . "', '" . $user_data['usertype'] . "', '$action', NOW())");
        }

        $success_msg = "Added a new user successfully!";
    } else {
        echo "Please enter some valid information!";
    }
}

// update user data
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['btn_update'])) {
    $id = $_POST['edit_id'];

    $user_name = $_POST['username'];
    $password = $_POST['password'];
    $usertype = $_POST['user'];
    $gender = $_POST['gender'];

    $edit_query = "UPDATE user SET 
        username = '$user_name',
        password = '$password',
        usertype = '$usertype',
        gender = '$gender'
        WHERE id = $id";

    $updated_result = mysqli_query($con, $edit_query);

    if ($updated_result) {
        // log action
        $action = 'Updated user data with username of ' . $user_name;
        $action_query = mysqli_query($con, "INSERT INTO logs (username, usertype, action, logdate) VALUES ('" . $user_data['username'] . "', '" . $user_data['usertype'] . "', '$action', NOW())");

        $update_msg = "Updated user data successfully!";
    } else {
        $error_msg = "Please enter some valid information!";
    }
}

// delete user data
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['btn_delete'])) {
    $id = $_POST['delete_id'];
    $delete_query = "DELETE FROM user WHERE id = $id";
    $deleted_result = mysqli_query($con, $delete_query);

    if ($deleted_result) {
        // log action
        $action = 'Deleted user with user ID of ' . $id;
        $action_query = mysqli_query($con, "INSERT INTO logs (username, usertype, action, logdate) VALUES ('" . $user_data['username'] . "', '" . $user_data['usertype'] . "', '$action', NOW())");
       
        $delete_msg = "Deleted user data successfully!";
    }
}

// search data
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    if (isset($_GET['search'])) {
        $search_input = $_GET['search'];
        $result = mysqli_query($con, "SELECT * FROM user WHERE user_id LIKE '%$search_input%' OR username LIKE '%$search_input%' OR usertype LIKE '%$search_input%'");
    } else {
        $result = mysqli_query($con, "SELECT * FROM user");
    }
} else {
    $result = mysqli_query($con, "SELECT * FROM user");
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Registration</title>
    <!-- CSS FILES -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="../css/registration1.css" rel="stylesheet">
    <link href="../css/maincss.css" rel="stylesheet">
    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="../js/sweetalert.min.js"></script>
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
            <div class="row">
                <div class="col-lg-10 col-12 text-center mx-auto">
                    <h2 class="mb-5"><b>Create Account</b></h2>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="add-search-nav">
            <div class="add-user">
                <!-- add modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">
                    Add New User
                </button>

                <form action="" method="post">
                    <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModallabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header" style="background: #455d7a;">
                                    <h1 class="modal-title fs-5" style="color: white;" id="addModal">Add New Account</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>

                                <div class="modal-body">
                                    <div class="box form-box">
                                        <div class="field input">
                                            <label>Username</label>
                                            <input type="text" name="username" class="form-control rounded-left" placeholder="Username" required />
                                        </div>

                                        <div class="field input">
                                            <label>Password</label>
                                            <input type="password" name="password" class="form-control rounded-left" placeholder="Password" required />
                                        </div>
                                        <div class="gender-box">
                                            <label>Gender</label>
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
                                            <label>Office Role</label>
                                            <select class="form-select" name="user">
                                                <option hidden>Select Usertype</option>
                                                <option value="admin">System Admin</option>
                                                <option value="cos">Chief of Staff</option>
                                                <option value="officehead">Office Head</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-primary" name="btn_add">Submit</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- end of add modal -->
            </div>

            <!-- Search Form -->
            <div class="search-container">
                <form action="" method="GET" class="search-form">
                    <input type="text" name="search" id="search" class="search-input" placeholder="Enter a name" autocomplete="off">
                    <input type="submit" value="Search" class="search-button btn btn-primary btn-sm">
                </form>
            </div>
        </div>

        <form action="" method="post">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>USER ID</th>
                            <th>USERNAME</th>
                            <th>USER TYPE</th>
                            <th>ACTION</th>
                        </tr>
                    </thead>

                    <tbody class="table-group-divider">
                        <?php
                        if (mysqli_num_rows($result) > 0) {
                            while ($user_row = mysqli_fetch_assoc($result)) {
                        ?>
                                <tr>
                                    <td><?php echo $user_row['user_id'] ?></td>
                                    <td><?php echo $user_row['username'] ?></td>
                                    <td><?php echo $user_row['usertype'] ?></td>
                                    <td class="action-btn">
                                        <!-- edit modal -->
                                        <button type="button" class="btn btn-secondary" name="edit-btn" data-bs-toggle="modal" data-bs-target="#editModal<?php echo $user_row['id']; ?>">
                                            <i class="fa-solid fa-pen-to-square"></i>
                                        </button>

                                        <form action="" method="POST">
                                            <div class="modal fade" id="editModal<?php echo $user_row['id']; ?>" tabindex="-1" aria-labelledby="editModallabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header" style="background: #455d7a;">
                                                            <h1 class="modal-title fs-5" style="color: white;" id="editModallabel">Edit User Information</h1>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>

                                                        <div class="modal-body">
                                                            <div class="box form-box">
                                                                <div class="field input">
                                                                    <label>Username</label>
                                                                    <input type="text" name="username" placeholder="Username" value="<?php echo $user_row['username']; ?>" required />
                                                                </div>

                                                                <div class="field input">
                                                                    <label>Password</label>
                                                                    <input type="password" name="password" placeholder="Password" value="<?php echo $user_row['password']; ?>" required />
                                                                </div>
                                                                <div class="gender-box">
                                                                    <label>Gender</label>
                                                                    <div class="gender-option">
                                                                        <div class="gender">
                                                                            <input type="radio" id="check-male" name="gender" value="male" <?php echo ($user_row['gender'] == 'male') ? 'checked' : ''; ?> />
                                                                            <label for="check-male">Male</label>
                                                                        </div>
                                                                        <div class="gender">
                                                                            <input type="radio" id="check-female" name="gender" value="female" <?php echo ($user_row['gender'] == 'female') ? 'checked' : ''; ?> />
                                                                            <label for="check-female">Female</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="select-box">
                                                                    <label>Office Role</label>
                                                                    <select name="user">
                                                                        <option hidden><?php echo $user_row['usertype']; ?></option>
                                                                        <option value="admin">System Admin</option>
                                                                        <option value="cos">Chief of Staff</option>
                                                                        <option value="officehead">Office Head</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="modal-footer">
                                                            <input type="hidden" name="edit_id" value="<?php echo $user_row['id']; ?>">
                                                            <button type="submit" class="btn btn-primary" name="btn_update">Save Changes</button>
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <!-- end of edit modal -->

                                        <!-- delete button -->
                                        <button type="button" class="btn btn-danger" name="delete-btn" data-bs-toggle="modal" data-bs-target="#deleteModal<?php echo $user_row['id']; ?>">
                                            <i class="fa-solid fa-trash"></i>
                                        </button>

                                        <form action="" method="POST">
                                            <div class="modal fade" id="deleteModal<?php echo $user_row['id']; ?>" tabindex="-1" aria-labelledby="deleteModallabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header" style="background: #e74c3c;">
                                                            <h1 class="modal-title fs-5" style="color: white;" id="deleteModallabel">Confirm Delete</h1>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>

                                                        <div class="modal-body">
                                                            <p>Are you sure you want to delete this user?</p>
                                                        </div>

                                                        <div class="modal-footer">
                                                            <input type="hidden" name="delete_id" value="<?php echo $user_row['id']; ?>">
                                                            <button type="submit" class="btn btn-danger" name="btn_delete">Delete</button>
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <!-- end of delete button -->
                                    </td>
                                </tr>
                        <?php
                            }
                        } else {
                            echo "<tr><td colspan='4'>No records found</td></tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </form>
    </div>

    <script>
        <?php if ($success_msg) : ?>
            swal({
                title: "success",
                text: "<?php echo $success_msg; ?>",
                icon: "success",
                button: "close",
            }).then(function() {
                window.location.href = "../admin/registration.php";
            });
        <?php elseif ($update_msg) : ?>
            swal({
                title: "success",
                text: "<?php echo $update_msg; ?>",
                icon: "success",
                button: "close",
            }).then(function() {
                window.location.href = "../admin/registration.php";
            });
        <?php elseif ($delete_msg) : ?>
            swal({
                title: "success",
                text: "<?php echo $delete_msg; ?>",
                icon: "success",
                button: "close",
            }).then(function() {
                window.location.href = "../admin/registration.php";
            });
        <?php elseif ($error_msg) : ?>
            swal({
                text: "<?php echo $error_msg; ?>",
                icon: "error",
                button: "close",
            });
        <?php endif; ?>
    </script>
</body>

</html>