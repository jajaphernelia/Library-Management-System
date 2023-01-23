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


//Create College
if(isset($_POST['add_college'])){
    $college_name = mysqli_real_escape_string($dbconn, $_POST['college_name']);
    $college_description = mysqli_real_escape_string($dbconn, $_POST['college_description']);

    $create_college = "INSERT INTO colleges (college_name, college_description) VALUES ('$college_name', '$college_description')";

    $college_created = mysqli_query($dbconn, $create_college);
    if($college_created){
        header("Location: college.php");
    }

}

// Create Department
if(isset($_POST['add_department'])){
    $department_name = mysqli_real_escape_string($dbconn, $_POST['department_name']);
    $department_description = mysqli_real_escape_string($dbconn, $_POST['department_description']);

    $create_department = "INSERT INTO departments (department_name, department_description) VALUES ('$department_name', '$department_description')";

    $department_created = mysqli_query($dbconn, $create_department);
    if($department_created){
        header("Location: department.php");
    }
}

//Create Catalog
if(isset($_POST['add_catalog'])){
    
    $catalog_isbn = mysqli_real_escape_string($dbconn, $_POST['catalog_isbn']);
    $catalog_title = mysqli_real_escape_string($dbconn, $_POST['catalog_title']);
    $catalog_item_description = mysqli_real_escape_string($dbconn, $_POST['catalog_item_description']);
    $catalog_publish = mysqli_real_escape_string($dbconn, $_POST['catalog_publish']);
    $catalog_pages = mysqli_real_escape_string($dbconn, $_POST['catalog_pages']);
    $catalog_language = mysqli_real_escape_string($dbconn, $_POST['catalog_language']);
    $catalog_price = mysqli_real_escape_string($dbconn, $_POST['catalog_price']);

    $create_catalog = "INSERT INTO catalog (catalog_isbn, catalog_title, catalog_item_description, catalog_publish, catalog_pages, catalog_language, catalog_price) VALUES ('$catalog_isbn','$catalog_title', '$catalog_item_description','$catalog_publish','$catalog_pages','$catalog_language','$catalog_price')";

    $catalog_created = mysqli_query($dbconn, $create_catalog);
    if($catalog_created){
        header("Location: catalog.php");
    }
}

//Create Catalog Type
if(isset($_POST['add_catalog_type'])){
    
    $catalog_type = mysqli_real_escape_string($dbconn, $_POST['catalog_type']);
    $catalog_description = mysqli_real_escape_string($dbconn, $_POST['catalog_description']);

    $create_catalog_type = "INSERT INTO catalog_types (catalog_type, catalog_type_description) VALUES ('$catalog_type','$catalog_description')";

    $catalog_type_created = mysqli_query($dbconn, $create_catalog_type);
    if($catalog_type_created){
        header("Location: catalog_type.php");
    }
}

if(isset($_POST['add_dewey_category'])){
    $dewey_category = mysqli_real_escape_string($dbconn, $_POST['dewey_category']);
    $dewey_class_description = mysqli_real_escape_string($dbconn, $_POST['dewey_class_description']);

    $create_dewey_category = "INSERT INTO dewey_classes (dewey_class_category, dewey_class_description) VALUES ('$dewey_category', '$dewey_class_description')";

    $dewey_category_created = mysqli_query($dbconn, $create_dewey_category);
    if($dewey_category_created){
        header("Location: dewey_category.php");
    }
}



?>

