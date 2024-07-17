<?php

session_start();


include("connection.php");
include("functions.php");

$error_msg = "";
if ($_SERVER['REQUEST_METHOD'] == "POST") {
	//something was posted
	$user_name = $_POST['user'];
	$password = $_POST['pass'];

	if (!empty($user_name) && !empty($password) && !is_numeric($user_name)) {

		//read from database
		$query = "select * from user where username = '$user_name' limit 1";
		$result = mysqli_query($con, $query);

		if ($result) {
			if ($result && mysqli_num_rows($result) > 0) {

				$user_data = mysqli_fetch_assoc($result);

				if ($user_data['password'] === $password) {

					$_SESSION['user_id'] = $user_data['user_id'];
					$_SESSION['username'] = $user_data['username'];
					$_SESSION['usertype'] = $user_data['usertype'];

					// log action for successful login
					$action = 'User ' . $user_data['username'] . ' logged in successfully';
					$action_query = mysqli_query($con, "INSERT INTO logs (username, usertype, action, logdate) VALUES ('" . $user_data['username'] . "', '" . $user_data['usertype'] . "', '$action', NOW())");

					if ($user_data["usertype"] == "admin") {
						$_SESSION['usertype'] = "admin";
						header("Location: admin/admin.php");
						die;
					} else if ($user_data["usertype"] == "cos") {
						$_SESSION['usertype'] = "cos";
						header("Location: cos/cos.php");
						die;
					} else if ($user_data["usertype"] == "officehead") {
						$_SESSION['usertype'] = "officehead";
						header("Location: officehead/officehead.php");
						die;
					}
				}
			}
		}
		// log action for unsuccessful login
		$action = 'User ' . $user_data['username'] . ' login unsuccessful';
		$action_query = mysqli_query($con, "INSERT INTO logs (username, usertype, action, logdate) VALUES ('$user_name', '" . $user_data['usertype'] . "', '$action', NOW())");

		$error_msg = "INCORRECT USERNAME OR PASSWORD!";
	} else {
		header("Location: login.php");
	}
}

?>

<!doctype html>
<html lang="en">

<head>
	<title>Login</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/login color.css">

</head>

<body>
	<form action="login.php" method="post">
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section"></h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-7 col-lg-5">
						<div class="login-wrap p-4 p-md-5">
							<div class="icon d-flex align-items-center justify-content-center">
								<span class="fa fa-user-o"></span>
							</div>
							<h3 class="text-center mb-4">Sign In</h3>
							<div class="form-group">
								<input type="text" name="user" class="form-control rounded-left" placeholder="Username" required>
							</div>
							<div class="form-group d-flex">
								<input type="password" name="pass" class="form-control rounded-left" placeholder="Password" required>
							</div>
							<div class="form-group">
								<button type="submit" name="submit" class="form-control btn btn-primary rounded submit px-3">Login</button>
							</div>
							<div class="form-group d-flex align-items-center justify-content-center">
								<div id="result" style="text-align: center; color: red;">
									<span><?php echo $error_msg ?></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>

	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>