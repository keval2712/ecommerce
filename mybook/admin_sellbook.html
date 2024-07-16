<?php
include('config.php');
session_start();

$admin_id = $_SESSION['admin_id'];

if (!isset($admin_id)) {
    header('location:login.php');
}

if (isset($_GET['delete'])) {
    $delete_id = $_GET['delete'];
    $delete_image_query = mysqli_query($conn, "select image from sellbook where id='$delete_id'") or die('query failed');
    $fetch_delete_image = mysqli_fetch_assoc($delete_image_query);
    unlink('uploaded_image/' . $fetch_delete_image['image']);
    mysqli_query($conn, "delete from sellbook where id='$delete_id'") or die('query failed');
    header('location:admin_sellbook.php');
}
if (isset($_GET['accept'])) {
    //echo "UPDATE `products` SET status = 'accepted'  WHERE id = '".$_GET['accept']."'";die;
    mysqli_query($conn, "UPDATE `sellbook` SET status = 'accepted'  WHERE id = '" . $_GET['accept'] . "'") or die('query failed');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="css/admin_style.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>

<body>
    <?php include 'admin_header.php'; ?>

     <section class="sell-products">
        <h1 class="title">sell products</h1>



        <div class="box-container">
            <?php
            $select_products = mysqli_query($conn, "select * from sellbook") or die('query failed');
            if (mysqli_num_rows($select_products) > 0) {
                while ($fetch_products = mysqli_fetch_assoc($select_products)) {
            ?>
            <div class="box-child">
                    <div class="box">
                        <img src="uploaded_image/<?php echo $fetch_products['image']; ?>" alt="">
                        <div class="name"><?php echo $fetch_products['name']; ?></div>
                        <div class="price"><?php echo $fetch_products['price']; ?>/-</div>

                    </div>
                    <div class="box">
                        
                        <p>name : <span><?php echo $fetch_products['name']; ?></span></p>
                        <p>number : <span><?php echo $fetch_products['number']; ?></span></p>
                        <p>email : <span><?php echo $fetch_products['email']; ?></span></p>
                        <p>address : <span><?php echo $fetch_products['address']; ?></span></p>
                        <p>total price : <span>$<?php echo $fetch_products['price']; ?>/-</span></p>
                        <?php
                        if ($fetch_products['status'] == 'accepted') {
                        ?>
                            <a href="javascript:void(0)" class="option-btn">Accepted </a>
                        <?php
                        } else {
                        ?>
                            <a href="admin_sellbook.php?accept=<?php echo $fetch_products['id']; ?>" class="option-btn">accept </a>
                        <?php
                        }
                        ?>
                        <a href="admin_sellbook.php?delete=<?php echo $fetch_products['id']; ?>" class="delete-btn" onclick="return confirm('delete this product?'); ">delete </a>
                    </div>
                    </div>
            <?php
                }
            } else {
                echo '<p class="empty">no product added yet!</p>';
            }
            ?>
        </div>

    </section>
    <script src="js/admin_script.js"></script>
</body>

</html>