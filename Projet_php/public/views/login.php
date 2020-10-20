
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

                    <form class="container w-50 border  p-0 mt-5" method="post" action="../controllers/LoginAccept.php">

                        <p> <?php

                            if (!empty($_SESSION['message_erreur'])) {

                                echo $_SESSION['message_erreur'];
                            }

                             ?>


                        </p>

                        <div class="bg-info display-4">
                             <p class="text-white text-center"> LOGIN FORM</p>
                        </div>

                        <div class="form-group ml-5 mr-5">
                            <p class="text-info">Identifiant</p>
                            <input type="text" name="login" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Entrez votre identifiant">
                        </div>

                        <div class="form-group ml-5 mr-5">
                            <p class="text-info">Mot de passe</p>
                            <input type="password" name="mdp" class="form-control " id="exampleInputPassword1" placeholder="Entrez votre mot de passe">
                        </div>

                        <div class="form-group ml-5 mr-5 d-flex justify-content-between">

                            <button  class="btn btn-info btn-sm">Valider</button>
                            <a href="../views/login.php" ><button class="btn btn-dark btn-sm">Reset</button></a>
                        </div>


                    </form>




<footer>

    <!--Fichier CSS BOOTSTRAP 4 -->
    <link rel="stylesheet" href="../bootstrap.css">
    <!--Fichier JS BOOTSTRAP 4 -->
    <link rel="stylesheet" href="../bootstrap.js" />

</footer>



</body>
</html>