<!DOCTYPE HTML>
<html>
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="./css/uitwerkingen.css">
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

	<div class="middleRow">


		<?php
				$dataFileName = "courseName.v";
				$dir = './';
				$files = scandir($dir);

				foreach ($files as $file) {
					if ($file != "." && $file != ".." && is_dir($file)) {
						if (is_file('./'.$file.'/'.$dataFileName)) {
							$fh = fopen('./'.$file.'/'.$dataFileName, 'r');
							$course = fgets($fh);
							$year = fgets($fh);
							$short = fgets($fh);
							fclose($fh);

							echo("
								<div class=\"item\" onclick=\"makeLink('".$file."');\">
									<p class=\"bigLetters\">".$short."</p>
									<p class=\"smallLetters\">".$course."</p>
									<p class=\"year\">".$year."</p>
								</div>
							");
						}
					}
				}

		?>		
	</div>
	<div class = "bottomRow">
		This webpage was created by KiOui
	</div>
</body>

</html>