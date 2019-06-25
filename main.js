var mockUpMenuGegevens = [
	{
		MenuNaam: "Oosters",
		calorieen: 300,
		menuPlaatjeUrl: "https://cdn.pixabay.com/photo/2018/04/13/17/14/vegetable-skewer-3317060_960_720.jpg",
		RestaurantNaam: "Giovanni"
	}, {
		MenuNaam: "Italiaans",
		calorieen: 200,
		menuPlaatjeUrl: "https://cdn.pixabay.com/photo/2017/10/06/17/43/noodles-2823942_960_720.jpg",
		RestaurantNaam: "Giovanni"
	}, {
		MenuNaam: "Australisch",
		calorieen: 600,
		menuPlaatjeUrl: "https://cdn.pixabay.com/photo/2018/09/14/11/12/food-3676796_960_720.jpg",
		RestaurantNaam: "Giovanni"
	}, {
		MenuNaam: "Mexicaans",
		calorieen: 300,
		menuPlaatjeUrl: "https://cdn.pixabay.com/photo/2016/08/23/08/53/tacos-1613795__340.jpg",
		RestaurantNaam: "Giovanni"
	}, {
		MenuNaam: "Frans",
		calorieen: 100,
		menuPlaatjeUrl: "https://cdn.pixabay.com/photo/2015/05/02/06/47/gourmet-749562__340.jpg",
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
	//console.log(menugegevens);
	//var container = document.getElementById ("tilesContainer");
	//console.log(menugegevens[0]);
	console.log (menugegevens.length)
	for (var i = 0; i < menugegevens.length; i++) {
		var menu = menugegevens[i];
		console.log(menu)
		var tile = document.createElement('div');
		tile.className='tile';
		//tile.appendChild(document.createTextNode('Restaurant Halleluja'));
		var naamMenu = document.createElement('div');
		naamMenu.className = 'naamMenu';
		naamMenu.appendChild(document.createTextNode(menu.menuNaam));
		tile.appendChild(naamMenu);

		var calorieen = document.createElement('div');
		calorieen.id = 'aantal-calorien';
		calorieen.appendChild(document.createTextNode(menu.calorieen));
		tile.appendChild(calorieen);
		
		var imgContainer = document.createElement('div');
		imgContainer.className = 'imgContainer';
		var plaatje = document.createElement('img');
		plaatje.src = menu.menuPlaatjeUrl;
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