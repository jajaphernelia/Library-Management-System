<?php

// Read Departments
$read_departments = mysqli_query($dbconn, "SELECT * FROM read_departments");

// Read Authors
$read_authors = mysqli_query($dbconn, "SELECT * FROM read_authors");

// Read Colleges
$read_colleges = mysqli_query($dbconn, "SELECT * FROM colleges");

// Read Programs
$read_programs = mysqli_query($dbconn, "SELECT * FROM programs");


?>