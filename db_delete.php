<?php 

require 'db_connect.php';

//Delete Authors
if(isset($_POST['delete-author'])){
    $author_id = mysqli_real_escape_string($dbconn, $_POST['delete-author']);

    $delete_author = "DELETE FROM authors WHERE author_id='$author_id' ";
    $author_deleted = mysqli_query($dbconn, $delete_author);
    
    if($author_deleted){
        header("Location: author.php");
    }
    
}



?>