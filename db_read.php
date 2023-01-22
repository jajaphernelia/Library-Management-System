<?php



// Select Departments
$read_departments = mysqli_query($dbconn, "SELECT * FROM departments");
$read_colleges = mysqli_query($dbconn, "SELECT * FROM colleges");



// Select Authors
$read_authors = mysqli_query($dbconn, "SELECT * FROM authors");

    

?>