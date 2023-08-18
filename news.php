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
    <title>Document</title>
    <link rel="stylesheet" href="./css/grid3.css">
    <link rel="stylesheet" href="./css/news.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="./js/script.js"></script>
    <script src="https://kit.fontawesome.com/9a1a0cef63.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>

<body>
    <section>
        <header id="header">
            <div id="inner-header" class="container">
                <a href="home.php" class="logo"><img src="./img/logo1.png" alt=""></a>
                <ul id="main-menu">
                    <li><a href="about.php">giới thiệu</a></li>
                    <li><a  id="about" href="news.php">Tin tức</a></li>
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
        <div class="banner-slider__scroll">
            
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="brand-news">
    <?php

          $sql = " select * from category_news ";
          $value = executeResult($sql);
          foreach ($value as $key) {
              $id_news = $key['id']; 
              $sql1 = " select * from articles where id_cat = " .$id_news;
              $value1 = executeResult($sql1);?>
        <div class="brand">
            <h2><?=$key['name']?></h2>
        <br>
        <?php   

                $sql = " select * FROM articles where id_cat = '".$id_news."' ORDER BY RAND() LIMIT 1" ;
                $value = executeSingleResult($sql);
                if ($value != null) {
                  $image = $value['image'];
                  $name  =  $value['name'];?>

             
        <div class="news-grid">
            <div class="news-grid__col">
              <div class="news">
                <div class="news__frame">
                  <img src="<?=$image?>" alt="">
                </div>
                <div class="news__overlay">
                  <div class="news__title">
                    <a href="detail-news.php?id=<?=$key['id']?>"><?=$name?></a>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>

            <?php   

                $sql = " select * FROM articles where id_cat = '".$id_news."' ORDER BY RAND() LIMIT 4" ;
                $value = executeResult($sql);
                foreach ($value as $key ) {

                  $image = $key['image'];
                  $name  =  $key['name'];

              ?>
            <div class="news-grid__col">
              <div class="news-2">
                <div class="news-2__frame">
                  <img src="<?=$image?>" alt="">
                </div>
                <div class="news-2__body">
                  <div class="news-2__cat">
                    Tin thương hiệu
                  </div>
                  <h3 class="news-2__title">
                    <a href="detail-news.php?id=<?=$key['id']?>"><?=$name?></a>
                  </h3>
                  <div class="news-2__btn-wrap">
                    <a href="detail-news.php?id=<?=$key['id']?>" class="news-2__btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
          </div>
        </div>
        <div class="clearfix"></div>
        <br><br><br>
        
    <?php } ?>
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