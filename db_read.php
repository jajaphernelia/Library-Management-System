<?php

require 'db_connect.php';
// Read Departments
$read_departments = mysqli_query($dbconn, "SELECT * FROM departments");
$read_programs = mysqli_query($dbconn, "SELECT * FROM programs");

$read_authors = mysqli_query($dbconn, "SELECT * FROM authors");


if(isset($_POST['checking_viewbtn'])){
    $auth_id = $_POST['author_id'];
    // echo $return = $auth_id;

    $read_authors = mysqli_query($dbconn, "SELECT * FROM authors WHERE author_id='$auth_id' ");
    if(mysqli_num_rows($read_authors)>0){
        foreach($read_authors as $rows){
            echo $return = '
                <h5>Author ID: '.$rows['author_id'].'</h5>
                <h5>Author Name: '.$rows['author_name'].'</h5>
                <h5>Author Description: '.$rows['author_description'].'</h5>
                <h5>Author Country: '.$rows['author_country'].'</h5>
            ';
        }
    }else{
        alert("No Record");
    }

}


?>