
<!DOCTYPE HTML>
<html>
<head>

    <meta charset="UTF-8">
    <title>Public</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../main.css" rel="stylesheet">

    <?php

    session_start();


    ?>


</head>


<body>



<div class="container d-flex">
    <div class="bloc1 ml-1  p-3  border border-info bg-info "></div>
    <div class="titre  p-3 display-3 text-info text-center font-weight-bold"> Projet Converter</div>
    <div class="bloc2 mr-1  p-3  display-1 border border-info bg-info "></div>
</div>


<!-- FORMULAIRE LOGIN -->

<form class="container w-50 border  p-0 mt-5" method="post" action="../controllers/converterAccept.php">


    <div class="bg-info display-4 mt-0">
        <p class="text-white text-center"> CONVERTER PAGE</p>
    </div>

    <div class="form-group ml-5 mr-5">
        <p class="text-info">Valeur en °C</p>
        <input type="text" name="libelle" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Entrez la valeur de la temperature en °C">
    </div>


    <div class="form-group ml-5 mr-5 d-flex justify-content-between">

        <button  class="btn btn-info btn-sm">Valider</button>
        <a href="../views/converter.php" ><button class="btn btn-dark btn-sm">Reset</button></a>
    </div>


</form>



    <div class="mt-3 alert alert-info w-50 display-4 d-flex mx-auto" role="alert">
    <p class="text-white text-center font-weight-bold"></p>
        <?php if(!empty($_SESSION['resultat']) && !empty($_SESSION['saisie'])) { echo $_SESSION['saisie'] ?> <?php  " °C" . " = "  . $_SESSION['resultat']; }?> </div>




<footer>

    <!--Fichier CSS BOOTSTRAP 4 -->
    <link rel="stylesheet" href="../bootstrap.css">
    <!--Fichier JS BOOTSTRAP 4 -->
    <link rel="stylesheet" href="../bootstrap.js" />

</footer>



</body>
</html>