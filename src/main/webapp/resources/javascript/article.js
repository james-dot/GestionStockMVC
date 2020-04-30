$(document).ready(function(){
	$("#tauxTva").on("keyup", function(){
		tvaKeyUpFunction();
	});
});

//function calcule prixUnitTTC

tvaKeyUpFunction = function(){
	var prixUnitHT = $("#prixUnitHT").val();
	var tauxTva = $("#tauxTva").val();
	var prixUnitTTC = parseFloat(parseFloat(prixUnitHT) * parseFloat(tauxTva) / 100 + parseFloat(prixUnitHT));
	$("#prixUnitTTC").val(prixUnitTTC);
}