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
    <link rel="stylesheet" href="./css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="./js/script.js"></script>
    <script src="https://kit.fontawesome.com/9a1a0cef63.js" crossorigin="anonymous"></script>
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <title>HABECO</title>
</head>

<body>
        <header id="header">
            <div id="inner-header" class="container">
                <a href="home.php" class="logo"><img src="./img/logo1.png" alt=""></a>
                <ul id="main-menu">
                    <li><a href="about.php">giới thiệu</a></li>
                    <li><a href="news.php">Tin tức</a></li>
                    <li><a  href="product.php">sản phẩm</a></li>
                    <li><a href="recruitment.php">tuyển dụng</a></li>
                    <li><a href="">thông tin cổ đông</a></li>
                    <li>
                    <?php 
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
                                
								

							  

						<?php  } ?>
                    </li>
                </ul>
            </div>
        </header>
        <div id="banner">

        </div>
        <div class="movetop"></div>
        <div class="banner-slider__scroll">
        
        </div>
        <div class="clearfix"></div>
        <section id="content" class="row">
            <h1>Tiêu điểm</h1>
            <br>
            <?php   

                $sql = " select * FROM articles ORDER BY RAND() LIMIT 1" ;
                $value = executeSingleResult($sql);
                if ($value != null) {
                  $image = $value['image'];
                  $name  =  $value['name'];

             ?>
            <div class="news-grid">
              <div class="news-grid__col">
                <div class="news">
                  <div class="news__frame">
                    <img src="<?=$image?>" alt="">
                  </div>
                  <div class="news__overlay">
                    <div class="news__title">
                      <a href="detail-news.php?id=<?=$key['id']?>">
                        <?=$name?>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            <?php } ?>
              <?php   

                $sql = " select * FROM articles ORDER BY RAND() LIMIT 4" ;
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
        </section>
        <div class="clearfix"></div>
        <section class="products">
            <div class="pro">
                
                <h2>
                    Sản phẩm
                </h2>
                <br>
                <div class="a">
                    <div
      style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
      class="swiper mySwiper"
    >
      <div
        class="parallax-bg"
        style="
          background-image: url(./img/section-bg.png);
          background-color: #fff;
        "
        data-swiper-parallax="-23%"
      ></div>
      <div class="swiper-wrapper">



                 <?php
            $sql = "select * from products ";
            $value = executeResult($sql);
            foreach($value as $key){?>

        <div class="swiper-slide">
          <div class="slogan">
            <div class="title" data-swiper-parallax="-300"><img src="<?=$key['logo']?>" alt=""></div>
          
            <div class="text" data-swiper-parallax="-100">
              <p>
                 <?=$key['slogan']?>
              </p>
            </div>
            <button><a class="btn" href="">Chi tiết</a></button>
          </div>
          <div class="subtitle" data-swiper-parallax="-200"><img src="<?=$key['image']?>" alt=""></div>
        </div>
        <?php } ?>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>

    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        speed: 600,
        parallax: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>
                </div>
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
        

        <!-- <script>
        $(document).ready(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop()) {
                    $('header').addClass('sticky');
                }
                else {
                    $('header').removeClass('sticky');
                }
            })
            $('a').click(function (event) {
                $('html, body').animate({
                    scrollTop: $($.attr(this, 'href')).offset().top
                }, 700);
                event.preventDefault();
            });
        }
        )
    </script> -->
</body>

</html>