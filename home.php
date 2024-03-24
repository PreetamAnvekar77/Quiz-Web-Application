<?php
session_start();
?>
<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width,inital-scale=1">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="icon" type="image/jpg" href="images/quiz-logo.png">
  <title> Home </title>
  <link
    href="https://fonts.googleapis.com/css2?family=Dosis:wght@300&family=Fira+Sans:wght@300&family=Inter:wght@600&family=Poppins:wght@500&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="css/home1.css">
    <link rel="stylesheet" href="css/nav.css">
  
</head>

<body>
<script>
        sessionStorage.setItem("m",9);
    sessionStorage.setItem("s",59);
        </script>

<nav>
     <h2>iQuiz</h2>
     <ul>
         <li><a href="home.php">Home</a></li>
         <li><a href="score.php">Score</a></li>
         <li><a href="about.php">About</a></li>
         <li><a href="logout.php">Logout</a></li>
</ul>

</nav>

  <div class="content">
    <div class="grid-container">
      <div class="header">
        <h3>C</h3>
        <p>A Procedural Programming language</p>
        <center>
        <a href="inst.php?lang=C"><button class="button">C</button></a>
        </center>
      </div>


      <div class="header">
        <h3>CSS</h3>
        <p>A style sheet for your webpage</p>
        <center>
        <a href="inst.php?lang=CSS"><button class="button">CSS</button></a>
        </center>
      </div>
      <div class="header">
        <h3>JAVA</h3>
        <p>An imperative Programming language</p>
        <center>
        <a href="inst.php?lang=JAVA"><button class="button">JAVA</button></a>
        </center>
      </div>
      <div class="header">
        <h3>C++</h3>
        <p>An object-oriented Programming language</p>
        <center>
        <a href="inst.php?lang=Cpp"><button class="button">C++</button></a>
        </center>
      </div>

      <div class="header">
        <h3>PYTHON</h3>
        <p>An interpreted language</p>
        <center>
        <a href="inst.php?lang=PYTHON"><button class="button">PYTHON</button></a>
        </center>
      </div>
      <div class="header">
        <h3>HTML</h3>
        <p>Structuring the Webpage</p>
        <center>
        <a href="inst.php?lang=HTML"><button class="button">HTML </button></a>
        </center>
      </div>
    </div>

  </div>
  <section class="about" id="about">
    <img src="images/select.png" alt="Select" />
    <img src="images/check-mark.png" alt="Checkmark" />
    <img src="images/score.png" alt="score" /><br><br>

    <p class="abt">Pick a language </p>
    <p class="abt">Tick the answers</p>
    <p class="abt">Get the scores </p>

  </section>



</body>

</html>