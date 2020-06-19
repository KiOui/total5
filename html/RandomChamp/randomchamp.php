<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Randomchamp</title>
<script src="js/champions.js"></script>
<script src="js/positions.js"></script>
<script src="js/spells.js"></script>
<script src="js/trinkets.js"></script>
<script src="js/championtags.js"></script>
<script src="js/items.js"></script>
<script src="js/quests.js"></script>
<script src="js/Randomchampwebsite.js"></script>
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="./css/randomchamp.css">
<LINK REL="SHORTCUT ICON" HREF="../IMG/Logo.ico">
</head>

<script>
	var windowName = "randomchamp";
</script>

<body>

	<?php include('../Header/header.html'); ?>

<!--
		<div class = "contentDiv">
		    <div class = "divPlayer">
		        <p class="playerText"><font size="6">Player 1</font></p>
		        <p><input type= "text" id= "Player1" size= "20" placeholder = "Name Player 1"></p>
		        <div class = "image"><img id= "imgPlayer1" src= images/noselection.jpg></div>
		        <p><font size= "4">Champion</font></p>
		        <p><input type= "text" id ="Champion1" size= "20" readonly></p>
		        <p><font size= "4">Position</font></p>
		        <p><input type = "text" id = "Position1" size = "20" readonly></p>
		        <p><font size="4">Spells</font></p>
		        <p><input type= "text"id = "Spell1a" size= "20" readonly>  <input type= "text"id = "Spell1b" size= "20" readonly></p>
		        <p><font size="4">Trinket</font></p>
		        <p><input type= "text" id = "Trinket1" size= "20" readonly></p>
		        <p><font size="4">Items</font></p>
		        <p><input type="text" id="Item1a" size="20" readonly>  <input type="text" id="Item1b" size= "20" readonly></p>
		        <p><input type="text" id="Item1c" size="20" readonly>  <input type="text" id="Item1d" size= "20" readonly></p>
		        <p><input type="text" id="Item1e" size="20" readonly>  <input type="text" id="Item1f" size= "20" readonly></p>
		    </div>

		    <div class = "divPlayer">
		        <p class="playerText"><font size="6">Player 2</font></p>
		        <p><input type= "text" id= "Player2" size= "20" placeholder = "Name Player 2"></p>
		        <div class = "image"><img id= "imgPlayer2" src= images/noselection.jpg></div>
		        <p><font size= "4">Champion</font></p>
		        <p><input type= "text" id ="Champion2" size= "20" readonly></p>
		        <p><font size= "4">Position</font></p>
		        <p><input type = "text" id = "Position2" size = "20" readonly></p>
		        <p><font size="4">Spells</font></p>
		        <p><input type= "text"id = "Spell2a" size= "20" readonly>  <input type= "text"id = "Spell2b" size= "20" readonly></p>
		        <p><font size="4">Trinket</font></p>
		        <p><input type= "text" id = "Trinket2" size= "20" readonly></p>
		        <p><font size="4">Items</font></p>
		        <p><input type="text" id="Item2a" size="20" readonly>  <input type="text" id="Item2b" size= "20" readonly></p>
		        <p><input type="text" id="Item2c" size="20" readonly>  <input type="text" id="Item2d" size= "20" readonly></p>
		        <p><input type="text" id="Item2e" size="20" readonly>  <input type="text" id="Item2f" size= "20" readonly></p>
		    </div>

		    <div class = "divPlayer">
		        <p class="playerText"><font size="6">Player 3</font></p>
		        <p><input type= "text" id= "Player3" size= "20" placeholder = "Name Player 3"></p>
		        <div class = "image"><img id= "imgPlayer3" src= images/noselection.jpg></div>
		        <p><font size= "4">Champion</font></p>
		        <p><input type= "text" id ="Champion3" size= "20" readonly></p>
		        <p><font size= "4">Position</font></p>
		        <p><input type = "text" id = "Position3" size = "20" readonly></p>
		        <p><font size="4">Spells</font></p>
		        <p><input type= "text"id = "Spell3a" size= "20" readonly>  <input type= "text"id = "Spell3b" size= "20" readonly></p>
		        <p><font size="4">Trinket</font></p>
		        <p><input type= "text" id = "Trinket3" size= "20" readonly></p>
		        <p><font size="4">Items</font></p>
		        <p><input type="text" id="Item3a" size="20" readonly>  <input type="text" id="Item3b" size= "20" readonly></p>
		        <p><input type="text" id="Item3c" size="20" readonly>  <input type="text" id="Item3d" size= "20" readonly></p>
		        <p><input type="text" id="Item3e" size="20" readonly>  <input type="text" id="Item3f" size= "20" readonly></p>
		    </div>

		    <div class = "divPlayer">
		        <p class="playerText"><font size="6">Player 4</font></p>
		        <p><input type= "text" id= "Player4" size= "20" placeholder = "Name Player 4"></p>
		        <div class = "image"><img id= "imgPlayer4" src= images/noselection.jpg></div>
		        <p><font size= "4">Champion</font></p>
		        <p><input type= "text" id ="Champion4" size= "20" readonly></p>
		        <p><font size= "4">Position</font></p>
		        <p><input type = "text" id = "Position4" size = "20" readonly></p>
		        <p><font size="4">Spells</font></p>
		        <p><input type= "text"id = "Spell4a" size= "20" readonly>  <input type= "text"id = "Spell4b" size= "20" readonly></p>
		        <p><font size="4">Trinket</font></p>
		        <p><input type= "text" id = "Trinket4" size= "20" readonly></p>
		        <p><font size="4">Items</font></p>
		        <p><input type="text" id="Item4a" size="20" readonly>  <input type="text" id="Item4b" size= "20" readonly></p>
		        <p><input type="text" id="Item4c" size="20" readonly>  <input type="text" id="Item4d" size= "20" readonly></p>
		        <p><input type="text" id="Item4e" size="20" readonly>  <input type="text" id="Item4f" size= "20" readonly></p>
		    </div>

		    <div class = "divPlayer">
		        <p class="playerText"><font size="6">Player 5</font></p>
		        <p><input type= "text" id= "Player5" size= "20" placeholder = "Name Player 5"></p>
		        <div class = "image"><img id= "imgPlayer5" src= images/noselection.jpg></div>
		        <p><font size= "4">Champion</font></p>
		        <p><input type= "text" id ="Champion5" size= "20" readonly></p>
		        <p><font size= "4">Position</font></p>
		        <p><input type = "text" id = "Position5" size = "20" readonly></p>
		        <p><font size="4">Spells</font></p>
		        <p><input type= "text"id = "Spell5a" size= "20" readonly>  <input type= "text"id = "Spell5b" size= "20" readonly></p>
		        <p><font size="4">Trinket</font></p>
		        <p><input type= "text" id = "Trinket5" size= "20" readonly></p>
		        <p><font size="4">Items</font></p>
		        <p><input type="text" id="Item5a" size="20" readonly>  <input type="text" id="Item5b" size= "20" readonly></p>
		        <p><input type="text" id="Item5c" size="20" readonly>  <input type="text" id="Item5d" size= "20" readonly></p>
		        <p><input type="text" id="Item5e" size="20" readonly>  <input type="text" id="Item5f" size= "20" readonly></p>
		    </div>
		</div> -->

</body>
</html>
