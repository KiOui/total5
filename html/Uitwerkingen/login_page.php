<!DOCTYPE HTML>
<html>
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="./css/login_page.css">
<head>
	<title> Uitwerkingen </title>
	<LINK REL="SHORTCUT ICON" HREF="../IMG/Logo.ico">
</head>

<script>
	var windowName = "uitwerkingen";
</script>

<body>

	<script>
		function makeLink(folder) {
			buffer = "./downloadPagina.php?";
			buffer = buffer + "folder=" + folder;
			window.location.href = buffer;
		}

	</script>

	<?php include('../Header/header.html'); ?>
	<?php

		include('login.php');

		if (isset($_SESSION['login_user'])) {
			header("location: uitwerkingen.php");
		}
	?>

	<div class="middleRow">
		<div class="login-section">
			<div class="big-login">
				Login
			</div>
			<div class="login">
				<form action="" method="post" id="frmLogin">
					<label>Username</label>
					<input id="name" name="username" placeholder="Username" type="text">
					<label>Password</label>
					<input id="password" name="password" placeholder="Password" type="password">
					<input name="submit" type="submit" value="Login">    
					<span><?php echo $error; ?></span>
				</form>
			</div>
		</div>
	</div>
	<div class = "bottomRow">
		This webpage was created by KiOui
	</div>
</body>

</html>