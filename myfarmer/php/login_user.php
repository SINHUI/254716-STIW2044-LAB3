<?php
error_reporting(0);
include_once("dbconnect.php");
$email = $_POST['email'];
$password = $_POST['password'];
$passwordsha = sha1($password);

$sql = "SELECT * FROM USER WHERE EMAIL = '$email' AND PASSWORD = '$passwordsha' AND VERIFY ='1'";

$result = $conn->query($sql);
if ($result->num_rows > 0) {
    echo "success";
}else{
    echo "Email and password is incorrect.";
}