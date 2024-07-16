<?php
include 'config.php';
session_start();
// $admin="mybookrk2227@gmail.com";
if(isset($_POST['submit'])){

    //import users registartion data
    $email=mysqli_real_escape_string($conn,$_POST['email']);
    $pass=mysqli_real_escape_string($conn,$_POST['password']);

    //

    $select_users=mysqli_query($conn,"select * from users where email='$email' and password='$pass'") or die('query failed');
    $select_admin=mysqli_query($conn,"select * from admin_user where email='$email' and password='$pass'") or die('query failed');
    if(mysqli_num_rows($select_admin)>0){
      $row=mysqli_fetch_assoc($select_admin);
      if($row['email'] == $email && $row['password']==$pass){
        $_SESSION['admin_name']=$row['name'];
        $_SESSION['admin_email']=$row['email'];
        $_SESSION['admin_id']=$row['id'];
        header('location:admin_page.php');
      }
    }
    elseif (mysqli_num_rows($select_users)>0) {
        # code...
        $row=mysqli_fetch_assoc($select_users);
        $_SESSION['user_name']=$row['name'];
        $_SESSION['user_email']=$row['email'];
        $_SESSION['user_id']=$row['id'];
        header('location:home.php');
    }
    else{
        $message[]="incorrect email or password";      
    }
    
 }
 
   


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <!-- css link -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body>
<!-- php code -->
<?php
if(isset($message)){
    foreach($message as $message){
        echo '
        <div class="message">
            <span>'.$message.'</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
        </div>';
    }
}if(isset($sucess)){
    foreach($sucess as $sucess){
        echo '
        <div class="sucess">
            <span>'.$sucess.'</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
        </div>';
    }
}
?>
    <div class="form-conatainer">
        <form action="" method="post">
            <h3>login now</h3>
           
            <input type="email" name="email" placeholder="enter your email here" required class="box">
            <input type="password" name="password" placeholder="enter your password" required class="box">
            
            <input type="submit" value="login now" name="submit" class="btn">
            <p>don't have an account? <a href="register.php">register now</a></p>
            
        </form>
    </div>
</body>
</html>