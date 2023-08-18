<?php
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
    <link rel="stylesheet" href="./css/about.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="./js/script.js"></script>
    <script src="https://kit.fontawesome.com/9a1a0cef63.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.css'>
    <link rel='stylesheet' href='https://codepen.io/fancyapps/pen/Kxdwjj.css'>

</head>

<body>
    <section>
        <header id="header">
            <div id="inner-header" class="container">
                <a href="home.php" class="logo"><img src="./img/logo1.png" alt=""></a>
                <ul id="main-menu">
                    <li><a id="about" href="about.php">giới thiệu</a></li>
                    <li><a href="news.php">Tin tức</a></li>
                    <li><a href="product.php">sản phẩm</a></li>
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
        <div class="banner-slider__scroll">

        </div>
        <div class="clearfix"></div>
    </section>
    
    <section id="overview" class="overview">
        <div class="overview-nav">
            <ul class="nav">
                <li><a class="active" href="#overview">Tổng quan</a></li>
                <li><a href="#history">Lịch sử phát triển</a></li>
                <li><a href="#achievement">Thành tựu-chứng nhận</a></li>
                <li><a href="#unit">Đơn vị thành viên</a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
        <h2 id="overview">Tổng quan</h2>
        <div class="section group">
            <div class="col span_1_of_3">
                <img width="80%" src="./img/Tong-quan-jpg.JPG" alt=""> <br> <br>
                <p>
                    Tiền thân của <b>Tổng công ty Cổ phần Bia - Rượu - Nước giải khát Hà Nội</b> là Nhà máy bia Hommel
                    được người Pháp xây dựng từ năm 1890, là khởi đầu cho một dòng chảy nhỏ bé cùng song hành với những
                    thăng trầm của Thăng Long - Hà Nội.
                    Ngày 15/8/1958, trong không khí cả nước sôi sục chào mừng kỷ niệm 13 năm Cách mạng
                    Tháng Tám thành công, khai sinh ra nước Việt Nam Dân chủ Cộng hòa, bốn năm Thủ đô hoàn toàn giải
                    phóng;
                    chai bia Việt Nam đầu tiên mang nhãn hiệu Trúc Bạch ra đời trong niềm vui xúc động lớn lao của cán
                    bộ công nhân viên Nhà máy.
                </p>
            </div>
            <div class="col span_1_of_3">
                <p>
                    Một sản phẩm khẳng định quyền làm chủ của người lao động, phục vụ nhu cầu thiết yếu của xã hội trong
                    giai đoạn khôi phục và phát triển.
                    Từ cột mốc này, Nhà máy bước vào thời kỳ mới – thời kỳ khẳng định thương hiệu của ngành Công nghiệp
                    nước ta nói chung và ngành Đồ uống nói riêng,
                    là niềm tự hào của Hà Nội và cả nước. Từ đó trở đi, ngày 15/8 hàng năm được chọn là Ngày truyền
                    thống của Bia Hà Nội.
                    <br><br>
                    Ngày 6/5/2003, Bộ trường Bộ Công nghiệp (nay là Bộ Công Thương) có Quyết định số 75/2003/QĐ-BCN
                    thành lập Tổng công ty Bia - Rượu - Nước giải khát Hà Nội
                    (viết tắt là HABECO). Từ ngày 16/6/2008, Tổng công ty chính thức chuyển đổi mô hình tổ chức từ một
                    Tổng Công ty Nhà nước sang Tổng Công ty Cổ phần.
                    Đây là bước ngoặt quan trọng để Bia Hà Nội khẳng định vị thế của mình trong giai đoạn hội nhập.
                    <br><br>
                    Trải qua gần 130 năm lịch sử với hơn nửa thế kỷ khôi phục và phát triển, đến nay,
                    Habeco đã trở thành một trong các doanh nghiệp hàng đầu của ngành Đồ uống Việt Nam.
                </p>
            </div>
            <div class="col span_1_of_3">
                <p>
                    Những dòng sản phẩm nổi tiếng làm nên thương hiệu Habeco như Bia hơi Hà Nội, Bia lon Hà Nội, Bia
                    Trúc Bạch, Hanoi Beer Premium…
                    đã nhận được sự tin yêu của người tiêu dùng về cả chất lượng và phong cách, chinh phục những người
                    sành bia trong và ngoài nước.
                    <br><br>
                    Với bí quyết công nghệ - truyền thống trăm năm, cùng hệ thống thiết bị hiện đại, đội ngũ cán bộ công
                    nhân viên lành nghề, có trình độ, tâm huyết,
                    các sản phẩm của HABECO đã nhận được sự mến mộ của hàng triệu người tiêu dùng trong nước cũng như
                    quốc tế. Thương hiệu BIA HÀ NỘI ngày hôm nay được xây dựng,
                    kết tinh từ nhiều thế hệ, là niềm tin của người tiêu dùng, niềm tự hào của thương hiệu Việt.
                    <br><br>
                    Với sức vươn lên mạnh mẽ của một cây đại thụ trong ngành nước giải khát Việt Nam, các sản phẩm của
                    HABECO được phân phối rộng rãi tới không chỉ ở thị trường trong nước
                    mà cả tại các thị trường nước ngoài như Đài Loan, Hàn Quốc, Anh, Đức, Mỹ, Australia, cùng nhiều quốc
                    gia khác trên thế giới.
                </p>
            </div>
        </div>
        <div class="clearfix"></div>
        <h2 id="history">Lịch sử phát triển</h2>
        <div class="slide1">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="year">
                            <div class="year-img">
                                <img src="./img//about_img/2020.jpg" alt="">
                            </div>
                            <div class="idea">
                                <h4 style="color:rgb(9, 59, 9); letter-spacing: 1px;">Năm 2019</h4>
                                <br>
                                <p>
                                    Tháng 5/2019, HABECO chính thức ra mắt nhận diện mới thương hiệu với sologan "Sức
                                    bật Việt Nam"
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="year">
                            <div class="year-img">
                                <img src="./img//about_img/2018.jpg" alt="">
                            </div>
                            <div class="idea">
                                <h4 style="color:rgb(9, 59, 9); letter-spacing: 1px;">Năm 2018</h4>
                                <br>
                                <p>
                                    Dấu mốc 60 năm khôi phục, xây dựng và phát triển (15/8/1958 - 15/8/2018)
                                    Ra mắt nhận diện mới sản phẩm Bia Trúc Bạch
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="year">
                            <div class="year-img">
                                <img src="./img//about_img/2017.jpg" alt="">
                            </div>
                            <div class="idea">
                                <h4 style="color:rgb(9, 59, 9); letter-spacing: 1px;">Năm 2017</h4>
                                <br>
                                <p>
                                    Thành lập nhà máy Bia Hà Nội - Hoàng Hoa Thám.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="year">
                            <div class="year-img">
                                <img src="./img//about_img/2015.jpg" alt="">
                            </div>
                            <div class="idea">
                                <h4 style="color:rgb(9, 59, 9); letter-spacing: 1px;">Năm 2015</h4>
                                <br>
                                <p>
                                    Tháng 5/2019, HABECO chính thức ra mắt nhận diện mới thương hiệu với sologan "Sức
                                    bật Việt Nam"
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="year">
                            <div class="year-img">
                                <img src="./img//about_img/2014.jpg" alt="">
                            </div>
                            <div class="idea">
                                <h4 style="color:rgb(9, 59, 9); letter-spacing: 1px;">Năm 2020</h4>
                                <br>
                                <p>
                                    Tháng 5/2019, HABECO chính thức ra mắt nhận diện mới thương hiệu với sologan "Sức
                                    bật Việt Nam"
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="year">
                            <img src="./img//about_img/2020.jpg" alt="">
                            <div class="idea">
                                <h4 style="color:rgb(9, 59, 9); letter-spacing: 1px;">Năm 2020</h4>
                                <br>
                                <p>
                                    Tháng 5/2019, HABECO chính thức ra mắt nhận diện mới thương hiệu với sologan "Sức
                                    bật Việt Nam"
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="year">
                            <img src="./img//about_img/2020.jpg" alt="">
                            <div class="idea">
                                <h4 style="color:rgb(9, 59, 9); letter-spacing: 1px;">Năm 2020</h4>
                                <br>
                                <p>
                                    Tháng 5/2019, HABECO chính thức ra mắt nhận diện mới thương hiệu với sologan "Sức
                                    bật Việt Nam"
                                </p>
                            </div>
                        </div>
                    </div>


                </div>
                <br> <br>
                <div class="swiper-pagination"></div>
            </div>

            <!-- Swiper JS -->
            <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

            <!-- Initialize Swiper -->
            <script>
                var swiper = new Swiper(".mySwiper", {
                    slidesPerView: 4,
                    spaceBetween: 30,
                    centeredSlides: true,
                    pagination: {
                        el: ".swiper-pagination",
                        clickable: true,
                    },
                });
            </script>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="achievement" id="achievement">
        <h2>Thành tựu chứng nhận</h2>
        <br>
        <p class="imglist">
            <a href="img/cup-img/cac-nhan-hieu-noi-tieng-quoc-gia-jpg.JPG" data-fancybox data-caption="&lt;b&gt;Single photo&lt;/b&gt;&lt;br /&gt;Caption can contain &lt;em&gt;any&lt;/em&gt; HTML elements">
              <img src="img/cup-img/cac-nhan-hieu-noi-tieng-quoc-gia-jpg.JPG" />
            </a>
            <a href="img/cup-img/cup-vang-thuong-hieu-va-nhan-hieu-jpg.JPG" data-fancybox data-caption="&lt;b&gt;Single photo&lt;/b&gt;&lt;br /&gt;Caption can contain &lt;em&gt;any&lt;/em&gt; HTML elements">
              <img src="img/cup-img/cup-vang-thuong-hieu-va-nhan-hieu-jpg.JPG" />
            </a>
            <a href="img/cup-img/1-1-jpg.JPG" data-fancybox data-caption="&lt;b&gt;Single photo&lt;/b&gt;&lt;br /&gt;Caption can contain &lt;em&gt;any&lt;/em&gt; HTML elements">
              <img src="img/cup-img/1-1-jpg.JPG" />
            </a>
            <a href="img/cup-img/14-jpg.JPG" data-fancybox data-caption="&lt;b&gt;Single photo&lt;/b&gt;&lt;br /&gt;Caption can contain &lt;em&gt;any&lt;/em&gt; HTML elements">
              <img src="img/cup-img/14-jpg.JPG" />
            </a>
            <a href="img/cup-img/4-jpg.JPG" data-fancybox data-caption="&lt;b&gt;Single photo&lt;/b&gt;&lt;br /&gt;Caption can contain &lt;em&gt;any&lt;/em&gt; HTML elements">
              <img src="img/cup-img/4-jpg.JPG" />
            </a>
            <a href="img/cup-img/8-jpg.JPG" data-fancybox data-caption="&lt;b&gt;Single photo&lt;/b&gt;&lt;br /&gt;Caption can contain &lt;em&gt;any&lt;/em&gt; HTML elements">
              <img src="img/cup-img/8-jpg.JPG" />
            </a>
          </p>
    </section>
    <section class="unit">
        <h2 id="unit">Đơn vị thành viên</h2>
        <br>
        <div class="company">
            <div class="child">
            <p>
                Công ty con
            </p>
            <br>
            <div class="slide2">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="year">
                                <div class="year-img">
                                    <img src="./img/congtycon/download.png" alt="">
                                </div>
                                
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="year">
                                <div class="year-img">
                                    <img src="./img/congtycon/download (1).png" alt="">
                                </div>
                                
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="year">
                                <div class="year-img">
                                    <img src="./img/congtycon/download (2).png" alt="">
                                </div>
                                
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="year">
                                <div class="year-img">
                                    <img src="./img/congtycon/download (3).png" alt="">
                                </div>
                                
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="year">
                                <div class="year-img">
                                    <img src="./img/congtycon/download (4).png" alt="">
                                </div>
                               
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="year">
                                <img src="./img/congtycon/download (5).png" alt="">
                                
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="year">
                                <img src="./img/congtycon/download (6).png" alt="">
                                
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="year">
                                <img src="./img/congtycon/download (7).png" alt="">
                                
                            </div>
                        </div>
    
    
                    </div>
                    <br> <br>
                    <div class="swiper-pagination"></div>
                </div>
    
                <!-- Swiper JS -->
                <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    
                <!-- Initialize Swiper -->
                <script>
                    var swiper = new Swiper(".mySwiper", {
                        slidesPerView: 4,
                        spaceBetween: 30,
                        centeredSlides: true,
                        pagination: {
                            el: ".swiper-pagination",
                            clickable: true,
                        },
                    });
                </script>
            </div>
        </div>
        </div>
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
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js'></script>
</body>

</html>