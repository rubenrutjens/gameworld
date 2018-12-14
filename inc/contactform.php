<?php

if(isset($_POST['submit']))
{

    $name = $_POST['name'];
    $subject = $_POST['subject'];
    $mailfrom = $_POST['mail'];
    $message = $_POST['message'];

    $mailto = "rubenrutjens@hotmail.com";
    $header = "From: " . $mailfrom;
    $txt = "You have recieved an email from " .$name.".\n\n" .$message;

    mail($mailto, $subject, $txt, $header);
    header("Location: ../index.php");

}


?>