var score = document.getElementsByClassName("global_score");

var	like = document.getElementsByClassName("ok_like");


var	dislike = document.getElementsByClassName("dislike");

for (var i=0; i < like.length; i++){

	like[i].onclick = addlike;

}
for (var i=0; i < dislike.length; i++){

	dislike[i].onclick = quitelike;

}

function addlike(target){
	var score = event.target.nextElementSibling
	if (score.className === "global_score"){
		var num = parseFloat(score.textContent)+0.1;
		score.textContent = num.toFixed(1);
	};
};
function quitelike(target){
	var score = event.target.previousElementSibling
	if (score.className === "global_score"){
		var num = parseFloat(score.textContent)-0.1;
		score.textContent = num.toFixed(1);
	};
};

function showlocation(){
var latitud2 = document.getElementById('latitud');
var longitud2 = document.getElementById('longitud');
var latitud=latitud2.textContent
var longitud=longitud2.textContent

var madrid = new google.maps.LatLng(latitud,longitud);
var opciones = {
    zoom : 13,
    center: madrid,
 
};
var div = document.getElementById('mapa');
var map = new google.maps.Map(div, opciones);
var latitud1 = document.getElementById('latitud');
var longitud1 = document.getElementById('longitud');
var latitud=latitud1.textContent
var longitud=longitud1.textContent
putMarker(latitud,longitud);

function putMarker(latitud, longitud){
	return new google.maps.Marker({
  position: new google.maps.LatLng(latitud,longitud),
  map: map
});
}
};	
/*dislike.onclick = quitelike;
function quitelike(e){
	if (e.target.className === "global_score")
this.className=parseFloat(this.textContent)-0.1;
}*/