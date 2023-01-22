<?php 

require 'db_connect.php';


if(isset($_POST['update_author'])){
    $id = mysqli_real_escape_string($dbconn, $_POST['update_id']);

    $author_name = mysqli_real_escape_string($dbconn, $_POST['author_name']);
    $author_description = mysqli_real_escape_string($dbconn, $_POST['author_description']);
    $author_country = mysqli_real_escape_string($dbconn, $_POST['author_country']);

    $author_update = "UPDATE authors SET author_name='$author_name', author_description='$author_description', author_country='$author_country' WHERE author_id='$id' ";
    $updated_author = mysqli_query($dbconn, $author_update);

    if($updated_author){
        header('Location: author.php');
    }
}




?>