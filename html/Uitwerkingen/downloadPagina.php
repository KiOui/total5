<!DOCTYPE HTML>
<html>
<link rel="stylesheet" type="text/css" href="../css/downloadPagina.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<head>
	<title>
		<?php

			$folder = $_GET['folder'];

			$folder = preg_replace("/[^a-zA-Z0-9]+/", "", $folder);

			$course = "";
			$year = "";

			if (is_dir('./'.$folder)) {
				$fh = fopen('./'.$folder.'/courseName.v', 'r');
				$course = fgets($fh);
				$year = fgets($fh);
				fclose($fh);
			}
			else {
				$course = "null";
				$year = "null";
			}

			echo($course);

		?>
	</title>
	<LINK REL="SHORTCUT ICON" HREF="../IMG/Logo.ico">
	<!-- Global Site Tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-110459600-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-110459600-1');
	</script>
</head>

<body>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<div class='nav-bar'>
		<ul class="header-list">
		  <li><a href="./uitwerkingen.php"><i class="arrow left"></i>Back</a></li>
		</ul>
	</div>
	
	<div class="middle-row">
		<ul class="item-list">
			<?php


				$extensions = array("PDF", "ZIP");
				
				foreach ($extensions as $extension) {
					$dirFiles = array();
					if (is_dir('./'.$folder.'/'.$extension)) {
						if ($handle = opendir('./'.$folder.'/'.$extension)) {
						   	while (false !== ($file = readdir($handle))) {
						   		if ($file != "." && $file != "..") {
						            $dirFiles[] = $file;
						        }
						    }
						  	closedir($handle);
						}

						sort($dirFiles, SORT_NATURAL);

						foreach($dirFiles as $file) {
							echo '
							<li onclick="location.href=\''.$folder.'/'.$extension.'/'.$file.'\'">
								<div class="flex-box">
									<div class="item-name">'.$file.'</div>
									<div class="item-type">'.$extension.'</div>
									<div class="item-year">'.$year.'</div>
								</div>
								<div class="download-button">Click to download</div>
								<div class="line"></div>
							</li>';
						}
					}
				}

			?>
		</ul>

	</div>

	<div class = "bottom-row">
		This webpage was created by KiOui.

		<?php
			echo(' '.$course.' '.$year.'.');
		?>
	</div>

</body>

</html>

