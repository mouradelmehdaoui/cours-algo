<?php

session_start();

$login = trim($_POST['login']);
$mdp = trim($_POST['mdp']);


$_SESSION['message_erreur'] = "";



if (empty($login)) {

    $_SESSION['message_erreur'] = $_SESSION['message_erreur'] . " merci de saisir votre identifiant";

}

if (empty($mdp)) {

    $_SESSION['message_erreur'] = $_SESSION['message_erreur'] . " merci de saisir votre mot de passe";

}


if(empty($_SESSION['message_erreur'])) {


    header('Location: ../views/converter.php');

} else {

    header('Location: ../views/login.php');
}




?>