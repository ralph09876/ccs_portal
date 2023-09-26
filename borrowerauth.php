<?php
include 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $schlID = $_POST['schlID'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $remark = $_POST['remarks'];
    $selectedCategory = $_POST['selectedCategory'];
    $selectedItem = $_POST['selectedItem'];
    $dateborrowed = $_POST['dateborrowed'];

    $sql = "INSERT INTO borrower (scholid, firstname, lastname, remark,itemname, dateborrower,category)
            VALUES (?, ?, ?, ?, ?, ?,?)";

    $stmt = $conn->prepare($sql);

    $stmt->bind_param('sssssss', $schlID, $firstname, $lastname, $remark, $selectedItem, $dateborrowed,$selectedCategory);
    $stmt->execute();

    $stmt->close();

    echo 'Data stored successfully!';
}
?>
