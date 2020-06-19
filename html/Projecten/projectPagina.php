<!DOCTYPE HTML>
<html>
<link rel="stylesheet" type="text/css" href="./css/projectPagina.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<head>
	<title>
		<?php

			$folder = $_GET['folder'];

			$folder = preg_replace("/[^a-zA-Z0-9]+/", "", $folder);

			$project_name = "";
			$year = "";

			if (is_dir('./'.$folder)) {
				$fh = fopen('./'.$folder.'/project.v', 'r');
				$project_name = fgets($fh);
				$year = fgets($fh);
				fclose($fh);
			}
			else {
				$project_name = "null";
				$year = "null";
			}

			echo($project_name);

		?>
	</title>
	<LINK REL="SHORTCUT ICON" HREF="../IMG/Logo.ico">
</head>

<body>

	<script>
		function makeLink(buffer) {
			window.location.href = buffer;
		}

	</script>
	
	<div class='nav-bar'>
		<ul class="header-list">
		  <li><a href="./projecten.php"><i class="arrow left"></i>Back</a></li>
		</ul>
	</div>
	
	<div class="middle-row">
		
		<?php
			$dataFileName = "projectDescription.v";
			$dir = './';

			$skillFileName = "skills.v";

			if (is_file('./'.$folder.'/'.$dataFileName)) {
				$fh = fopen('./'.$folder.'/'.$dataFileName, 'r');
				$description = fgets($fh);
				$url = fgets($fh);
				$url = str_replace("\n", "", $url);
				$online = fgets($fh);
				fclose($fh);

				echo('
					<div class="project-window">
						<h2>'.$project_name.'</h2>
						<div class="line"></div>
						<div class="project-box">
							<div class="project-description">
								'.$description.'
							</div>
							<div class="project-skills">
								<ul class="skill-list">
				');

				if(is_file('./'.$folder.'/'.$skillFileName)) {
					// Open the file
					$fp = @fopen('./'.$folder.'/'.$skillFileName, 'r'); 

					// Add each line to an array
					$array = explode("\n", fread($fp, filesize('./'.$folder.'/'.$skillFileName)));

					foreach($array as $item) {
						echo('
							<li>'.$item.'</li>
						');
					}
				}

				echo('
							</ul>
						</div>
					</div>
				');

				if (strcmp($online, "true") == 0) {
					echo('
						<div class="link" onclick="window.location.href=\''.$url.'\';">Link to project <i class="arrow right"></i></div>
					');
				}
				else {
					echo('
						<div class="dead-link">No link exists for this project</div>
					');
				}
				echo('
					</div>
				');
			}
		?>

	</div>

	<div class = "bottomRow">
		This webpage was created by KiOui.

		<?php
			echo(' '.$project_name.' '.$year.'.');
		?>
	</div>

</body>

</html>

