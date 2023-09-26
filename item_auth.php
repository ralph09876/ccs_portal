<?php

include 'db_connect.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $itemname = $_POST['monitor_sn'];
    $model = $_POST['model'];
    $brand = $_POST['brand'];
    $category = $_POST['category'];
    $quantity = $_POST['qnty'];
    $description = $_POST['description'];


    $sql = "INSERT INTO items (monitor_sn, model, brand, category, quantity, description)
            VALUES (?, ?, ?, ?, ?, ?)";



    $stmt = $conn->prepare($sql);

   
    $stmt->bind_param('ssssis', $itemname, $model, $brand, $category, $quantity, $description);
    $stmt->execute();

    // Close the statement
    $stmt->close();




    $checkCategorySql = "SELECT * FROM category WHERE categoryname = ?";
    $checkCategoryStmt = $conn->prepare($checkCategorySql);
    $checkCategoryStmt->bind_param('s', $brand);
    $checkCategoryStmt->execute();
    $checkCategoryResult = $checkCategoryStmt->get_result();

    if ($checkCategoryResult->num_rows === 0) {
       
        $sql2 = "INSERT INTO category (categoryname) VALUES (?)";

        $stmt2 = $conn->prepare($sql2);

        $stmt2->bind_param('s', $brand);
        $stmt2->execute();


        $stmt2->close();
    }

    $checkCategorySql2 = "SELECT * FROM categorylist WHERE categorylistname = ?";
    $checkCategoryStmt2 = $conn->prepare($checkCategorySql2);
    $checkCategoryStmt2 ->bind_param('s', $category);
    $checkCategoryStmt2->execute();
    $checkCategoryResult2 = $checkCategoryStmt2 ->get_result();

    if ($checkCategoryResult2->num_rows === 0) {
       
        $sql3 = "INSERT INTO categorylist (categorylistname) VALUES (?)";

        $stmt3 = $conn->prepare($sql3);

        $stmt3->bind_param('s', $category);
        $stmt3->execute();


        $stmt3->close();
    }

    echo "Item Added ";
}
?>
