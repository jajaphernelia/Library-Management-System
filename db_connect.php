<?php

$dbconn = mysqli_connect('localhost', 'root', '', 'adblab_libmgmtsystem');

$read_departments = mysqli_query($dbconn, "SELECT * FROM read_departments");
?>