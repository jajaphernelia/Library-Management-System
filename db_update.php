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
if(isset($_POST['retrieve_program_btn'])){
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
if(isset($_POST['retrieve_college_btn'])){
    $cllg_id = $_POST['college_id'];
    // echo $return = $cllg_id;
    $result_array = [];

    $read_college = mysqli_query($dbconn, "SELECT * FROM colleges WHERE college_id='$cllg_id' ");
    if(mysqli_num_rows($read_college) > 0 ){
        foreach($read_college as $rows){
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

    $department_query = "UPDATE departments SET department_name='$department_name', department_description='$department_description' WHERE department_id='$id'";
    $department_updated = mysqli_query($dbconn, $department_query);

    if($department_updated){
        header("Location: department.php");
    }
}

// Retrieve existing publisher
if(isset($_POST['retrieve_publisher_btn'])){
    $id = $_POST['publisher_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_publisher = mysqli_query($dbconn, "SELECT * FROM publishers WHERE publisher_id='$id'");
    if(mysqli_num_rows($read_publisher) > 0 ){
        foreach($read_publisher as $rows){
// Retrieve Catalog Types
if(isset($_POST['retrieve_catalog_type_btn'])){
    $id = $_POST['catalog_type_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_catalog_types = mysqli_query($dbconn, "SELECT * FROM catalog_types WHERE catalog_type_id='$id'");
    if(mysqli_num_rows($read_catalog_types) > 0 ){
        foreach($read_catalog_types as $rows){
            array_push($result_array, $rows);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }else{
        alert("No Record");
    }
}
        
}
    }
    }
// Update existing catalog type

if(isset($_POST['update_catalog_type_btn'])){
    $id = $_POST['update_catalog_type_id'];

    $catalog_type = $_POST['catalog_type'];
    $catalog_type_description = $_POST['catalog_type_description'];

    $catalog_type_query = "UPDATE catalog_types SET catalog_type='$catalog_type', catalog_type_description='$catalog_type_description' WHERE catalog_type_id='$id'";
    $catalog_type_updated = mysqli_query($dbconn, $catalog_type_query);

    if($catalog_type_updated){
        header("Location: catalog_type.php");
    }
}




// Retrieve existing publisher
if(isset($_POST['retrieve_publisher_btn'])){
    $id = $_POST['publisher_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_publisher = mysqli_query($dbconn, "SELECT * FROM publishers WHERE publisher_id='$id'");
    if(mysqli_num_rows($read_publisher) > 0 ){
        foreach($read_publisher as $rows){
            array_push($result_array, $rows);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }else{
        alert("No Record");
    }

}

// Update existing publisher
if(isset($_POST['update_publisher_btn'])){
    $id = $_POST['update_publisher_id'];

    $publisher_name = $_POST['publisher_name'];
    $publisher_description = $_POST['publisher_description'];
    $publisher_country = $_POST['publisher_country'];
    $publisher_city = $_POST['publisher_city'];

    $publisher_query = "UPDATE publishers SET publisher_name='$publisher_name', publisher_description='$publisher_description', publisher_country='$publisher_country', publisher_city='$publisher_city' WHERE publisher_id='$id'";
    $publisher_updated = mysqli_query($dbconn, $publisher_query);

    if($publisher_updated){
        header("Location: publisher.php");
    }
}

// Retrieve existing dewey category
if(isset($_POST['retrieve_dewey_category_btn'])){
    $id = $_POST['dewey_class_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_dewey_category = mysqli_query($dbconn, "SELECT * FROM dewey_classes WHERE dewey_class_id='$id'");
    if(mysqli_num_rows($read_dewey_category) > 0 ){
        foreach($read_dewey_category as $rows){
            array_push($result_array, $rows);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }else{
        alert("No Record");
    }
}

// Update existing dewey category
if(isset($_POST['update_dewey_categorybtn'])){
    $id = $_POST['update_dewey_class_id'];

    $dewey_class_category = $_POST['dewey_class_category'];
    $dewey_class_description = $_POST['dewey_class_description'];

    $dewey_class_query = "UPDATE dewey_classes SET dewey_class_category='$dewey_class_category', dewey_class_description='$dewey_class_description' WHERE dewey_class_id='$id'";
    $dewey_class_updated = mysqli_query($dbconn, $dewey_class_query);

    if($dewey_class_updated){
        header("Location: dewey_category.php");
    }
}

// Retrieve existing transaction
if(isset($_POST['retrieve_transaction_btn'])){
    $id = $_POST['transaction_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_transaction = mysqli_query($dbconn,
    "
    SELECT
        trans.transaction_id,
        CONCAT(borrower.last_name, ', ',borrower.first_name, ' ', IFNULL(borrower.middle_name, '') ) AS borrower,
        CONCAT(staff.last_name, ', ',staff.first_name, ' ', IFNULL(staff.middle_name, '') ) AS staff,
        trans.date_issued AS issued,
        trans.expected_return_date AS expected,
        trans.date_returned AS returned,
        trans.is_returned,
        trans.is_penalized
    FROM transactions AS trans
    LEFT JOIN users AS borrower
    ON trans.borrower_id = borrower.user_id
    LEFT JOIN users AS staff
    ON trans.staff_id = staff.user_id
    WHERE transaction_id = $id
    ORDER BY trans.transaction_id DESC;
    "
    );
    if(mysqli_num_rows($read_transaction) > 0 ){
        foreach($read_transaction as $rows){
            array_push($result_array, $rows);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }else{
        alert("No Record");
    }

}

// Update existing transaction
if(isset($_POST['update_transaction_btn'])){
    $id = $_POST['update_transaction_id'];

    $is_returned = (int) $_POST['update_is_returned'];
    
    if($is_returned == 1) {
        $transaction_query = "UPDATE transactions SET is_returned=0, date_returned = null WHERE transaction_id='$id'";
        $transaction_updated = mysqli_query($dbconn, $transaction_query);
    
        if($transaction_updated){
            header("Location: transaction.php");
        }
    } else {
        $transaction_query = "UPDATE transactions SET is_returned=1, date_returned=curdate() WHERE transaction_id='$id'";
        $transaction_updated = mysqli_query($dbconn, $transaction_query);
    
        if($transaction_updated){
            header("Location: transaction.php");
        }
    }
}

// Retrieve existing dewey index
if(isset($_POST['retrieve_dewey_index_btn'])){
    $id = $_POST['dewey_index_id'];
    // echo $return = $auth_id;
    $result_array = [];

    $read_dewey_index = mysqli_query($dbconn, "SELECT 
    din.dewey_index_id,
    dcl.dewey_class_category,
    din.dewey_index,
    din.dewey_index_description
    FROM dewey_indices AS din
    LEFT JOIN dewey_classes AS dcl
    ON din.dewey_class_id = dcl.dewey_class_id
    WHERE dewey_index_id = $id
    ;
    ");
    if(mysqli_num_rows($read_dewey_index) > 0 ){
        foreach($read_dewey_index as $rows){
            array_push($result_array, $rows);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }else{
        alert("No Record");
    }
}

// Update existing dewey index
if(isset($_POST['update_dewey_index'])){
    $id = $_POST['update_dewey_index_id'];

    $update_dewey_class = $_POST['dewey_class'];
    $update_dewey_index = $_POST['dewey_index'];
    $update_dewey_description = $_POST['dewey_description'];

    $dewey_index_query = "UPDATE dewey_indices SET dewey_class_id='$update_dewey_class', dewey_index='$update_dewey_index', dewey_index_description='$update_dewey_description' WHERE dewey_index_id='$id'";
    $dewey_index_updated = mysqli_query($dbconn, $dewey_index_query);

    if($dewey_index_updated){
        header("Location: dewey_index.php");
    }
}



?>