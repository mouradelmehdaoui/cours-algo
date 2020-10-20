<?php


session_start();

$saisie = trim($_POST['libelle']);

$_SESSION['saisie'] = $saisie;
$_SESSION['resultat'] = converter($saisie);

$_SESSION['message_erreur'] = "";


function converter ($saisie)
{


    if (is_integer($saisie)) {


        $resultat = $saisie + 273.15;

    return $resultat;

    } else {

        $_SESSION['message_erreur'] = $_SESSION['message_erreur'] . " Attention à votre saisie, un nombre est attentu";

        return $_SESSION['message_erreur'];
    }


}

header( 'Location: ../views/converter.php');


?>