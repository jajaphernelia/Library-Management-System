<?php

require 'db_connect.php';
// Query
$read_authors = mysqli_query($dbconn, "SELECT * FROM authors");
$read_publishers = mysqli_query($dbconn, "SELECT * FROM publishers");
$read_programs = mysqli_query($dbconn, "SELECT * FROM programs");
$read_colleges = mysqli_query($dbconn, "SELECT * FROM colleges");
$read_faculty = mysqli_query($dbconn, "SELECT * FROM faculty");
$read_departments = mysqli_query($dbconn, "SELECT * FROM departments");
$read_dewey_classes = mysqli_query($dbconn, "SELECT * FROM dewey_classes");

$read_catalog_type = mysqli_query($dbconn, "SELECT * FROM catalog_types");

$read_catalog = mysqli_query($dbconn, "SELECT * FROM catalog");
$read_students = mysqli_query($dbconn, "SELECT * FROM students");
$read_inventory= mysqli_query($dbconn, "SELECT * FROM inventory");
$read_dewey_index = mysqli_query($dbconn, 
"SELECT 
din.dewey_index_id,
dcl.dewey_class_category,
din.dewey_index,
din.dewey_index_description
FROM dewey_indices AS din
LEFT JOIN dewey_classes AS dcl
ON din.dewey_class_id = dcl.dewey_class_id;");

$read_transactions = mysqli_query($dbconn,
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
ORDER BY trans.transaction_id DESC;
"
);

$read_borrowers = mysqli_query($dbconn,
"
SELECT
    u.user_id,
    CONCAT(ut.user_type, ': ', u.last_name, ', ', u.first_name, ' ', IFNULL(u.middle_name, '')) AS 'user_value'
FROM users AS u
LEFT JOIN user_types AS ut
ON u.user_type_id = ut.user_type_id
WHERE u.user_type_id != 3;
"
);

$read_incharge = mysqli_query($dbconn,
"
SELECT
    u.user_id,
    CONCAT(u.last_name, ', ', u.first_name, ' ', IFNULL(u.middle_name, '')) AS 'user_value'
FROM users AS u
WHERE u.user_type_id = 3;
"
);

// Generate staff table
$read_staffs = mysqli_query($dbconn,
"
SELECT
	staffs.staff_id,
	CONCAT(users.last_name, ', ', users.first_name, ' ', IFNULL(users.middle_name, '')) AS staff_name,
	users.gender,
	users.mobile_no,
	users.address,
	staffs.job_title
FROM library_staffs AS staffs
LEFT JOIN users
ON staffs.user_id = users.user_id;
"
);

// Read individual author
if (isset($_POST['view_author'])) {
    $auth_id = $_POST['author_id'];
    // echo $return = $auth_id;

    $read_authors = mysqli_query($dbconn, "SELECT * FROM authors WHERE author_id='$auth_id' ");
    if (mysqli_num_rows($read_authors) > 0) {
        foreach ($read_authors as $rows) {
            echo $return = '
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td style="width: 40%"><h6 class="text-muted">Author ID:</h6></td>
                            <td style="width: 60%"><h6>' . $rows['author_id'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Author Name:</h6></td>
                            <td><h6>' . $rows['author_name'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Author Country:</h6></td>
                            <td><h6>' . $rows['author_country'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Author Description:</h6></td>
                            <td><h6>' . $rows['author_description'] . '</h6></td>
                        </tr>
                    </tbody>
                </table>
            ';
        }
    } else {
        alert("No Record");
    }

}

//Read Program
if (isset($_POST['view_program'])) {
    $prog_id = $_POST['program_id'];
    // echo $return = $auth_id;

    $read_programs = mysqli_query($dbconn, "SELECT * FROM programs WHERE program_id='$prog_id' ");
    if (mysqli_num_rows($read_programs) > 0) {
        foreach ($read_programs as $rows) {
            echo $return = '
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td style="width: 40%"><h6 class="text-muted">Program ID:</h6></td>
                            <td style="width: 60%"><h6>' . $rows['program_id'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Program Name:</h6></td>
                            <td><h6>' . $rows['program_name'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Program Description:</h6></td>
                            <td><h6>' . $rows['program_description'] . '</h6></td>
                        </tr>
                    </tbody>
                </table>
            ';
        }
    } else {
        alert("No Record");
    }
}

//Read College
if (isset($_POST['view_college'])) {
    $cllg_id = $_POST['college_id'];
    // echo $return = $auth_id;

    $read_colleges = mysqli_query($dbconn, "SELECT * FROM colleges WHERE college_id='$cllg_id' ");
    if (mysqli_num_rows($read_colleges) > 0) {
        foreach ($read_colleges as $rows) {
            echo $return = '
            <table class="table table-borderless">
            <tbody>
                <tr>
                    <td style="width: 40%"><h6 class="text-muted">College ID:</h6></td>
                    <td style="width: 60%"><h6>' . $rows['college_id'] . '</h6></td>
                </tr>
                <tr>
                    <td><h6 class="text-muted">College Name:</h6></td>
                    <td><h6>' . $rows['college_name'] . '</h6></td>
                </tr>
                <tr>
                    <td><h6 class="text-muted">College Description:</h6></td>
                    <td><h6>' . $rows['college_description'] . '</h6></td>
                </tr>
            </tbody>
        </table>
            ';
        }
    } else {
        alert("No Record");
    }
}

// Read individual department
if (isset($_POST['view_department'])) {
    $id = $_POST['department_id'];
    // echo $return = $auth_id;

    $read_departments = mysqli_query($dbconn, "SELECT * FROM departments WHERE department_id='$id' ");
    if (mysqli_num_rows($read_departments) > 0) {
        foreach ($read_departments as $rows) {
            echo $return = '
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td style="width: 40%"><h6 class="text-muted">Department ID:</h6></td>
                            <td style="width: 60%"><h6>' . $rows['department_id'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Department Name:</h6></td>
                            <td><h6>' . $rows['department_name'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Department Description:</h6></td>
                            <td><h6>' . $rows['department_description'] . '</h6></td>
                        </tr>
                    </tbody>
                </table>
            ';
        }
    } else {
        alert("No Record");
    }
}

if(isset($_POST['view_catalog_type'])){
    $id = $_POST['catalog_type_id'];
    // echo $return = $auth_id;

    $read_catalog_type = mysqli_query($dbconn, "SELECT * FROM catalog_types WHERE catalog_type_id='$id' ");
    if(mysqli_num_rows($read_catalog_type)>0){
        foreach($read_catalog_type as $rows){
            echo $return = '
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td style="width: 40%"><h6 class="text-muted">Catalog Type ID:</h6></td>
                            <td style="width: 60%"><h6>'.$rows['catalog_type_id'].'</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Catalog Type:</h6></td>
                            <td><h6>'.$rows['catalog_type'].'</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Catalog Type Description:</h6></td>
                            <td><h6>'.$rows['catalog_type_description'].'</h6></td>
                        </tr>
                    </tbody>
                </table>
            ';
        }
    } else{
        alert("No Record");
    }
}

// Read  Publisher
if (isset($_POST['view_publisher'])) {
    $id = $_POST['publisher_id'];
    // echo $return = $auth_id;

    $read_publisher = mysqli_query($dbconn, "SELECT * FROM publishers WHERE publisher_id='$id' ");
    if (mysqli_num_rows($read_publisher) > 0) {
        foreach ($read_publisher as $rows) {
            echo $return = '
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td style="width: 40%"><h6 class="text-muted">Publisher ID:</h6></td>
                            <td style="width: 60%"><h6>' . $rows['publisher_id'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Publisher Name:</h6></td>
                            <td><h6>' . $rows['publisher_name'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Publisher Description:</h6></td>
                            <td><h6>' . $rows['publisher_description'] . '</h6></td>
                        </tr>
                         <tr>
                            <td><h6 class="text-muted">Publisher Country:</h6></td>
                            <td><h6>' . $rows['publisher_country'] . '</h6></td>
                        </tr>
                         <tr>
                            <td><h6 class="text-muted">Publisher City:</h6></td>
                            <td><h6>' . $rows['publisher_city'] . '</h6></td>
                        </tr>
                    </tbody>
                </table>
            ';
        }
    } else {
        alert("No Record");
    }
}

if (isset($_POST['view_dewey_category'])) {
    $dewey_cat_id = $_POST['dewey_class_id'];
    // echo $return = $dewey_class_id;

    $read_dewey_classes = mysqli_query($dbconn, "SELECT * FROM dewey_classes WHERE dewey_class_id='$dewey_cat_id' ");
    if (mysqli_num_rows($read_dewey_classes) > 0) {
        foreach ($read_dewey_classes as $rows) {
            echo $return = '
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td style="width: 40%"><h6 class="text-muted">Dewey Class ID:</h6></td>
                            <td style="width: 60%"><h6>' . $rows['dewey_class_id'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Dewey Class Category:</h6></td>
                            <td><h6>' . $rows['dewey_class_category'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Dewey Class Description:</h6></td>
                            <td><h6>' . $rows['dewey_class_description'] . '</h6></td>
                        </tr>
                    </tbody>
                </table>
            ';
        }
    } else {
        alert("No Record");
    }
}

// Read individual department
if (isset($_POST['view_transaction'])) {
    $id = $_POST['transaction_id'];
    // echo $return = $auth_id;

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
        ORDER BY trans.transaction_id DESC
        ;
        "
    );
    if (mysqli_num_rows($read_transaction) > 0) {
        foreach ($read_transaction as $rows) {

            if($rows['is_returned'] == 1) {
                $return_status = '<span class="badge bg-success">Returned</span>';
            } else {
                $return_status = '<span class="badge bg-warning">Not Returned</span>';
            }

            if($rows['is_penalized'] == 1) {
                $penalized_status = '<span class="badge bg-danger">Penalized</span>';
            } else {
                $penalized_status = '<span class="badge bg-primary">Not Penalized</span>';
            }

            echo $return = '
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td style="width: 40%"><h6 class="text-muted">Transaction ID:</h6></td>
                            <td style="width: 60%"><h6>' . $rows['transaction_id'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Borrower Name:</h6></td>
                            <td><h6>' . $rows['borrower'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Date Issued:</h6></td>
                            <td><h6>' . $rows['issued'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Expected Return Date:</h6></td>
                            <td><h6>' . $rows['expected'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Staff in Charge:</h6></td>
                            <td><h6>' . $rows['staff'] . '</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Return Status:</h6></td>
                            <td><h6>' . $return_status . '</h6></td>
                        </tr>                        
                        <tr>
                            <td><h6 class="text-muted">Penalty Status:</h6></td>
                            <td><h6>' . $penalized_status . '</h6></td>
                        </tr>                        
                        <tr>
                            <td><h6 class="text-muted">Returned Date:</h6></td>
                            <td><h6>' . $rows['returned'] . '</h6></td>
                        </tr>
                    </tbody>
                </table>
            ';
        }
    } else {
        alert("No Record");
    }
}

if(isset($_POST['view_dewey_index'])){
    $id = $_POST['dewey_index_id'];
    // echo $return = $auth_id;

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

    if(mysqli_num_rows($read_dewey_index)>0){
        foreach($read_dewey_index as $rows){
            echo $return = '
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td style="width: 40%"><h6 class="text-muted">Dewey ID:</h6></td>
                            <td style="width: 60%"><h6>'.$rows['dewey_index_id'].'</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Dewey Class:</h6></td>
                            <td><h6>'.$rows['dewey_class_category'].'</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Dewey Index:</h6></td>
                            <td><h6>'.$rows['dewey_index'].'</h6></td>
                        </tr>
                        <tr>
                            <td><h6 class="text-muted">Dewey Index Description:</h6></td>
                            <td><h6>'.$rows['dewey_index_description'].'</h6></td>
                        </tr>
                    </tbody>
                </table>
            ';
        }
    } else{
        alert("No Record");
    }
}









?>
