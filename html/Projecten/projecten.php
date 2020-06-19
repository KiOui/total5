<!DOCTYPE HTML>
<html>
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/downloadPagina.css">
<head>
	<title> Projecten </title>
	<LINK REL="SHORTCUT ICON" HREF="../IMG/Logo.ico">
</head>

<script>
	var windowName = "projecten";
</script>

<body>

	<script>
		function makeLink(folder) {
			buffer = "./projectPagina.php?";
			buffer = buffer + "folder=" + folder;
			window.location.href = buffer;
		}

	</script>

	<?php include('../Header/header.html'); ?>

	<div class="middle-row">
		<ul class="item-list">


			<?php

				$dataFileName = "project.v";
				$dir = './';
				$files = scandir($dir);

				foreach ($files as $file) {
					if ($file != "." && $file != ".." && is_dir($file)) {
						if (is_file('./'.$file.'/'.$dataFileName)) {
							$fh = fopen('./'.$file.'/'.$dataFileName, 'r');
							$project_name = fgets($fh);
							$year = fgets($fh);
							$type = fgets($fh);
							fclose($fh);

							echo '
								<li onclick="makeLink(\''.$file.'\');">
									<div class="flex-box">
										<div class="item-name">'.$project_name.'</div>
										<div class="item-type">'.$type.'</div>
										<div class="item-year">'.$year.'</div>
									</div>
									<div class="download-button">Show more</div>
									<div class="line"></div>
								</li>';
						}
					}
				}

			?>
		</ul>	
	</div>
	<div class = "bottomRow">
		This webpage was created by KiOui
	</div>
</body>

</html>