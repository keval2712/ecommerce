<?php
include 'config.php';
if(isset($_POST['submit'])){

    //import users registartion data
    $name=mysqli_real_escape_string($conn,$_POST['name']);
    $email=mysqli_real_escape_string($conn,$_POST['email']);
    $pass=mysqli_real_escape_string($conn,$_POST['password']);
    $cpass=mysqli_real_escape_string($conn,$_POST['cpassword']);
    //

    $select_users=mysqli_query($conn,"select * from users where email='$email' and password='$pass'") or die('query failed');
    if(mysqli_num_rows($select_users)>0){
        $message[]="user already exists";
    }
    else{
        if($pass!=$cpass){
            $message[]='confirm password do not match';
        }else{
            mysqli_query($conn,"insert into users(name,email,password) values('$name','$email','$cpass')") or die('query failed');
            $sucess[]='registered successfully';
            header('location:login.php');
        }
        
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>register</title>
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
}
// if(isset($sucess)){
//     foreach($sucess as $sucess){
//         echo '
//         <div class="sucess">
//             <span>'.$sucess.'</span>
//             <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
//         </div>';
//     }
// }
?>
    <div class="form-conatainer">
        <form action="" method="post">
            <h3>register now</h3>
            <input type="text" name="name" placeholder="enter your name here" required class="box">
            <input type="email" name="email" placeholder="enter your email here" required class="box">
            <input type="password" name="password" placeholder="enter your password" required class="box">
            <input type="password" name="cpassword" placeholder="confirm your password" required class="box">
            <input type="submit" value="register now" name="submit" class="btn">
            <p>already have an account? <a href="login.php">login now</a></p>
            
        </form>
    </div>
</body>
</html>