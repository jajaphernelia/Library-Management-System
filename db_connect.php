<?php

// Connects database using XAMPP credentials 
$dbconn = mysqli_connect('localhost', 'root', '', 'adblab_libmgmtsystem');




$read_publishers = mysqli_query($dbconn, "SELECT *FROM read_publishers");

$read_faculty = mysqli_query($dbconn, "SELECT * FROM read_faculty");
?>
