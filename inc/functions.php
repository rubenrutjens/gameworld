<?php

function databaseConnection()
{
    $host = "localhost";
    $username = "root";
    $password = "";
    $database = "gameworld";

    $conn = new mysqli($host, $username, $password, $database);
    if ($conn->connect_error)
    {
        die("Connection to the databse has failed. Error: " . $conn->connect_error);
    }
    else
    {
        return $conn;
    }
}
?>