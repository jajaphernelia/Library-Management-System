<?php

require 'db_connect.php';

//Create Program
if(isset($_POST['add_program'])){
    $program_name = mysqli_real_escape_string($dbconn, $_POST['program_name']);
    $program_description = mysqli_real_escape_string($dbconn, $_POST['program_description']);

    $create_program = "INSERT INTO programs (program_name, program_description) VALUES ('$program_name', '$program_description')";

    $program_created = mysqli_query($dbconn, $create_program);
    if($program_created){
        header("Location: program.php");
    }

}

//Create Author
if(isset($_POST['add_author'])){
    $author_name = $_POST['author_name'];
    $author_description = $_POST['author_description'];
    $author_country = $_POST['author_country'];

    $author_query = "INSERT INTO authors(author_name, author_description, author_country) VALUES('$author_name', '$author_description', '$author_country')";
    $author_created = mysqli_query($dbconn, $author_query);

    if($author_created){
        header('Location: author.php');
    }
}



?>