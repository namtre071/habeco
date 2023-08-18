<?php
        require_once('datahelper/datahelper.php');
        session_start();
        if (isset($_GET['id'])) {
            $id_news_now = $_GET['id'];
        }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="./css/detail-news.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="./js/script.js"></script>
    <script src="https://kit.fontawesome.com/9a1a0cef63.js" crossorigin="anonymous"></script>
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
    <br><br><br>
    <div class="clearfix"></div>
    <section class="sectiom-2">
        <?php 
            $sql = " select * from articles where id = " .$id_news_now ;
            $value = executeSingleResult($sql);
            if ( $value != null) {
                $name = $value['name'] ;
                $image = $value['image'];
                $summary = $value['summary'];
                $content= $value['content'];
                $createtime = $value['create_time'];
                ?>
        <div class="container">
            <div class="section-2__header">
                <h2 class="section-2__title">
                    <?=$name?>
                </h2>
            </div>
            <blockquote>
                <p class="news-description"> 
                    <?=$createtime?> - 
                    <strong>
                           <?=$summary?>                 
                    </strong>
                </p>
            </blockquote>
            <article class="content">
                <div class="img">
                    <img src="<?=$image?>" alt="">
                </div>
                <p>
                <?=$content?>
                </p>
            </article>

        </div>
        <?php } ?>
    </section>
    <div class="clearfix"></div>
    <div class="dif-news">
       
            <h2 class="dif__title">
                Tin tức khác
            </h2>
            <div class="list">
                <div class="list-item">
                <?php
                    $sql =  "select * from articles where id != " .$id_news_now;
                    $value = executeResult($sql);
                    foreach ($value as $key) {?>
                    <div class="news-3 media">
                        <a class="news-3__frame" href="">
                            <img src="<?=$key['image']?>" alt="">
                        </a>
                        <div class="media-body">
                            <h3 class="news-3__title">
                                <a href="">
                                    <?=$key['name']?>
                                </a>
                                
                            </h3>
                            <p>
                                <?=$key['summary']?>
                            </p>
                            <a class="btn1" href="detail-news.php?id=<?=$key['id']?>"><button>Chi tiết</button></a>
                        </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
       
    </div>
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
</body>
</html>