
// variables script

var btn_lancer = document.querySelector(".btn-lancer");


var encours_1 = document.querySelector("#encours-1");
var encours_2 = document.querySelector("#encours-2");

var score1 = document.querySelector("#score-1");
var score2 = document.querySelector("#score-2");

var commuter = document.querySelector(".btn-commuter");
var btn_nouveau = document.querySelector(".btn-nouveau");


let scoreEnCours = 0;
let joueurActif = 1;


document.querySelector("img").style.display = "none";
encours_1.innerHTML =  0;
encours_2.innerHTML =  0;
score1.innerHTML =  0;
score2.innerHTML =  0;

// creation evenement click sur btn-nouveau

btn_nouveau.addEventListener('click', function () {


    encours_1.innerHTML =  0;
    encours_2.innerHTML =  0;
    score1.innerHTML =  0;
    score2.innerHTML =  0;
    scoreEnCours = 0;
    document.querySelector("img").style.display = "none";

    // creation evenement click sur btn-lancer


}); // fin function remise a zero du jeu

// creation deuxieme fonction click lancer le Dé

btn_lancer.addEventListener('click', function () {

    document.querySelector("img").style.display = "block";

    // generer un chiffre entre 1 à 6

    var random = Math.floor(Math.random() * 6) + 1;
    var de = document.querySelector(".de");
    de.src= `../images/images/de-${random}.png`;




    if (random !== 1) {
        scoreEnCours += random;
    document.getElementById(`encours-${joueurActif}`).textContent = scoreEnCours; }
    else {
        joueurActif === 1 ? joueurActif = 2 : joueurActif = 1;
        scoreEnCours = 0;
        document.getElementById(`encours-${joueurActif}`).textContent = '0';
        document.querySelector('.joueur-1-panel').classList.toggle('active');
        document.querySelector('.joueur-2-panel').classList.toggle('active');
        document.querySelector('.de').style.display = 'none';
    }
});






// commutez




commuter.addEventListener("click", function () {



})

