<?php 

require 'db_connect.php';


// Retrieve existing author
if(isset($_POST['retrieve_author_btn'])){
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

// Update existing author
if(isset($_POST['update_author_btn'])){
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


// Retrieve existing program
if(isset($_POST['edit_program'])){
    $prog_id = $_POST['program_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_programs = mysqli_query($dbconn, "SELECT * FROM programs WHERE program_id='$prog_id' ");
    if(mysqli_num_rows($read_programs) > 0 ){
        foreach($read_programs as $rows){
            array_push($result_array, $rows);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }else{
        alert("No Record");
    }

}

// Update existing program
if(isset($_POST['update_programbtn'])){
    $id = $_POST['update_program_id'];

    $program_name = $_POST['program_name'];
    $program_description = $_POST['program_description'];

    $program_query = "UPDATE programs SET program_name='$program_name', program_description='$program_description' WHERE program_id='$id'";
    $program_updated = mysqli_query($dbconn, $program_query);

    if($program_updated){
        header("Location: program.php");
    }
}


// Retrieve existing college
if(isset($_POST['edit_college'])){
    $cllg_id = $_POST['college_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_colleges = mysqli_query($dbconn, "SELECT * FROM colleges WHERE college_id='$cllg_id' ");
    if(mysqli_num_rows($read_colleges) > 0 ){
        foreach($read_colleges as $rows){
            array_push($result_array, $rows);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }else{
        alert("No Record");
    }

}

// Update existing college
if(isset($_POST['update_collegebtn'])){
    $id = $_POST['update_college_id'];

    $college_name = $_POST['college_name'];
    $college_description = $_POST['college_description'];

    $college_query = "UPDATE colleges SET college_name='$college_name', college_description='$college_description' WHERE college_id='$id'";
    $college_updated = mysqli_query($dbconn, $college_query);

    if($college_updated){
        header("Location: college.php");
    }
}


// Retrieve existing department
if(isset($_POST['retrieve_department_btn'])){
    $id = $_POST['department_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_departments = mysqli_query($dbconn, "SELECT * FROM departments WHERE department_id='$id'");
    if(mysqli_num_rows($read_departments) > 0 ){
        foreach($read_departments as $rows){
            array_push($result_array, $rows);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }else{
        alert("No Record");
    }

}

// Update existing department
if(isset($_POST['update_department_btn'])){
    $id = $_POST['update_department_id'];

    $department_name = $_POST['department_name'];
    $department_description = $_POST['department_description'];

    $department_query = "UPDATE departments SET department_name='$department_name', department_description='$department_description' WHERE author_id='$id'";
    $department_updated = mysqli_query($dbconn, $author_query);

    if($department_updated){
        header("Location: deparment.php");
    }
}

?>