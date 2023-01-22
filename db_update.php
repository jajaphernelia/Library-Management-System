<?php 

require 'db_connect.php';

if(isset($_POST['update_authorbtn'])){
    $id = $_POST['update_author_id'];

    $author_name = $_POST['author_name'];
    $author_description = $_POST['author_description'];
    $author_country = $_POST['author_country'];

    $author_query = "UPDATE authors SET author_name='$author_name', author_description='$author_description', author_country='$author_country' WHERE author_id='$id'";
    $author_updated = mysqli_query($dbconn, $author_query);

    if($author_updated){
        header("Location: author.php");
    }

}

//Author Update 
if(isset($_POST['checking_edit_btn'])){
    $auth_id = $_POST['author_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_authors = mysqli_query($dbconn, "SELECT * FROM authors WHERE author_id='$auth_id' ");
    if(mysqli_num_rows($read_authors) > 0 ){
        foreach($read_authors as $rows){
            array_push($result_array, $rows);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }else{
        alert("No Record");
    }

}



?>