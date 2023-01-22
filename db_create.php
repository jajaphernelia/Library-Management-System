<?php

require 'db_connect.php';



//Create Author 
if(isset($_POST['add-btn'])){
    $author_name = mysqli_real_escape_string($dbconn, $_POST['author_name']);
    $author_description = mysqli_real_escape_string($dbconn, $_POST['author_description']);
    $author_country = mysqli_real_escape_string($dbconn, $_POST['author_country']);

    $create_author = "INSERT INTO authors (author_name, author_description, author_country) VALUES ('$author_name', '$author_description', '$author_country')";

    $author_created = mysqli_query($dbconn, $create_author);
    if($author_created){
        header("Location: author.php");
    }
}







?>