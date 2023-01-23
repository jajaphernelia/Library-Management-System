<?php

require 'db_connect.php';

//Create Author 
if(isset($_POST['add_author'])){
    $author_name = mysqli_real_escape_string($dbconn, $_POST['author_name']);
    $author_description = mysqli_real_escape_string($dbconn, $_POST['author_description']);
    $author_country = mysqli_real_escape_string($dbconn, $_POST['author_country']);

    $create_author = "INSERT INTO authors (author_name, author_description, author_country) VALUES ('$author_name', '$author_description', '$author_country')";

    $author_created = mysqli_query($dbconn, $create_author);
    if($author_created){
        header("Location: author.php");
    }
}

//Create Programs
if(isset($_POST['add_program'])){
    $program_name = mysqli_real_escape_string($dbconn, $_POST['program_name']);
    $program_description = mysqli_real_escape_string($dbconn, $_POST['program_description']);

    $create_program = "INSERT INTO programs (program_name, program_description) VALUES ('$program_name', '$program_description')";

    $program_created = mysqli_query($dbconn, $create_program);
    if($program_created){
        header("Location: program.php");
    }

}

//Create Publisher
if(isset($_POST['add_publisher'])){
    $publisher_name = mysqli_real_escape_string($dbconn, $_POST['publisher_name']);
    $publisher_description = mysqli_real_escape_string($dbconn, $_POST['publisher_description']);
    $publisher_country = mysqli_real_escape_string($dbconn, $_POST['publisher_country']);
    $publisher_city = mysqli_real_escape_string($dbconn, $_POST['publisher_city']);

    $create_publisher = "INSERT INTO publishers (publisher_name, publisher_description, publisher_country, publisher_city ) VALUES ('$publisher_name', '$publisher_description', '$publisher_country', '$publisher_city')";

    $publisher_created = mysqli_query($dbconn, $create_publisher);
    if($publisher_created){
        header("Location: publisher.php");
    }

}

//Create Faculty
if(isset($_POST['add_faculty'])){
    $faculty_position = mysqli_real_escape_string($dbconn, $_POST['faculty_position']);
    $employment_type = mysqli_real_escape_string($dbconn, $_POST['employment_type']);


    $create_faculty = "INSERT INTO faculty (position, employement_type) VALUES ('$faculty_position', '$employment_type')";

    $faculty_created = mysqli_query($dbconn, $create_faculty);
    if($faculty_created){
        header("Location: faculty.php");
    }

}





?>

