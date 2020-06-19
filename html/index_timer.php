<!DOCTYPE HTML>
<html>
<link rel="stylesheet" type="text/css" href="css/main.css">
<head>
	<title> Total 5 Homepage </title>
	<LINK REL="SHORTCUT ICON" HREF="./IMG/Logo.ico"/>

	<script src="./js/scroll.js"></script>
	<script>
		var windowName = "index";
	</script>

	<script>
		// Set the date we're counting down to
		var countDownDate = new Date("May 12, 2018 17:00:00").getTime();
		console.log(countDownDate);

		// Update the count down every 1 second
		var x = setInterval(function() {

		  // Get todays date and time
		  var now = new Date().getTime();

		  // Find the distance between now an the count down date
		  var distance = countDownDate - now;

		  // Time calculations for days, hours, minutes and seconds
		  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

		  // Display the result in the element with id="demo"
		  document.getElementById("timer").innerHTML = days + "d " + hours + "h "
		  + minutes + "m " + seconds + "s ";

		  // If the count down is finished, write some text 
		  if (distance < 0) {
		    clearInterval(x);
		    document.getElementById("timer").innerHTML = "Already started...";
		  }
		}, 1000);
	</script>

	<script>
        window.setTimeout(fadeBlock, 1000);
        window.setTimeout(fadeText, 1200);
        window.setTimeout(fadeArrow, 1600);
        function fadeBlock() {
            var fade = document.getElementById("fade");
            fade.style.opacity = 1;
        }
        function fadeText() {
            var fade = document.getElementById("total5");
            fade.style.opacity = 1;
        }
        function fadeArrow() {
            var fade = document.getElementById("timer");
            var fade2 = document.getElementById("topArrow");
            fade.style.opacity = 1;
            fade2.style.opacity = 1;
        }
    </script>
</head>

<body>

	<?php include('./Header/header.html'); ?>

	<div class = "logoRow" id="headerImage">
		<div class="square" id="fade">
			<p class = "logoP"; id= "total5">Reuniting Total 5</p>
			<p id="timer" class="timer"></p>
			<div class="clickable" onclick="scrollToY(document.getElementById('headerImage').clientHeight + document.getElementById('nav').clientHeight, 5, 'easeInOutQuint');"><i class="arrow down" id="topArrow topArrow2"></i></div>
		</div>
	</div>
	<div class="recap" id="scrollTo">
		<div class="banner-bottom banner">
			<p class="book">All uploaded recaps are available here<div class="clickable" onclick="window.location.href = './Samenvattingen/samenvattingen.php';"><i class="arrow right" id="topArrow"></i></div></p>
		</div>
	</div>
	<div class="league">
		<div class="banner-top banner">
			<p class="lol">Make your LoL game more challenging</p>
		</div>
		<div class="banner-bottom banner">
			<p class="lol">Pick a random champion now<div class="clickable" onclick="window.location.href = './RandomChamp/randomchamp.php';"><i class="arrow right" id="topArrow"></i></div></p>
		</div>
	</div>
	<div class="projects">
		<div class="banner-top banner">
			<p class="lol">Projects made by Total 5</p>
		</div>
		<div class="banner-bottom banner">
			<p class="lol">Check them out<div class="clickable" onclick="window.location.href = './Projecten/projecten.php';"><i class="arrow right" id="topArrow"></i></div></p>
		</div>
	</div>
	<div class = "bottomRow">
		This webpage was created by KiOui
	</div>
</body>

</html>