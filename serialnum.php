<?php
// Include your database connection file
include 'db_connect.php';

// Check if the category is provided via POST
if (isset($_POST['category'])) {
    // Sanitize and retrieve the selected category
    $selectedCategory = mysqli_real_escape_string($conn, $_POST['category']);

    // Prepare a SQL query to fetch the Serial Numbers based on the selected category
    $sql = "SELECT monitor_sn FROM items WHERE category = '$selectedCategory'";

    // Execute the query
    $result = $conn->query($sql);

    // Check if there are any results
    if ($result->num_rows > 0) {
        // Start building the HTML options for Serial Numbers
        $options = "<option value=''>Select a Serial Number</option>";

        // Loop through the results and add each Serial Number as an option
        while ($row = $result->fetch_assoc()) {
            $monitorSN = $row['monitor_sn'];
            $options .= "<option value='$monitorSN'>$monitorSN</option>";
        }

        // Send the HTML options back to the JavaScript
        echo $options;
    } else {
        // No Serial Numbers found for the selected category
        echo "<option value=''>No Serial Numbers found</option>";
    }
} else {
    // Category was not provided via POST
    echo "<option value=''>Category not provided</option>";
}

// Close the database connection
$conn->close();
?>
