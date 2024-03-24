<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/s11.css">
    <link rel="stylesheet" href="css/nav.css">
    <title>Result</title>
</head>
<body>
<nav>
     <h2>iQuiz</h2>
     <ul>
         <li><a href="home.php">Home</a></li>
         <li><a href="about.php">About</a></li>
         <li><a href="logout.php">Logout</a></li>
</ul>

</nav>
<center>
<table>
    <tr>
        <th>Language Name</th>
        <th>Score</th>
    </tr>

    <?php
    session_start(); // Start the session
    $email=$_SESSION['email'];
    require_once("db_connection.php");




    // Fetch data from database for the current user
    $sql = "SELECT Email, language_name, score FROM score WHERE Email = '$email'";
    $result = $link->query($sql);

    if ($result->num_rows > 0) {
        // Output data of each row
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . htmlspecialchars($row["language_name"]) . "</td>";
            echo "<td>" . htmlspecialchars($row["score"]) . "</td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='3'>No scores found</td></tr>";
    }
    ?>

</table>
</center>
</body>
</html>
