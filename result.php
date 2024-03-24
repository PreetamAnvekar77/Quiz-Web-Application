<?php
    session_start();
    $name = strtolower($_SESSION['name'])."_quiz";
    $email=$_SESSION['email'];
    require_once("db_connection.php");
    if(isset($_POST['submit']))
    {
        $i = 1;
        $crt = 0;
        while($i!=11)
        {
            $s = "SELECT * FROM $name where number = $i";
            $r = mysqli_query($link,$s);
            while($result=mysqli_fetch_array($r))
            {
                if(isset($_POST["q".$i]))
                {
                
                    $b = $_POST['q'.$i];
                    // echo $b."</br>";
                    if($b == $result['ans'])
                    {
                        $crt++;
                    }
                }
               
            }
            $i++;
        }
        
    }

    
?>

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
         <li><a href="score.php">Score</a></li>
         <li><a href="about.php">About</a></li>
         <li><a href="logout.php">Logout</a></li>
</ul>

</nav>
    
    <div class="greet">
        <p>
            <?php 
                
                if ($crt >= 0 and $crt <= 3)
                {
                    echo 'BETTER LUCK NEXT TIME'; 
                }
                elseif($crt > 3 and $crt <= 7)
                {
                    echo 'GOOD JOB'; 
                }
                elseif( $crt > 7)
                {
                    echo 'CONGRATULATIONS!!!'; 
                }    
            ?>
        </p>    
    </div>

    <?php 
    $sql1="SELECT * from score where `Email`='$email' and `language_name`='$name' ";
    $result1 = mysqli_query($link, $sql1);
    $em_count = mysqli_num_rows($result1);
    $data=$result1->fetch_assoc();
    if ($em_count > 0 ) {
        if($data['score'] <= $crt){
        $sql = "UPDATE `score` SET `score`='$crt' WHERE `Email`='$email' AND `language_name`='$name'";
        $result = mysqli_query($link, $sql);
        }
    } 
    else{
    $sql = " INSERT INTO score(Email,language_name,score)  VALUES ('$email','$name','$crt')";
    $result = mysqli_query($link, $sql);
    }?>
    <center>
    <table>
        <tr>
            <th>Total No. of Questions</th>
            <th>Correct Answers</th>
            <th>Wrong Answers + Not Attemped</th>
            <th>Percentage</th>
        </tr>
        <tr>
            <td>10</td>
            <td>
                <?php 
                    echo $crt ; 
                ?>
            </td>
            <td>
                <?php 
                    echo 10 - $crt; 
                ?>
            </td>
            <td>
                <?php 
                    echo $crt*10 ."%"; 
                ?>
            </td>
        </tr>
    </table>
</center>
</body>
</html>