<?php
        require_once('../datahelper/datahelper.php');
        $id = $name  = $img =  $logo =  $slogan =  $cpt = $qti =  $cct = $content = $id_pro =$cate_pro= '';
        if (!empty($_POST)) {
            
            if (isset($_POST['id'])) {
                $id = $_POST['id'];
        
            }
            if (isset($_POST['name'])) {
                $name = $_POST['name'];
        
            }
                if (isset($_POST['image'])) {
                $img = $_POST['image'];
                $img = str_replace('"', '\\"', $img);
            }
        
            if (isset($_POST['logo'])) {
                $logo = $_POST['logo'];
            }
            if (isset($_POST['slogan'])) {
                $slogan = $_POST['slogan'];
            }
            if (isset($_POST['capacity'])) {
                $cpt = $_POST['capacity'];
            }
            if (isset($_POST['quantity'])) {
                $qti = $_POST['quantity'];
            }
            
            if (isset($_POST['concentration'])) {
                $cct = $_POST['concentration'];
            }
            if (isset($_POST['content'])) {
                $content = $_POST['content'];
            }
            if (isset($_POST['id_category'])) {
                $cate_pro = $_POST['id_category'];
            }
                
        
            if (!empty($name)) {
                if ($id == '') {
                    
                             $sql = 'insert into products(name, image, logo, slogan, capacity, quantity ,concentration,content,category_id) values("'.$name.'","'.$img.'", "'.$logo.'", "'.$slogan.'", "'.$cpt.'", "'.$qti.'", "'.$cct.'" ,"'.$content.'","'.$cate_pro.'")';
                        
                    
                }
                 else {
                             $sql = 'update products set name = "'.$name.'", image = "'.$img.'", logo = "'.$logo.'", slogan = "'.$slogan.'", capacity = "'.$cpt.'", quantity = "'.$qti.'", concentration = "'.$cct.'" ,content="'.$content.'" ,category_id="'.$cate_pro.'" where id = '.$id;
                        }
                     
                    
                    execute($sql);
                 
                    header('Location: index.php');
                    die();
                
        
                
            }
        }
        if (isset($_GET['id'])) {
            $id      = $_GET['id'];
            $sql     = 'select * from products where id = '.$id;
            $product 	 = executeSingleResult($sql);
            if ($product != null) {
                $name      		  = $product['name'];
                $img  	 	 		  = $product['image'];
                $logo        = $product['logo'];
                $slogan       = $product['slogan'];
                $cpt       = $product['capacity'];
                $qti       					= $product['quantity'];
                $cct       					= $product['concentration'];
                $content      					  = $product['content'];
                $cate_pro      						  = $product['category_id'];
                
            }
        }
        

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Profile - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <script src="https://cdn.ckeditor.com/ckeditor5/11.0.1/classic/ckeditor.js"></script>
</head>

<body id="page-top">
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                    <div class="sidebar-brand-text mx-3"><span>Brand</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link" href="index.php"><i class="fas fa-tachometer-alt"></i><span>All</span></a></li>
                    <li class="nav-item"><a class="nav-link active" href="addpro.php"><i class="fa fa-newspaper-o"></i><span>Add Product</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="news.php"><i class="fa fa-newspaper-o"></i><span>News</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="addnews.php"><i class="fa fa-newspaper-o"></i><span>Add News</span></a></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                </ul><a href="#">Link</a>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle me-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <form class="d-none d-sm-inline-block me-auto ms-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group"></div>
                        </form>
                    </div>
                </nav>
                <div class="container">
                    <form method="post" style="padding: 30px;">
                        <h1>Add Product</h1>
                            <input type="text" name="id" value="<?=$id?>" hidden="true">    
                            <input class="form-control" type="text" name="name" id="name" value="<?=$name?>" placeholder="Tên sản phẩm" style="margin-bottom: 20px;">
                            <input class="form-control" type="text" name="image" id="image" value="<?=$img?>" placeholder="Ảnh" style="margin-bottom: 20px;">
                            <input class="form-control" type="text" name="logo" id="logo" value="<?=$logo?>" placeholder="Logo" style="margin-bottom: 20px;">
                            <input class="form-control" type="text" name="slogan" id="slogan" value="<?=$slogan?>" placeholder="Slogan" style="margin-bottom: 20px;">
                            <input class="form-control" type="text" name="capacity" id="capacity" value="<?=$cpt?>" placeholder="Dung tích" style="margin-bottom: 20px;">
                            <input class="form-control" type="text" name="quantity" id="quantity" value="<?=$qti?>" placeholder="Số lượng" style="margin-bottom: 20px;">
                            <input class="form-control" type="text" name="concentration" id="concentration" value="<?=$cct?>" placeholder="Nồng độ" style="margin-bottom: 20px;">
                            
                            <textarea class="textarea" name="content" required="required" placeholder="Place some text here" id="content" value="<?=$content?>"
                                     style="width: 100%; height: 500px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                            <select class="form-select" style="margin-bottom: 30px;"name = "id_category">
                        

                                   <option value="<?=$id_pro?>"></option>
                                        <?php 

                                            $sql = "select * from category_pro " ;
                                            $variable = executeResult($sql);
                                            foreach ($variable as  $value) { ?>
                                                    
                                            <option value="<?=$value['id']?>"><?=$value['name']?></option>

                                        <?php } ?>
                            
                        </select>
                        <button class="btn btn-primary"><i class="far fa-check-circle"></i>&nbsp; Add</button>
                    </form>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Brand 2021</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/theme.js"></script>
    <script>
        ClassicEditor
            .create( document.querySelector( '#editor' ) )
            .catch( error => {
                console.error( error );
            } );
    </script>
</body>

</html>