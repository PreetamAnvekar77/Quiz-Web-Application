<?php
    require_once('db_connection.php');
    $message="";
    $message1="";
    $message2="";
    
    
    $name =  ( isset($_POST['name']) == TRUE ) ? $_POST['name'] :  '';
    $em =  ( isset($_POST['email']) == TRUE ) ? $_POST['email'] :  '';
    $pass =  md5(( isset($_POST['pwd']) == TRUE ) ? $_POST['pwd'] :  '');
    $cpass =  md5(( isset($_POST['cpwd']) == TRUE ) ? $_POST['cpwd'] :  ''); 

    if(!(empty($em)))
    {
        $em_err = " SELECT * from registration where email = '$em' ";
        $eq = mysqli_query($link, $em_err);
        $em_count = mysqli_num_rows($eq);
    
        if($em_count > 0)
        {
            $message1="Email already exists";
        }
        else
        {   
            if($pass === $cpass)
            {
                
                $query = "INSERT INTO Registration(Email,Username,Password) VALUES('$em','$name','$pass')";
                $result = mysqli_query($link, $query);

                if($result)
                {
                    $sql = " INSERT INTO score (Email) values ('$em')";
                    $result = mysqli_query($link, $sql);
                    if($result){

                        header("location: login.php");
                    }
                }
            }
            else
            {
                $message2="Password Doesn't Match";
            }
        }
    }
?>

<html>
    <head>
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>Registration Page</title>
        <link rel="stylesheet" href="css/signup_login.css">
        <link rel="stylesheet" href="css/nav.css">
    </head>
    <body>
    <body >
    <nav>
     <h2>iQuiz</h2>
     <ul>
         <li><a href="login.php">Log-in</a></li>
        
         <li><a href="about.php">About</a></li>
</ul>

</nav>
    
   
    <section >
            <div class="login-box">
                <h1 style="color: orange;"> Register </h1>
                <form method = "POST" action="signup.php">
                <div class="textbox">
                    <i class="fas fa-user"></i>
                    <input type="text" name="name" placeholder="Enter Name"  required/>
                </div>
                <div class="textbox">
                    <i class="fas fa-user"></i>
                    <input type="email" name="email" placeholder="Enter Email" required/>
                </div>
                <?php echo "<div class='message1'>$message1</div>";?>

                <div class="textbox">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="pwd" placeholder="Enter Password" required minlength=8 pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"/>
                </div>

                <div class="textbox">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="cpwd" placeholder="Enter to Confirm Password" required/>
                </div>
                <?php echo "<div class='message1'>$message2</div>";?>
                <input type="submit" class="btn" value="Submit">
            </div>
    </section>
    </body>
</html>