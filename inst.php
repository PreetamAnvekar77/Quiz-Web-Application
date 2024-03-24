<?php
session_start();
$_SESSION['name']=$_GET['lang'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/jpg" href="images/quiz-logo.png">
    <title>Instruction page</title>
    <link rel="stylesheet" href="css/style2.css">
</head>
<body>
  
<nav>
     <h1>iQuiz</h1>
     <ul>
         <li><a href="home.php">Home</a></li>
         <li><a href="about.php">About</a></li>
         <li><a href="logout.php">Logout</a></li>
</ul>

</nav>
<div class="empty">
          <center><h2><?php echo $_SESSION['name']?>  QUIZ</h2></center>
          </div>
<div class="inst">
<h2>INSTRUCTION</h2>
<ol>
    <li>Each question in the quiz is of multiple-choice format</li>
    <li>You will need to complete all question in time as you are allotted 10 minutes to complete 10 questions.</li>
    <li>The total score for the quiz is based on your responses to all questions. If you get the correct response score for that question will be one,else score will be zero .</li>
    <li>After responding to all questions, click on the "Submit" button at the bottom to view your result</li>

    <li>To start, click the "Start" button. When finished, click the "Submit" button.</li>
</ol>

</div>
<div class="submit">
    <a href="question.php?lang=<?php echo $_SESSION['name']?>"><input type="submit" value="START"></a>
</div>

</body>
</html>