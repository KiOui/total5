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

	<div class="wrapper">

		<div class= "contentDiv">
			<div class= "divPlayer">
				<img class="playerImage" id="imgPlayer1">
				<div class="rightDiv">
					<div class="playerChampion">
						<div id="Champion1">Player 1</div>
						<div id="Position1">Midlane</div>
					</div>
					<div class="playerSpells">
						<div id="Spell1">Spell<br>Spell</div>
						<div id="Trinket1">Trinket</div>
					</div>
					<div class="playerItems">
						<div id="Item1">Item<br>Item<br>Item<br>Item<br>Item<br>Item</div>
					</div>
				</div>
			</div>
		</div>
		<div class= "contentDiv">
			<div class= "divPlayer">
				<img class="playerImage" id="imgPlayer2">
				<div class="rightDiv">
					<div class="playerChampion">
						<div id="Champion2">Player 1</div>
						<div id="Position2">Midlane</div>
					</div>
					<div class="playerSpells">
						<div id="Spell2">Spell<br>Spell</div>
						<div id="Trinket2">Trinket</div>
					</div>
					<div class="playerItems">
						<div id="Item2">Item<br>Item<br>Item<br>Item<br>Item<br>Item</div>
					</div>
				</div>
			</div>
		</div>
		<div class= "contentDiv" style="visibility: hidden">
			<div class= "divPlayer">
				<img class="playerImage" id="imgPlayer3">
				<div class="rightDiv">
					<div class="playerChampion">
						<div id="Champion3">Player 1</div>
						<div id="Position3">Midlane</div>
					</div>
					<div class="playerSpells">
						<div id="Spell3">Spell<br>Spell</div>
						<div id="Trinket3">Trinket</div>
					</div>
					<div class="playerItems">
						<div id="Item3">Item<br>Item<br>Item<br>Item<br>Item<br>Item</div>
					</div>
				</div>
			</div>
		</div>
		<div class= "contentDiv" style="visibility: hidden">
			<div class= "divPlayer">
				<img class="playerImage" id="imgPlayer4">
				<div class="rightDiv">
					<div class="playerChampion">
						<div id="Champion4">Player 1</div>
						<div id="Position4">Midlane</div>
					</div>
					<div class="playerSpells">
						<div id="Spell4">Spell<br>Spell</div>
						<div id="Trinket4">Trinket</div>
					</div>
					<div class="playerItems">
						<div id="Item4">Item<br>Item<br>Item<br>Item<br>Item<br>Item</div>
					</div>
				</div>
			</div>
		</div>
		<div class= "contentDiv" style="visibility: hidden">
			<div class= "divPlayer">
				<img class="playerImage" id="imgPlayer5">
				<div class="rightDiv">
					<div class="playerChampion">
						<div id="Champion5">Player 1</div>
						<div id="Position5">Midlane</div>
					</div>
					<div class="playerSpells">
						<div id="Spell5">Spell<br>Spell</div>
						<div id="Trinket5">Trinket</div>
					</div>
					<div class="playerItems">
						<div id="Item5">Item<br>Item<br>Item<br>Item<br>Item<br>Item</div>
					</div>
				</div>
			</div>
		</div>

	    <div class = "bottomRow">
	        
	        <div class="buttonDiv">
	            <p>
	                <input type= "button" id="startButton" value="Start">
	                <input type= "button" id="rerollButton" value= "Reroll">
	                <input type="button" id="rerollItemsButton" value="Reroll Items">
	                <input type= "button" id= "resetButton" value="Reset">
	                <input type= "button" id="questButton" value= "Quest">
			        Allow double items: <input type= "checkbox" name="Allow double items" id="DoubleItems">
	            </p>
	            <p>
	                <input type= "text" id= "quest" size="100%" placeholder= "Quest"  readonly>
	            </p>
	            <p>
	            	A new portable version is out, download it from here: <a class="download" href="./Download/RandomChamp.zip">RandomChamp portable version</a>
	            </p>
	        	

	        </div>
	        <div class = "createdBy">
				This webpage was created by KiOui
			</div>
	    </div>
	</div>
</body>
</html>
