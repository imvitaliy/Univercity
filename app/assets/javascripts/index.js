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

/*dislike.onclick = quitelike;
function quitelike(e){
	if (e.target.className === "global_score")
this.className=parseFloat(this.textContent)-0.1;
}*/