<?php

// Connects database using XAMPP credentials 
$dbconn = mysqli_connect('localhost', 'root', '', 'adblab_libmgmtsystem');
<<<<<<< HEAD
?>
=======

$read_departments = mysqli_query($dbconn, "SELECT * FROM read_departments");

$read_colleges = mysqli_query($dbconn, "SELECT * FROM read_colleges");

$read_programs = mysqli_query($dbconn, "SELECT * FROM read_programs");

?>
>>>>>>> 42649393f3143785897d123123f8bbd7c463c5a5
