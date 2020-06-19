window.onload = init;

function init() {
	reset();
	startButton = document.getElementById("startButton");
	startButton.onclick = main;
	rerollButton = document.getElementById("rerollButton");
	rerollButton.onclick = reroll;
	resetButton = document.getElementById("resetButton");
	resetButton.onclick = reset;
	rerollItemsButton = document.getElementById("rerollItemsButton");
	rerollItemsButton.onclick = rerollItems;
	questButton = document.getElementById("questButton");
	questButton.onclick = randomQuest;
}

function startupCheck() {
	var version = "0.2.1";
	console.log("Starting RandomChamp version " + version);
}

function reset() {
	//resets all variables
	console.log("Resetting all variables!");
	globalCounter = 0;
	position1 = null;
	position2 = null;
	position3 = null;
	position4 = null;
	position5 = null;
	position = null;
	champion1 = null;
	champion2 = null;
	champion3 = null;
	champion4 = null;
	champion5 = null;
	champion = null;
	spella = null;
	spellb = null;
	smiteSpell = null;
	trinket = null;
	item1 = null;
	item2 = null;
	item3 = null;
	item4 = null;
	item5 = null;
	item6 = null;
	//clears the webpage
	var imageNames = ["imgPlayer1", "imgPlayer2", "imgPlayer3", "imgPlayer4", "imgPlayer5"];
	for (var i = 0; i < imageNames.length; i++) {
		var image = document.getElementById(imageNames[i]);
		image.src = "data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=";
	}
	var clearpage = ["Position1", "Position2", "Position3", "Position4", "Position5", "Champion1", "Champion2", "Champion3", "Champion4", "Champion5", "Spell1", "Spell2", "Spell3", "Spell4", "Spell5", "Trinket1", "Trinket2", "Trinket3", "Trinket4", "Trinket5", "Item1", "Item2", "Item3", "Item4", "Item5", "quest"];
	for (var i = 0; i < clearpage.length; i++) {
		var clear = document.getElementById(clearpage[i]);
		clear.innerHTML = "";
	}
	var checkbox = document.getElementById("DoubleItems");
	checkbox.disabled = "";

}

function setText(elem, str) {
	elem.innerHTML = str;
}

function main() {
	var checkbox = document.getElementById("DoubleItems");
	checkbox.disabled = "disabled";
	if (globalCounter > 4) {
		console.log("Please reset for a new spin!")
	}
	else {
		globalCounter = globalCounter + 1;
		if (globalCounter >= 6) {
			console.log("Please reset and continue.");
		}
		else {
			console.log("Pick number: " + globalCounter);
			randomPosition();
			printPosition();
			randomChampion();
			printChampion();
			if (globalCounter === 1) {
				replaceImage(champions[champion], "imgPlayer1");
			}
			else if (globalCounter === 2) {
				replaceImage(champions[champion], "imgPlayer2");
			}
			else if (globalCounter === 3) {
				replaceImage(champions[champion], "imgPlayer3");
			}
			else if (globalCounter === 4) {
				replaceImage(champions[champion], "imgPlayer4");
			}
			else {
				replaceImage(champions[champion], "imgPlayer5");
			}
			randomSpells();
			printSpells();
			randomTrinket();
			printTrinket();
			var checkbox = document.getElementById("DoubleItems");
			if (checkbox.checked) {
				randomItems(getChampionTag());
			}
			else {
				i = 0
				while (i !== 1) {
					randomItems(getChampionTag());
					if (noDoubleItems() === false) {
						i = 0;
					}
					else {
						i = 1;
					}
				}
			}
			printItems();
		}
	}
}

function reroll() {
	if (globalCounter === 0) {
		console.log("Please start first before rerolling")
	}
	else {
		randomChampion();
		printChampion();
		if (globalCounter === 1) {
			replaceImage(champions[champion], "imgPlayer1");
		}
		else if (globalCounter === 2) {
			replaceImage(champions[champion], "imgPlayer2");
		}
		else if (globalCounter === 3) {
			replaceImage(champions[champion], "imgPlayer3");
		}
		else if (globalCounter === 4) {
			replaceImage(champions[champion], "imgPlayer4");
		}
		else if (globalCounter === 5) {
			replaceImage(champions[champion], "imgPlayer5");
		}
		else {
			console.log("Please start first before rerolling")
		}
		var checkbox = document.getElementById("DoubleItems");
		if (checkbox.checked) {
			randomItems(getChampionTag());
		}
		else {
			i = 0
			while (i !== 1) {
				randomItems(getChampionTag());
				if (noDoubleItems() === false) {
					i = 0;
				}
				else {
					i = 1;
				}
			}
		}
		printItems();
	}
}

function rerollItems() {
	if (globalCounter === 0) {
		console.log("Please start first before item rerolling")
	}
	else {
		randomItems(getChampionTag());
		i = 0
		while (i !== 1) {
			randomItems(getChampionTag());
			if (noDoubleItems() === false) {
				i = 0;
			}
			else {
				i = 1;
			}
		}
		printItems();
	}
}

function getRandomInt(max) {
	//This function returns a random number between 0 and max (exclusive)
	return Math.floor(Math.random() * (max));
}

function randomPosition() {
	//Getting a random int between 0 and positionAmount
	done = 0;
	while (done !== 1) {
		randomInt = getRandomInt(positionAmount);
		if (randomInt === position1 || randomInt === position2 || randomInt === position3 || randomInt === position4 || randomInt === position5) {
			//nothing
		}
		else {
			if (globalCounter === 1) {
				position1 = randomInt;
			}
			else if (globalCounter === 2) {
				position2 = randomInt;
			}
			else if (globalCounter === 3) {
				position3 = randomInt;
			}
			else if (globalCounter === 4) {
				position4 = randomInt;
			}
			else {
				position5 = randomInt;
			}
			position = randomInt;
			done = 1;
		}

	}

}

function printPosition() {
	//printing the just made random position
	if (globalCounter === 1) {
		var position1text = document.getElementById("Position1");
		position1text.innerHTML = positions[position];
	}
	else if (globalCounter === 2) {
		var position2text = document.getElementById("Position2");
		position2text.innerHTML = positions[position];
	}
	else if (globalCounter === 3) {
		var position3text = document.getElementById("Position3");
		position3text.innerHTML = positions[position];
	}
	else if (globalCounter === 4) {
		var position4text = document.getElementById("Position4");
		position4text.innerHTML = positions[position];
	}
	else {
		var position5text = document.getElementById("Position5");
		position5text.innerHTML = positions[position];
	}
}

function randomChampion() {
	//Getting a random int between 0 and championAmount
	done = 0;
	while (done !== 1) {
		randomInt = getRandomInt(championAmount);
		if (randomInt === champion1 || randomInt === champion2 || randomInt === champion3 || randomInt === champion4 || randomInt === champion5) {
			//nothing
		}
		else {
			if (globalCounter === 1) {
				champion1 = randomInt;
			}
			else if (globalCounter === 2) {
				champion2 = randomInt;
			}
			else if (globalCounter === 3) {
				champion3 = randomInt;
			}
			else if (globalCounter === 4) {
				champion4 = randomInt;
			}
			else {
				champion5 = randomInt;
			}
			champion = randomInt;
			done = 1;
		}

	}

}

function printChampion() {
	//printing the just made random champion
	if (globalCounter === 1) {
		var champion1text = document.getElementById("Champion1");
		champion1text.innerHTML = champions[champion];
	}
	else if (globalCounter === 2) {
		var champion2text = document.getElementById("Champion2");
		champion2text.innerHTML = champions[champion];
	}
	else if (globalCounter === 3) {
		var champion3text = document.getElementById("Champion3");
		champion3text.innerHTML = champions[champion];
	}
	else if (globalCounter === 4) {
		var champion4text = document.getElementById("Champion4");
		champion4text.innerHTML = champions[champion];
	}
	else {
		var champion5text = document.getElementById("Champion5");
		champion5text.innerHTML = champions[champion];
	}
}

function randomSpells() {
	done = 0;
	while (done !== 1) {
		if (positions[position] === "Jungle") {
			spella = 5; //This is the smite spell (spells.js)
		}
		else {
			spella = getRandomInt(spellAmount);
		}
		spellb = getRandomInt(spellAmount);
		if (spella === spellb) {
			done = 0;
		}
		else {
			done = 1;
		}

	}
}

function printSpells() {
	if (globalCounter === 1) {
		var spell1text = document.getElementById("Spell1");
		spell1text.innerHTML = spells[spella] + "<br>" + spells[spellb];
	}
	else if (globalCounter === 2) {
		var spell2text = document.getElementById("Spell2");
		spell2text.innerHTML = spells[spella] + "<br>" + spells[spellb];
	}
	else if (globalCounter === 3) {
		var spell3text = document.getElementById("Spell3");
		spell3text.innerHTML = spells[spella] + "<br>" + spells[spellb];
	}

	else if (globalCounter === 4) {
		var spell4text = document.getElementById("Spell4");
		spell4text.innerHTML = spells[spella] + "<br>" + spells[spellb];
	}
	else {
		var spell5text = document.getElementById("Spell5");
		spell5text.innerHTML = spells[spella] + "<br>" + spells[spellb];
	}
}

function randomTrinket() {
	trinket = getRandomInt(trinketAmount);
}

function printTrinket() {
	if (globalCounter === 1) {
		var trinket1text = document.getElementById("Trinket1");
		trinket1text.innerHTML = trinkets[trinket];
	}
	else if (globalCounter === 2) {
		var trinket2text = document.getElementById("Trinket2");
		trinket2text.innerHTML = trinkets[trinket];
	}
	else if (globalCounter === 3) {
		var trinket3text = document.getElementById("Trinket3");
		trinket3text.innerHTML = trinkets[trinket];
	}
	else if (globalCounter === 4) {
		var trinket4text = document.getElementById("Trinket4");
		trinket4text.innerHTML = trinkets[trinket];
	}
	else {
		var trinket5text = document.getElementById("Trinket5");
		trinket5text.innerHTML = trinkets[trinket];
	}
}

function getChampionTag() {
	tag = null;
	done = 0;
	for (var i = 0; i < TankMax; i++) {
		if (Tank[i] === champions[champion]) {
			return "Tank";
		}
		else {
		}
	}
	for (var i = 0; i < ADTankMax; i++) {
		if (ADTank[i] === champions[champion]) {
			return "ADTank";
		}
		else {
		}
	}
	for (var i = 0; i < APTankMax; i++) {
		if (APTank[i] === champions[champion]) {
			return "APTank";
		}
		else {
		}
	}
	for (var i = 0; i < ManalessFighterMax; i++) {
		if (ManalessFighter[i] === champions[champion]) {
			return "ManalessFighter";
		}
		else {
		}
	}
	for (var i = 0; i < ADCasterMax; i++) {
		if (ADCaster[i] === champions[champion]) {
			return "ADCaster";
		}
		else {
		}
	}
	for (var i = 0; i < FighterMax; i++) {
		if (Fighter[i] === champions[champion]) {
			return "Fighter";
		}
		else {
		}
	}
	for (var i = 0; i < ManalessAssassinMax; i++) {
		if (ManalessAssassin[i] === champions[champion]) {
			return "ManalessAssassin";
		}
		else {
		}
	}
	for (var i = 0; i < AssassinMax; i++) {
		if (Assassin[i] === champions[champion]) {
			return "Assassin";
		}
		else {
		}
	}
	for (var i = 0; i < MageMax; i++) {
		if (Mage[i] === champions[champion]) {
			return "Mage";
		}
		else {
		}
	}
	for (var i = 0; i < ManalessMageMax; i++) {
		if (ManalessMage[i] === champions[champion]) {
			return "ManalessMage";
		}
		else {
		}
	}
	for (var i = 0; i < MarksmanMax; i++) {
		if (Marksman[i] === champions[champion]) {
			return "Marksman";
		}
		else {
		}
	}	

}

function randomItems(championtag) {
	item1 = Boots[getRandomInt(BootsAmount)];
	if (spells[spella] === "Smite" || spells[spellb] === "Smite") {
		item2 = JunglerItems[getRandomInt(JunglerItemsAmount)];
	}
	else if (positions[position] === "Bot lane (Support)") {
		item2 = SupportItems[getRandomInt(SupportItemsAmount)];
	}
	else {
		if (championtag === "Tank") {
			item2 = TankItems[getRandomInt(TankItemsAmount)];
		}
		else if (championtag === "ADTank") {
			item2 = ADTankItems[getRandomInt(ADTankItemsAmount)];
		}
		else if (championtag === "APTank") {
			item2 = APTankItems[getRandomInt(APTankItemsAmount)];
		}
		else if (championtag === "Fighter") {
			item2 = FighterItems[getRandomInt(FighterItemsAmount)];
		}
		else if (championtag === "ManalessFighter") {
			item2 = ManalessFighterItems[getRandomInt(ManalessFighterItemsAmount)];
		}
		else if (championtag === "ADCaster") {
			item2 = ADCasterItems[getRandomInt(ADCasterItemsAmount)];
		}
		else if (championtag === "Mage") {
			item2 = MageItems[getRandomInt(MageItemsAmount)];
		}
		else if (championtag === "ManalessMage") {
			item2 = ManalessMageItems[getRandomInt(ManalessMageItemsAmount)];
		}
		else if (championtag === "Assassin") {
			item2 = AssassinItems[getRandomInt(AssassinItemsAmount)];
		}
		else if (championtag === "ManalessAssassin") {
			item2 = ManalessAssassinItems[getRandomInt(ManalessAssassinItemsAmount)];
		}
		else if (championtag === "Marksman") {
			item2 = MarksmanItems[getRandomInt(MarksmanItemsAmount)];
		}
		else {
			console.log("No item tag to be read!");
		}

	}
	if (championtag === "Tank") {
		item3 = TankItems[getRandomInt(TankItemsAmount)];
		item4 = TankItems[getRandomInt(TankItemsAmount)];
		item5 = TankItems[getRandomInt(TankItemsAmount)];
		item6 = TankItems[getRandomInt(TankItemsAmount)];
	}
	else if (championtag === "ADTank") {
		item3 = ADTankItems[getRandomInt(ADTankItemsAmount)];
		item4 = ADTankItems[getRandomInt(ADTankItemsAmount)];
		item5 = ADTankItems[getRandomInt(ADTankItemsAmount)];
		item6 = ADTankItems[getRandomInt(ADTankItemsAmount)];
	}
	else if (championtag === "APTank") {
		item3 = APTankItems[getRandomInt(APTankItemsAmount)];
		item4 = APTankItems[getRandomInt(APTankItemsAmount)];
		item5 = APTankItems[getRandomInt(APTankItemsAmount)];
		item6 = APTankItems[getRandomInt(APTankItemsAmount)];
	}
	else if (championtag === "Fighter") {
		item3 = FighterItems[getRandomInt(FighterItemsAmount)];
		item4 = FighterItems[getRandomInt(FighterItemsAmount)];
		item5 = FighterItems[getRandomInt(FighterItemsAmount)];
		item6 = FighterItems[getRandomInt(FighterItemsAmount)];
	}
	else if (championtag === "ManalessFighter") {
		item3 = ManalessFighterItems[getRandomInt(ManalessFighterItemsAmount)];
		item4 = ManalessFighterItems[getRandomInt(ManalessFighterItemsAmount)];
		item5 = ManalessFighterItems[getRandomInt(ManalessFighterItemsAmount)];
		item6 = ManalessFighterItems[getRandomInt(ManalessFighterItemsAmount)];
	}
	else if (championtag === "ADCaster") {
		item3 = ADCasterItems[getRandomInt(ADCasterItemsAmount)];
		item4 = ADCasterItems[getRandomInt(ADCasterItemsAmount)];
		item5 = ADCasterItems[getRandomInt(ADCasterItemsAmount)];
		item6 = ADCasterItems[getRandomInt(ADCasterItemsAmount)];
	}
	else if (championtag === "Mage") {
		item3 = MageItems[getRandomInt(MageItemsAmount)];
		item4 = MageItems[getRandomInt(MageItemsAmount)];
		item5 = MageItems[getRandomInt(MageItemsAmount)];
		item6 = MageItems[getRandomInt(MageItemsAmount)];
	}
	else if (championtag === "ManalessMage") {
		item3 = ManalessMageItems[getRandomInt(ManalessMageItemsAmount)];
		item4 = ManalessMageItems[getRandomInt(ManalessMageItemsAmount)];
		item5 = ManalessMageItems[getRandomInt(ManalessMageItemsAmount)];
		item6 = ManalessMageItems[getRandomInt(ManalessMageItemsAmount)];
	}
	else if (championtag === "Assassin") {
		item3 = AssassinItems[getRandomInt(AssassinItemsAmount)];
		item4 = AssassinItems[getRandomInt(AssassinItemsAmount)];
		item5 = AssassinItems[getRandomInt(AssassinItemsAmount)];
		item6 = AssassinItems[getRandomInt(AssassinItemsAmount)];
	}
	else if (championtag === "ManalessAssassin") {
		item3 = ManalessAssassinItems[getRandomInt(ManalessAssassinItemsAmount)];
		item4 = ManalessAssassinItems[getRandomInt(ManalessAssassinItemsAmount)];
		item5 = ManalessAssassinItems[getRandomInt(ManalessAssassinItemsAmount)];
		item6 = ManalessAssassinItems[getRandomInt(ManalessAssassinItemsAmount)];
	}
	else if (championtag === "Marksman") {
		item3 = MarksmanItems[getRandomInt(MarksmanItemsAmount)];
		item4 = MarksmanItems[getRandomInt(MarksmanItemsAmount)];
		item5 = MarksmanItems[getRandomInt(MarksmanItemsAmount)];
		item6 = MarksmanItems[getRandomInt(MarksmanItemsAmount)];
	}
	else {
		console.log("No item tag to be read!");
	}

}

function printItems() {
	var itemDisplays = ["Item1", "Item2", "Item3", "Item4", "Item5"]
	var fillItem = document.getElementById(itemDisplays[globalCounter-1]);
	fillItem.innerHTML = item1 + "<br>" + item2 + "<br>" + item3 + "<br>" + item4 + "<br>" + item5 + "<br>" + item6;
}

function noDoubleItems() {
	if (item2 === item3 || item2 === item4 || item2 === item5 || item2 === item6 || item3 === item4 || item3 === item5 || item3 === item6 || item4 === item5 || item4 === item6 || item5 === item6) {
		return false;
	}
	else {
		return true;
	}
}

function randomQuest() {
	quest = getRandomInt(questAmount);
	fillQuest = document.getElementById("quest");
	fillQuest.value = quests[quest];
}


function replaceImage(championName, replaceName) {
	replaceSource = "images/champions/" + championName + ".png";
	console.log(replaceName)
	var image = document.getElementById(replaceName);
	image.src = replaceSource;
}

