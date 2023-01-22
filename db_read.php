<?php

require 'db_connect.php';
// Read Departments
$read_departments = mysqli_query($dbconn, "SELECT * FROM departments");
$read_programs = mysqli_query($dbconn, "SELECT * FROM programs");
$read_colleges = mysqli_query($dbconn, "SELECT * FROM colleges");
$read_authors = mysqli_query($dbconn, "SELECT * FROM authors");
$read_publishers = mysqli_query($dbconn, "SELECT * FROM publishers");
$read_faculty = mysqli_query($dbconn, "SELECT * FROM faculty");


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


if(isset($_POST['view_program'])){
    $prog_id = $_POST['program_id'];
    // echo $return = $auth_id;

    $read_programs = mysqli_query($dbconn, "SELECT * FROM programs WHERE program_id='$prog_id' ");
    if(mysqli_num_rows($read_programs)>0){
        foreach($read_programs as $rows){
            echo $return = '
                <h5>Program ID: '.$rows['program_id'].'</h5>
                <h5>Program Name: '.$rows['program_name'].'</h5>
                <h5>Program Description: '.$rows['program_description'].'</h5>
            ';
        }
    }else{
        alert("No Record");
    }
}

if(isset($_POST['view_college'])){
    $cllg_id = $_POST['college_id'];
    // echo $return = $auth_id;

    $read_colleges = mysqli_query($dbconn, "SELECT * FROM colleges WHERE college_id='$cllg_id' ");
    if(mysqli_num_rows($read_colleges)>0){
        foreach($read_colleges as $rows){
            echo $return = '
                <h5>College ID: '.$rows['college_id'].'</h5>
                <h5>College Name: '.$rows['college_name'].'</h5>
                <h5>College Description: '.$rows['college_description'].'</h5>
            ';
        }
    }else{
        alert("No Record");
    }
}



?>