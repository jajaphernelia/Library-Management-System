<?php

// Connects database using XAMPP credentials 
$dbconn = mysqli_connect('localhost', 'root', '', 'adblab_libmgmtsystem');

$read_departments = mysqli_query($dbconn, "SELECT * FROM departments");


?>
