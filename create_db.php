<?php
session_start();
require("connect.php");
//$conn = getDatabaseConnection();
if (isset($_POST['submit'])) {
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $phonenumber = $_POST['phone'];
    $password = $_POST['password'];

    $sql = "insert into account(fname, lname, username,email,phone, password) VALUES('$fname', '$lname', '$username','$email','$phonenumber', '$password')";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        $_SESSION['registration_Success'] = "success";
        header("createAccount.php");
    } else {
        $_SESSION['registration_Unsuccess'] = "unsuccess";
        header("createAccount.php");
    }
}
