<?php 

require 'db_connect.php';

// Delete author
if(isset($_POST['delete_author'])){
    $id = $_POST['author_id'];

    $delete_query = "DELETE FROM authors WHERE author_id='$id' ";
    $author_deleted = mysqli_query($dbconn, $delete_query);

    if($author_deleted){
        header("Location: author.php");
    }
}



//Delete program
if(isset($_POST['delete_program'])){
    $id = $_POST['program_id'];

    $delete_query = "DELETE FROM programs WHERE program_id='$id' ";
    $program_deleted = mysqli_query($dbconn, $delete_query);

    if($program_deleted){
        header("Location: program.php");
    }
}


//Delete college
if(isset($_POST['delete_college'])){
    $id = $_POST['college_id'];

    $delete_query = "DELETE FROM colleges WHERE college_id='$id' ";
    $college_deleted = mysqli_query($dbconn, $delete_query);

    if($college_deleted){
        header("Location: college.php");
    }
}


// Delete department
if(isset($_POST['delete_department'])){
    $id = $_POST['department_id'];

    $delete_department = "DELETE FROM departments WHERE department_id='$id' ";
    $department_isdeleted = mysqli_query($dbconn, $delete_department);

    if($department_isdeleted){
        header("Location: department.php");
    }
}

// Delete publisher
if(isset($_POST['delete_publisher'])){
    $id = $_POST['publisher_id'];

    $delete_publisher = "DELETE FROM publishers WHERE publisher_id='$id' ";
    $publisher_isdeleted = mysqli_query($dbconn, $delete_publisher);

    if($publisher_isdeleted){
        header("Location: publisher.php");
    }
}

// Delete dewey category
if(isset($_POST['delete_dewey_category'])){
    $id = $_POST['dewey_class_id'];

    $delete_dewey_category = "DELETE FROM dewey_classes WHERE dewey_class_id='$id' ";
    $dewey_category_isdeleted = mysqli_query($dbconn, $delete_dewey_category);

    if($dewey_category_isdeleted){
        header("Location: dewey_category.php");
    }
}

//Delete catalog type
if(isset($_POST['delete_catalog_type'])){
    
    $id = $_POST['catalog_type_id'];

    $delete_catalog_type = "DELETE FROM catalog_types WHERE catalog_type_id='$id'";
    $catalog_type_isdeleted = mysqli_query($dbconn, $delete_catalog_type);

    if($catalog_type_isdeleted){
        header("Location: catalog_type.php");
    }
}

// Delete transaction
if(isset($_POST['delete_transaction'])){
    $id = $_POST['transaction_id'];

    $delete_query = "DELETE FROM transactions WHERE transaction_id='$id' ";
    $transaction_deleted = mysqli_query($dbconn, $delete_query);

    if($transaction_deleted){
        header("Location: transaction.php");
    }
}

?>