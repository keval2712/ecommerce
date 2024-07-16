<?php
include('config.php');
session_start();

$user_id=$_SESSION['user_id'];

if(!isset($user_id)){
    header('location:login.php');
}
// if(isset($_POST['add_product'])){
//     $name=mysqli_real_escape_string($conn,$_POST['name']);
//     $price=$_POST['price'];
//     $image=$_FILES['image']['name'];
//     $image_size=$_FILES['image']['size'];
//     $image_tmp_name=$_FILES['image']['tmp_name'];
//     $image_folder='uploaded_image/'.$image;

//     $select_product_name=mysqli_query($conn,"select name from sellbook where name='$name'")or die('query failed');

//     if(mysqli_num_rows($select_product_name) >= 0){
    
//         $add_product_query=mysqli_query($conn,"insert into sellbook(name,price,image) values('$name','$price','$image')")or die('query failed');
//         if($add_product_query){
//             if($image_size > 2000000){
//                 $message[]='image size to be large';
//             }else{
//                 move_uploaded_file($image_tmp_name,$image_folder);
//                 $message[]='product added successfully';
//             }  
//         }else{
//             $message[]='product could not be added';
//         }
        
        
//     }
// }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sell Book</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="css/admin_style.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body>
    <?php include 'header.php' ?>
<section class="add-products">
<h1 class="title">sell products</h1>
    <form method="post" action="sellchekout.php" enctype="multipart/form-data" >
        <h3>add products</h3>
    <input type="text" name="name" class="box" placeholder="enter product name" required/>
    <input type="number" name="price" min="0" class="box" placeholder="enter product price" required>
    <input type="file" name="image" accept="image.jpg,image.jpeg,image.png" class="box" required>
    <input type="submit" value="add product" name="order-btn" class="btn">
    <!-- <a href="sellchekout.php" class="btn">add product</a> -->
    </form>
</section>
</body>
</html>