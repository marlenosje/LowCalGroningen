var mockUpMenuGegevens = [
	{
		MenuNaam: "Tagliatelli",
		AantalCalorien: 300,
		MenuPlaatjeUrl: "https://www.solo.be/uploadedimages/recepten/afbeeldingen/642/436/27122010125838_tagliatelle-zalm-prei.jpg",
		RestaurantNaam: "Giovanni"
	}, {
		MenuNaam: "Tagliatelli2",
		AantalCalorien: 200,
		MenuPlaatjeUrl: "https://www.solo.be/uploadedimages/recepten/afbeeldingen/642/436/27122010125838_tagliatelle-zalm-prei.jpg",
		RestaurantNaam: "Giovanni"
	}, {
		MenuNaam: "Tagliatelli3",
		AantalCalorien: 600,
		MenuPlaatjeUrl: "https://www.solo.be/uploadedimages/recepten/afbeeldingen/642/436/27122010125838_tagliatelle-zalm-prei.jpg",
		RestaurantNaam: "Giovanni"
	}, {
		MenuNaam: "Tagliatelli4",
		AantalCalorien: 300,
		MenuPlaatjeUrl: "https://www.solo.be/uploadedimages/recepten/afbeeldingen/642/436/27122010125838_tagliatelle-zalm-prei.jpg",
		RestaurantNaam: "Giovanni"
	}, {
		MenuNaam: "Tagliatelli5",
		AantalCalorien: 100,
		MenuPlaatjeUrl: "https://www.solo.be/uploadedimages/recepten/afbeeldingen/642/436/27122010125838_tagliatelle-zalm-prei.jpg",
		RestaurantNaam: "Giovanni"
	},
]
var lowCalGroningenUrl = "https://localhost:5001/api/menus/";
//"https://meteoserver.nl/api/liveweer.php?lat=52.1052957&long=5.1806729&key=02462ed844"; 

var restaurantsOphalenUrl = "https://localhost:5001/api/restaurants";

function submitCal() {
	console.log(document.getElementById("invoer-calorieen").value);
	var calorieen = document.getElementById("invoer-calorieen").value;
	menuGegevensOphalen(calorieen);
}
function showValue(id, value) {
	document.getElementById(id).textContent = value;
}
function verbergOpties() {
	var filter = document.getElementById("keuze-afhaal-etc");
	filter.style.display = "none";
	var button = document.getElementById("uitgebreidZoeken");
	button.textContent = "Uitgebreid zoeken";
}
function toonOpties() {
	var filter = document.getElementById("keuze-afhaal-etc");
	filter.style.display = "block";
	var button = document.getElementById("uitgebreidZoeken");
	button.textContent = "Verbergen";
}
function uitgebreidZoeken() { // toggle
	var filter = document.getElementById("keuze-afhaal-etc");
	if (filter.style.display == "block") {
		verbergOpties();
	} else {
		toonOpties();
	}
}
function onload() {
	verbergOpties();
	//menuGegevensOphalen();
	restaurantsOphalen();
	// populateTiles(mockUpMenuGegevens);
}
function restaurantsOphalen() {
	$.get(restaurantsOphalenUrl, function (data) {
		console.log(data);
	});
}
function menuGegevensOphalen(calorieen) {
	$.get(lowCalGroningenUrl + calorieen, function (data) {
		console.log(data);
		populateTiles(data);
	});
}
function populateTiles(menugegevens) {
	console.log(menugegevens);
	//var container = document.getElementById ("tilesContainer");
	//console.log(menugegevens[0]);
	for (var i = 0; i < 5; i++) {
		var menu = menugegevens[i];
		var tile = document.createElement('div');
		tile.className='tile';
		//tile.appendChild(document.createTextNode('Restaurant Halleluja'));
		var naamMenu = document.createElement('div');
		naamMenu.className = 'naamMenu';
		naamMenu.appendChild(document.createTextNode(menu.MenuNaam));
		tile.appendChild(naamMenu);

		var aantalCalorien = document.createElement('div');
		aantalCalorien.id = 'aantal-calorien';
		aantalCalorien.appendChild(document.createTextNode(menu.AantalCalorien));
		tile.appendChild(aantalCalorien);
		
		var imgContainer = document.createElement('div');
		imgContainer.className = 'imgContainer';
		var plaatje = document.createElement('img');
		plaatje.src = menu.MenuPlaatjeUrl;
		imgContainer.appendChild(plaatje);
		tile.appendChild(imgContainer);
		document.getElementById("tilesContainer").appendChild(tile);	
	}
}
function verbergOpties() {
	var filter = document.getElementById("keuze-afhaal-etc");
	filter.style.display = "none";
	var button = document.getElementById("uitgebreidZoeken");
	button.textContent = "Uitgebreid zoeken";
}
function toonOpties() {
	var filter = document.getElementById("keuze-afhaal-etc");
	filter.style.display = "block";
	var button = document.getElementById("uitgebreidZoeken");
	button.textContent = "Verbergen";
}
function uitgebreidZoeken() { // toggle
	var filter = document.getElementById("keuze-afhaal-etc");
	if (filter.style.display == "block") {
		verbergOpties();
	} else {
		toonOpties();
	}
}
function selecteerAlles() {
	var checkbox1 = document.getElementById("uit-eten");
	var checkbox2 = document.getElementById("afhalen");
	var checkbox3 = document.getElementById("bezorgen");
	checkbox1.checked = true;
	checkbox2.checked = true;
	checkbox3.checked = true;
}