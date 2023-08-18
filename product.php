
<?php
        require_once('datahelper/datahelper.php');
        session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/pro.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="./js/script.js"></script>
    <link rel="stylesheet" href="./css/libs.css">
    <script src="https://kit.fontawesome.com/9a1a0cef63.js" crossorigin="anonymous"></script>
    <link rel='stylesheet' href=''https://cdn.rawgit.com/daneden/animate.css/v3.1.0/animate.min.css'>
    <script src='https://cdn.rawgit.com/matthieua/WOW/1.0.1/dist/wow.min.js'></script>
    <title>Document</title>
    <script> new WOW().init(); </script>
</head>
<body>
    <header id="header">
            <div id="inner-header" class="container">
                <a href="home.php" class="logo"><img src="./img/logo1.png" alt=""></a>
                <ul id="main-menu">
                    <li><a href="about.php">giới thiệu</a></li>
                    <li><a href="news.php">Tin tức</a></li>
                    <li><a id="pro" href="product.php">sản phẩm</a></li>
                    <li><a href="recruitment.php">tuyển dụng</a></li>
                    <li><a href="">thông tin cổ đông</a></li>
                    <li><?php 
                          if (!isset($_SESSION['username'])) { ?>			
                          <a href="Login/login.php">Đăng Nhập</a>
                            
                        
                        <?php } else{ ?>

                      <a href="">Xin chào <?=$_SESSION['username']?></a>
                            
                                <li>
                                  <a href="logout.php">Đăng Xuất</a>
                                </li>
                                
                                
                                <li>
                                  <a href="admin/index.php">Trang quản trị</a>
                                </li>
                                
								

							  

						<?php  } ?></li>
                </ul>
            </div>
        </header>
        <div id="banner">

        </div>
        <div class="movetop"></div>
        <div class="banner-slider__scroll">
        
        </div>
        <div class="clearfix"></div>
        <section class="products">
            <h2>Sản phẩm</h2>
            <br>
           <?php

                $sql = " select * from category_pro ";
                $value = executeResult($sql);
                foreach ($value as $key) {
                    $id_pro = $key['id']; 
                    $sql1 = " select * from products where category_id = " .$id_pro;
                    $value1 = executeResult($sql1);?>
                  

            <section class="pd-intro">
               
                <img class="bg-intro" src="<?=$key['background']?>" alt=""> 
               
                <div class="pd-intro_group">
                     <?php  foreach ($value1 as $key1) {
                       $logo    = $key1['logo'];
                       $image   =  $key1['image'];
                       $name    = $key1['name'];?>
                    <div class="pd-intro_item wow fadeInRight">
                        <div class="pd-intro_logo">
                            <img src="<?=$logo?>" alt="">
                        </div>
                        <a href="detail.php?id=<?=$key1['id']?>" class="pd-intro_frame">
                            <img src="<?=$image?>" alt="">
                        </a>
                        <div class="pd-intro_name">
                            <a href=""> <?=$name?></a>
                        </div>
                    </div><?php } ?>
                </div>
                
            </section>
        <?php } ?>
            
        </section>
        
</body>
</html>