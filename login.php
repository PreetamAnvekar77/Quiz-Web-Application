<?php
   $message="";
   $message1="";

 require_once('db_connection.php');
   
    if(isset($_POST['submit']))
    {
        
        $em =  $_POST['email'];
        $pass = md5( $_POST['pwd']);
       
        if(!(empty($em) && empty($pass)))
        {
            $query = "SELECT * FROM `registration` where email = '$em' and password = '$pass'";
    
            $result = mysqli_query($link, $query);
            $a=$result->fetch_assoc();
            $name=$a['name'];
            $aadh=$a['aadhaar'];
            $number=$a['number'];
            $count = mysqli_num_rows($result);
            if($count > 0)
            {
                session_start();
                $_SESSION["email"] = $em;
                header("location: home.php");
                
            }
            else
            {
                $message= "Please Check your e-mail ";
                
                $message1= "Please Check your password";
            }
    } 
}

?> 


<html>
    <head>
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>Login Page</title>
        <link rel="stylesheet" href="css/signup_login.css">
        <link rel="stylesheet" href="css/nav.css">
    </head>
    <body>
    <nav>
     <h2>iQuiz</h2>
     <ul>
         <li><a href="signup.php">Sign-Up</a></li>
         <li><a href="about.php">About</a></li>
</ul>

</nav> 
        <section class="header">
            <div class="login-box">
                <h1 style="color: orange;"> Login </h1>
                <form method = "POST" action="login.php">
                <div class="textbox">
                    <i class="fas fa-user"></i>
                    <input type="email" name="email" placeholder="Enter your Email"/>
                </div>
                <div class="message1"><?php echo"$message"; ?></div>
                <div class="textbox">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="pwd" placeholder="Enter your Password"/>
                </div>
                <div class="message1"><?php echo"$message1"; ?></div>
                <input type="submit" class="btn" value="Log in" name="submit">

                <div class="signup">
                    Not Registered ? <a href = "signup.php"> Sign-up </a>

            </div>
    </section>

    </body>
</html>