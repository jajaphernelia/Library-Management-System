<?php

require 'db_connect.php';
// Query
$read_authors = mysqli_query($dbconn, "SELECT * FROM authors");
$read_publishers = mysqli_query($dbconn, "SELECT * FROM publishers");
$read_programs = mysqli_query($dbconn, "SELECT * FROM programs");
$read_colleges = mysqli_query($dbconn, "SELECT * FROM colleges");
$read_faculty = mysqli_query($dbconn, "SELECT * FROM faculty");
$read_departments = mysqli_query($dbconn, "SELECT * FROM departments");

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

?>