<?php

$db_server = 'localhost';
$db_username = 'root';
$db_password = '';
$db_name = 'adblab_libmgmtsystem';

// Connects database using XAMPP credentials 
$dbconn = mysqli_connect($db_server, $db_username, $db_password, $db_name);

if ($dbconn->connect_error) {
    die("Connection failed: " . $dbconn->connect_error);
}

?>
