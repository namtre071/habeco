<?php
  
 require_once('../datahelper/datahelper.php');
 session_start();
 
//  exit();
$id = $name  = $img =  $smm =  $content =  $cate_news = $crtime =  $owner  =$id_cat=  '';
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

    if (isset($_POST['summary'])) {
        $smm = $_POST['summary'];
    }
    if (isset($_POST['content'])) {
        $content = $_POST['content'];
    }
    if (isset($_POST['id_cat'])) {
        $cate_news = $_POST['id_cat'];
    }
    
    
    if (isset($_POST['admin'])) {
        $owner = $_POST['admin'];
    }
    if (!empty($name)) {
        if ($id == '') {
            
                     $sql = 'insert into articles(name, image, summary, content, id_cat, id_user ) values("'.$name.'","'.$img.'", "'.$smm.'", "'.$content.'", "'.$cate_news.'", "'.$owner.'")';
                
            
        }
         else {
                     $sql = 'update articles set name = "'.$name.'", image = "'.$img.'", summary = "'.$smm.'", content = "'.$content.'", id_cat = "'.$cate_news.'", id_user = "'.$owner.'", concentration = "'.$cct.'" ,content="'.$content.'" ,category_id="'.$cate_pro.'" where id = '.$id;
                }
             
            
            // exit();
            execute($sql);
         
            header('Location: news.php');
            die();
        

        
    }
}
if (isset($_GET['id'])) {
    $id      = $_GET['id'];
    $sql     = 'select * from articles where id = '.$id;
    $articles 	 = executeSingleResult($sql);
    if ($articles != null) {
        $name      		  = $articles['name'];
        $img  	 	 		  = $articles['image'];
        $smm        = $articles['summary'];
        $content       = $articles['content'];
        $cate_news       = $articles['id_cat'];
        $owner       					= $articles['id_user'];
       
        
    }
}


        
 ?>



<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Table - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
</head>

<body id="page-top">
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div  class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0"  href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                    <div class="sidebar-brand-text mx-3"><span>Brand</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link" href="index.php"><i class="fas fa-tachometer-alt"></i><span>All</span></a></li>
                    <li class="nav-item"><a class="nav-link " href="addpro.php"><i class="fa fa-newspaper-o"></i><span>Add Product</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="news.php"><i class="fa fa-newspaper-o"></i><span>News</span></a></li>
                    <li class="nav-item"><a class="nav-link active" href="addnews.php   "><i class="fa fa-newspaper-o"></i><span>Add News</span></a></li>
                    
                </ul><a href="#">Link</a>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content" style="margin-bottom: 20px;">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle me-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <form class="d-none d-sm-inline-block me-auto ms-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group"></div>
                        </form>
                    </div>
                </nav>
                <div class="container">
                    <form style="padding: 30px;" method ='post'>
                        <h1>Add News</h1>
                        <?php
                                $sql= " select * from user where username = '" .$_SESSION['username']."'";
                            
                               
                                $value = executeSingleResult($sql);?>
                               
                        
                        <input class="form-control" name="name" hidden="true" id="id" value="<?=$id?>" type="text" placeholder="Tiêu đề" style="margin-bottom: 20px;">
                        <input class="form-control" name="name" id="name" value="<?=$name?>" type="text" placeholder="Tiêu đề" style="margin-bottom: 20px;">
                        <input class="form-control" name="image" id="image" type="text" value="<?=$img?>" placeholder="Ảnh" style="margin-bottom: 20px;">
                        <textarea class="form-control" name="summary" id="summary" value="<?=$smm?>" type="text" placeholder="Tóm tắt" style="margin-bottom: 20px;"></textarea>
                        <input class="form-control" name="content" id="content" value="<?=$content?>" type="text" placeholder="Nội dung" style="margin-bottom: 20px;">
                        <input class="form-control" name="admin" id="admin" value="<?=$value['id']?>" readonly type="text" placeholder="" style="margin-bottom: 20px;">
                        <select class="form-control" name="id_cat" id="id_cat">
                        <option value="<?=$id_cat?>"><?=$cate_news?></option>
                                        <?php 

                                            $sql = "select * from category_news " ;
                                            $variable = executeResult($sql);
                                            foreach ($variable as  $value) { ?>
                                                    
                                            <option value="<?=$value['id']?>"><?=$value['name']?></option>

                                        <?php } ?>
                        </select>
                       
                        <button class="btn btn-primary">Button</button>
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
    
</body>

</html>