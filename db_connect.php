<?php

// Connects database using XAMPP credentials 
$dbconn = mysqli_connect('localhost', 'root', '', 'adblab_libmgmtsystem');

$read_departments = mysqli_query($dbconn, "SELECT * FROM read_departments");

$read_colleges = mysqli_query($dbconn, "SELECT * FROM read_colleges");

$read_programs = mysqli_query($dbconn, "SELECT * FROM read_programs");

?>
