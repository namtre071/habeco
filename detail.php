
<?php
require_once('datahelper/datahelper.php');
session_start();
if (isset($_GET['id'])) {
    $id_cate_now = $_GET['id'];
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./css/detail.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="./js/script.js"></script>
    <script src="https://kit.fontawesome.com/9a1a0cef63.js" crossorigin="anonymous"></script>
    <script src='https://cdn.rawgit.com/matthieua/WOW/1.0.1/dist/wow.min.js'></script>
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <title>Document</title>
</head>

<body>
    <header id="header">
        <div id="inner-header" class="container">
            <a href="home.php" class="logo"><img src="./img/logo1.png" alt=""></a>
            <ul id="main-menu">
                <li><a href="about.php">giới thiệu</a></li>
                <li><a href="news.php">Tin tức</a></li>
                <li><a href="product.php">sản phẩm</a></li>
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
    <section class="intro">
        <div class="container">
            <?php 
                $sql = " select category_id from products where id = " .$id_cate_now ;
                print($sql);
                $id_cat_now = executeSingleResult($sql);
                if ($id_cat_now !=null) {
                    $id_cat_now = $id_cat_now['category_id'];
                }
                $sql1 = " select * from products where id = " .$id_cate_now ;
                $value = executeResult($sql1);
                foreach ($value as $key) {
                    $logo  = $key['logo'];
                    $title = $key['slogan'];
                
            ?>
            <div class="intro__logo">
                <img src="<?= $logo?>" alt="">
            </div>
            <div class="intro__content">

               <?=$title?>
            </div>
        </div>
        <?php } ?>
    </section>
    <div class="clearfix"></div>
    <section class="detail">
        <?php 

            $sql = " select * from products where id = " .$id_cate_now ;
            $value = executeSingleResult($sql);
            if ( $value != null) {
                $name = $value['name'] ;
                $image = $value['image'];
                $capacity = $value['capacity'];
                $quantity= $value['quantity'];
                $concentration = $value['concentration'];
                $content= $value['content'];?>
           

        
        <img class="detail__bg" src="./img/pd-img/trucbach-bg.png" alt="">
        <div class="container">
            <div class="row">
                <div class="grid">
                    <div class="detail-grid">

                        <div class="grid-img">
                            <img src="<?=$image?>" alt="">
                        </div>
                    </div>
                    <div class="detail-grid">
                        <h2 class="title-item"><?=$name?></h2>
                        <div class="detail__grid">
                            <div class="detai__col">
                                <div class="detail__icon">
                                    <img src="./img/pd-img/detail-icon.png" alt="">
                                </div>
                                <div class="detail__text">
                                    Dung tích
                                </div>
                                <div class="detail__val">
                                    <?=$capacity?>
                                </div>
                            </div>
                            <div class="detai__col">
                                <div class="detail__icon">
                                    <img src="./img/pd-img/detail-icon.png" alt="">
                                </div>
                                <div class="detail__text">
                                    Số lượng
                                </div>
                                <div class="detail__val">
                                    <?=$quantity?> 
                                </div>
                            </div>
                            <div class="detai__col">
                                <div class="detail__icon">
                                    <img src="./img/pd-img/detail-icon.png" alt="">
                                </div>
                                <div class="detail__text">
                                    Nồng độ
                                </div>
                                <div class="detail__val">
                                    <?=$concentration?>
                                </div>
                            </div>
                        </div>
                        <div class="detail-content">
                            <?=$content?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <?php } ?>
    </section>
    <div class="clearfix"></div>
    <section class="section">
        <h2 class="section__title wow fadeInUp">
            Tìm hiểu thêm
        </h2>
        <div class="more">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <?php
                    $sql =  "select * from products where id != " .$id_cate_now;
                    $value = executeResult($sql);
                    foreach ($value as $key) {?>
                    
                  <div class="swiper-slide">
                      <div class="img">
                          <a href="detail.php?id=<?=$key['id']?>">
                            <img src="<?=$key['image']?>" alt="">
                          </a>
                      </div>
                  </div>
                   
                  <?php } ?>
                  
                </div>
                <div class="swiper-pagination"></div>
              </div>
          
              <!-- Swiper JS -->
              <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
          
              <!-- Initialize Swiper -->
              <script>
                var swiper = new Swiper(".mySwiper", {
                  slidesPerView: 6,
                  spaceBetween: 30,
                  pagination: {
                    el: ".swiper-pagination",
                    clickable: true,
                  },
                });
              </script>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="footer">
        <footer>
            <p>
                <img src="./img/logo1.png" alt="">
            </p>
            <p style="text-transform: uppercase; font-weight: bold; font-size: 20px; margin-top: 10px;">
                TỔNG CÔNG TY CỔ PHẦN BIA - RƯỢU - NƯỚC GIẢI KHÁT HÀ NỘI
            </p>
            <p style="margin-top: 10px;">
                Copyright 2020 © Habeco
            </p>
            <p style="margin-top: 10px;">
                <a href="" class="icon"><i class="fab fa-facebook-f "></i></a>
                <a href="" class="icon"><i class="fab fa-youtube "></i></a>
               <a href="" class="icon"> <i class="fab fa-instagram "></i></a>
            </p>
        </footer>
        <div class="footer-menu">
            
        </div>
    </section>
</body>

</html>