<!DOCTYPE HTML>
<html>
<link rel="stylesheet" type="text/css" href="css/main.css?v=1.1">
<head>
	<title> Total 5 Homepage </title>
	<LINK REL="SHORTCUT ICON" HREF="./IMG/Logo.ico">
</head>

<script src="./js/scroll.js"></script>
<script>
	var windowName = "index";
</script>

<body>

	<?php include('./Header/header.html'); ?>

	<div class = "logoRow" id="headerImage">
		<div class="square">
			<p class = "logoP"; id= "bigT">T</p>
			<p class = "logoP"; id= "total5">TOTAL 5</p>
			<div class="clickable" onclick="scrollToY(document.getElementById('headerImage').clientHeight + document.getElementById('nav').clientHeight + 1, 5, 'easeInOutQuint');"><i class="arrow down" id="topArrow"></i></div>
		</div>
	</div>
	<div class="text-block">
		<div class="text-block-float">
			<h1>Welcome to Total 5!</h1>
			<p>This site is used to host all exercise answers, recaps and projects created by the Total 5 team. They can be accessed by clicking the respective link in the header. Take a look around! Maybe you will find something useful.</p>
		</div>
	</div>
	<div class="head-bar">
		<h1>Recent projects</h1>
	</div>
	<div class="body-same-blocks">
		<div class="body-same-blocks-element" style="background-image: url('./IMG/beestfeest-screenshot.png');" onclick="window.location.href = 'http://beestfeest.com';">
			<div class="body-same-block-align-text">
				<div>BeestFeest</div>
			</div>
		</div>
		<div class="body-same-blocks-element" style="background-image: url('./IMG/eco-board-screenshot.png');" onclick="window.location.href = 'https://ecoboardcompany.com';">
			<div class="body-same-block-align-text">
				<div>Ecoboardcompany</div>
			</div>
		</div>
		<div class="body-same-blocks-element" style="background-image: url('./IMG/sunportal-screenshot.png');" onclick="window.location.href = 'http://sunportal.nl';">
			<div class="body-same-block-align-text">
				<div>Sunportal</div>
			</div>
		</div>
		<div class="body-same-blocks-element">
			<div class="body-same-block-align-text" onclick="window.location.href = 'http://4thparadox.total5.nl';">
				<div>4thparadox<br>(in development)</div>
			</div>
		</div>
	</div>
	<div class = "bottomRow">
		This webpage was created by KiOui
	</div>
</body>

</html>