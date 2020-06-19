<?php
	session_start();
	$error=''; // Variable To Store Error Message
	if (isset($_POST['submit'])) {
		if (empty($_POST['username']) || empty($_POST['password'])) {
			$username = $_POST['username'];
			$error = "Username or Password not entered";
		}
		else
		{

			$username = $_POST['username'];
			$password = $_POST['password'];



			$HOSTNAME = "localhost";
			$USERNAME = "login_system";
			$PASSWORD = "login.Total5.nl";
			$DATABASE = "TLogin";
			$TABLE = "user_login";

			$connection=mysqli_connect($HOSTNAME,$USERNAME,$PASSWORD,$DATABASE) or die("Error while connecting to database!");

			// To protect MySQL injection for Security purpose
			$username = preg_replace("/[^a-zA-Z0-9]+/", "", $username);
			$password = preg_replace("/[^a-zA-Z0-9]+/", "", $password);

			$QUERY = "SELECT * FROM " . $TABLE . " WHERE password=\"" . $password . "\" AND username=\"" . $username . "\";";


			// SQL query to fetch information of registerd users and finds user match.
			$query = mysqli_query($connection, $QUERY);
			$rows = mysqli_num_rows($query);

			if ($rows == 1) {
				$error = "Succes";
				$_SESSION['login_user'] = $username; // Initializing Session
				header("location: uitwerkingen.php"); // Redirecting To Other Page
			} 
			else {
				$error = "Credentials invalid";
			}
			mysqli_close($connection);
		}
	}
?>
