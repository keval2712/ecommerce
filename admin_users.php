<?php
session_start();
include 'config.php';
$admin_id=$_SESSION['admin_id'];
if(!isset($admin_id)){
    header('location:login.php');
 }
if(isset($_GET['delete'])){
    $delete_id=$_GET['delete'];
    mysqli_query($conn,"delete from users where id='$delete_id'")or die('query failed');
    header('location:admin_users.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin users</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="css/admin_style.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body>
    
<?php include 'admin_header.php'; ?>
<section class="users">
<div class="box-container">
    <?php
    $select_users=mysqli_query($conn,"select * from users")or die('query failed');
    while($fetch_users=mysqli_fetch_assoc($select_users)){
    
    ?>
    <div class="box">
        <p>username: <span><?php echo $fetch_users['name']; ?></span></p>
        <p>email: <span><?php echo $fetch_users['email']; ?></span></p>
        <a href="admin_users.php?delete=<?php echo $fetch_users['id']; ?>" onclick="return confirm('delete this user?');" class="delete-btn">remove</a>
    </div>
    <?php
    };
    ?>
</div>
</section>



<script src="js/admin_script.js"></script>
</body>
</html>