<?php 

require 'db_connect.php';

if(isset($_POST['delete_author'])){
    $id = $_POST['author_id'];

    $delete_query = "DELETE FROM authors WHERE author_id='$id' ";
    $author_deleted = mysqli_query($dbconn, $delete_query);

    if($author_deleted){
        header("Location: author.php");
    }
}



//Delete Program
if(isset($_POST['delete_program'])){
    $id = $_POST['program_id'];

    $delete_query = "DELETE FROM programs WHERE program_id='$id' ";
    $program_deleted = mysqli_query($dbconn, $delete_query);

    if($program_deleted){
        header("Location: program.php");
    }
}


//Delete College
if(isset($_POST['delete_college'])){
    $id = $_POST['college_id'];

    $delete_query = "DELETE FROM colleges WHERE college_id='$id' ";
    $college_deleted = mysqli_query($dbconn, $delete_query);

    if($college_deleted){
        header("Location: college.php");
    }
}





?>