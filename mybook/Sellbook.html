<?php
include('config.php');
session_start();

$user_id=$_SESSION['user_id'];

if(!isset($user_id)){
    header('location:login.php');
}

if(isset($_POST['add_to_cart'])){

   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = $_POST['product_quantity'];

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_cart_numbers) > 0){
      $message[] = 'already added to cart!';
   }else{
      mysqli_query($conn, "INSERT INTO `cart`(user_id, name, price, quantity, image) VALUES('$user_id', '$product_name', '$product_price', '$product_quantity', '$product_image')") or die('query failed');
      $message[] = 'product added to cart!';
   }

}
if(isset($_POST['add_product'])){
    $name=mysqli_real_escape_string($conn,$_POST['bookname']);
    $price=$_POST['price'];
     $image=$_FILES['image']['name'];  
    $_SESSION["bname"] = $name;
    $_SESSION["bprice"] = $price;
     $_SESSION["bimage"] = $image;
    
  $image_size=$_FILES['image']['size'];
     $image_tmp_name=$_FILES['image']['tmp_name'];
     $image_folder='uploaded_image/'.$image;
     header('location:sellchekout.php');
    //  $add_product_query=mysqli_query($conn,"insert into sellbook(name,price,image) values('$name','$price','$image')")or die('query failed');
    //  move_uploaded_file($image_tmp_name,$image_folder);
    }
// if(isset($_POST['add_product'])){
//     $name=mysqli_real_escape_string($conn,$_POST['name']);
//     $price=$_POST['price'];
//     $image=$_FILES['image']['name'];
//     $image_size=$_FILES['image']['size'];
//     $image_tmp_name=$_FILES['image']['tmp_name'];
//     $image_folder='uploaded_image/'.$image;

//     $select_product_name=mysqli_query($conn,"select name from sellbook where name='$name'")or die('query failed');

//     if(mysqli_num_rows($select_product_name) > 0){
//         $message[]='product name already exists';
//     }else{
//         $add_product_query=mysqli_query($conn,"insert into sellbook(name,price,image) values('$name','$price','$image')")or die('query failed');
//         if($add_product_query){
//             if($image_size > 2000000){
//                 $message[]='image size to be large';
//             }else{
//                 move_uploaded_file($image_tmp_name,$image_folder);
//                 $sucess[]='product added successfully';
//             }  
//         }else{
//             $message[]='product could not be added';
//         }
        
        
//     }

// }
if(isset($sucess)){
    foreach($sucess as $sucess){
        echo '
        <div class="sucess">
            <span>'.$sucess.'</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
        </div>';
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/admin_style.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body>
<?php include 'header.php'; ?>

<div class="heading">
   <h3>our old products</h3>
   <p> <a href="home.php">home</a> / shop </p>
</div>
<section class="add-products">
<h1 class="title">sell products</h1>
    <form method="post" enctype="multipart/form-data">
        <h3>add products</h3>
    <input type="text" name="bookname" class="box" placeholder="enter product name" required/>
    <input type="number" name="price" min="0" class="box" placeholder="enter prouct price" required>
    <input type="file" name="image" accept="image.jpg,image.jpeg,image.png" class="box" required>
    <input type="submit" value="add product" name="add_product" class="btn">
    </form>
</section>
<section class="products">
<h1 class="title">old products</h1>
    <div class="box-container">

        <?php
            $select_products=mysqli_query($conn,"select * from sellbook where status='accepted'")or die('query failed');
            if(mysqli_num_rows($select_products)>0){
                while($fetch_products=mysqli_fetch_assoc($select_products)){
                    $originalPrice = $fetch_products['price'];
                    $percentlPrice = ($originalPrice * 25)/100;
                    $finalCost = $percentlPrice + $originalPrice;
        ?>
        <form action="" method="post" class="box">
      <img class="image" src="uploaded_image/<?php echo $fetch_products['image']; ?>" alt="">
      <div class="name"><?php echo $fetch_products['name']; ?></div>
      <div class="price">$<?php echo $finalCost; ?>/-</div>
      <input type="number" min="1" name="product_quantity" value="1" class="qty">
      <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
      <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
      <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
      <input type="submit" value="add to cart" name="add_to_cart" class="btn">
     </form>
        <?php
                }
            }else{
                echo '<p class="empty">no product added yet!</p>';
            }
        ?>
    </div>

</section>
<?php include 'footer.php' ?>
<script src="js/script.js"></script>
</body>
</html>