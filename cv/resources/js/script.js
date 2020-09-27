$(window).ready(function () {

    $(".loader-container").fadeOut(4000);

});

// When the DOM is ready, run this function
$(document).ready(function() {
    //Set the carousel options
    $('#quote-carousel').carousel({
        pause: true,
        interval: 4000,
    });

    $(document).ready(function() {
        $('.progress .progress-bar').css("width",
            function() {
                return $(this).attr("aria-valuenow") + "%";
            }
        )
    });

});

const hamburger_menu = document.querySelector(".hamburger-menu");
const template = document.querySelector(".template");

hamburger_menu.addEventListener('click', function () {


    template.classList.toggle("active");



})




/*
$( document ).ready()ne s'exécutera que lorsque la page Document Object Model (DOM) ' +
'sera prête pour l'exécution du code JavaScript.
    Le code inclus à l'intérieur $( window ).on( "load", function() { ... })' +
's'exécutera une fois que la page entière (images ou iframes), pas seulement le DOM, sera prête.*/
