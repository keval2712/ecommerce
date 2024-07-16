<?php
include('config.php');
session_start();

$admin_id = $_SESSION['admin_id'];

if (!isset($admin_id)) {
    header('location:login.php');
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


    <!-- admin section dashboard -->
    <section class="dashboard">
        <h1 class="title">dashboard</h1>
        <div class="box-container">
            <div class="box">
                <!-- pending payment  -->
                <?php
                $total_pendings = 0;
                $select_pending = mysqli_query($conn, "select total_price from orders where payment_status='pending'") or die('query failed');
                if (mysqli_num_rows($select_pending) > 0) {

                    while ($fetch_pending = mysqli_fetch_assoc($select_pending)) {
                        $total_price = $fetch_pending['total_price'];
                        $total_pendings += $total_price;
                    };
                };
                ?>
                <h3>$<?php echo $total_pendings; ?>/-</h3>
                <p>total pendings</p>
            </div>
            <!-- complete payment -->
            <div class="box">
                <?php
                $total_completed = 0;
                $select_completed = mysqli_query($conn, "select total_price from orders where payment_status='completed'") or die('query failed');
                if (mysqli_num_rows($select_completed) > 0) {

                    while ($fetch_completed = mysqli_fetch_assoc($select_completed)) {
                        $total_price = $fetch_completed['total_price'];
                        $total_completed += $total_price;
                    };
                };
                ?>
                <h3>$<?php echo $total_completed; ?>/-</h3>
                <p>completed payments</p>
            </div>
            <!-- orders place -->
            <div class="box">
                <?php
                $select_orders = mysqli_query($conn, "select * from orders") or die('query failed');
                $number_of_orders = mysqli_num_rows($select_orders);
                ?>
                <h3><?php echo $number_of_orders; ?></h3>
                <p>orders placed</p>

            </div>

            <!-- products list -->
            <div class="box">
                <?php
                $select_products = mysqli_query($conn, "select * from products") or die('query failed');
                $number_of_products = mysqli_num_rows($select_products);
                ?>
                <h3><?php echo $number_of_products; ?></h3>
                <p>products added</p>

            </div>
        <!-- users counting -->
        <div class="box">
                <?php
                $select_users= mysqli_query($conn, "select * from users") or die('query failed');
                $number_of_users = mysqli_num_rows($select_users);
                ?>
                <h3><?php echo $number_of_users; ?></h3>
                <p>users</p>

       </div>
        <!-- message ` -->
        <div class="box">
                <?php
                $select_messages= mysqli_query($conn, "select * from message") or die('query failed');
                $number_of_messages = mysqli_num_rows($select_messages);
                ?>
                <h3><?php echo $number_of_messages; ?></h3>
                <p>new messages</p>
       </div>






        </div>
    </section>


    <script src="js/admin_script.js"></script>
</body>

</html>











