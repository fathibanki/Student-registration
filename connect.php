<?php


$serverName = "localhost";
$username = "root";
$password = "";
$db = "ourdb";

$conn = mysqli_connect($serverName, $username, $password, $db);

if (mysqli_connect_errno()) {
    return false;
} else {
    return $conn;
}
