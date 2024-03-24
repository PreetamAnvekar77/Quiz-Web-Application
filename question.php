<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Questions</title>
        <link rel="stylesheet" href="css/style2.css">
       
    </head>
    <body>
    <nav>
    <h1>iQuiz</h1>
     <time id="timing"></time>
     <script>
        var var1=setInterval(time,1000);

           var m= sessionStorage.getItem("m");
           var s= sessionStorage.getItem("s");
     if(m==0 && s==0){
    
    alert("Time Out");
    clearInterval(var1)
    window.location.href="result.html";
}  

           
            var ids=document.getElementById("timing");
          function time(){
                ids.innerHTML=m+":"+s;
                
s-=1;
sessionStorage.setItem("s",s);
if(s==0 && m!=0)
{
    s=59;
    m-=1;
    sessionStorage.setItem("m",m);
    sessionStorage.setItem("s",s);
    time();
}
if(m==0 && s==0){
    
    alert("Time Out");
    clearInterval(var1)
    window.location.href="result.php";
}

          }
          </script>
      </nav>
      <form action="result.php" method="POST">
          <div class="empty">
          <center><h2><?php echo $_SESSION['name']?>  QUIZ</h2></center>
          </div>
       <?php
       $name=strtolower($_SESSION['name'])."_quiz";
        require_once("connect.php");
        $sql="SELECT * FROM $name ";
        $r1 = mysqli_query($connect,$sql);
         while($result=mysqli_fetch_array($r1)){
        echo"<div class='question'>";
        echo "<b>";
       echo $result['number'];
       echo".    ";
       echo $result["question"];
       echo "</b>";?>
 <label><input type='radio' name="q<?php echo $result['number']?>" value="<?php echo $result['opt1'];?>"> <?php echo$result['opt1'];?></label>
 <label><input type='radio' name="q<?php echo $result['number']?>" value="<?php echo $result['opt3'];?>"> <?php echo$result['opt3'];?></label>
 <label><input type='radio' name="q<?php echo $result['number']?>" value="<?php echo $result['opt2'];?>"> <?php echo$result['opt2'];?></label>
 <label><input type='radio' name="q<?php echo $result['number']?>" value="<?php echo $result['opt4'];?>"> <?php echo$result['opt4'];




echo"</label></div>";
}
?>
<div class="submit"><input type="submit" value="Submit" name = "submit"></div>
</form>
</body>
</html>