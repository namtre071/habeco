<?php
    require_once('../datahelper/datahelper.php');
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Dashboard - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="./js/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
                    <li class="nav-item"><a class="nav-link " href="index.php"><i class="fas fa-tachometer-alt"></i><span>Products</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="addpro.php"><i class="fa fa-newspaper-o"></i><span>Add Product</span></a></li>
                    <li class="nav-item"><a class="nav-link active" href="news.php"><i class="fa fa-newspaper-o"></i><span>News</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="addnews.php"><i class="fa fa-newspaper-o"></i><span>Add News</span></a></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                </ul><a href="#">Link</a>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <div class="container">
                    <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                        <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle me-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <?php 
                                $id = "";
                                $wh = "";
                                if (isset($_GET['search'])) {
                                    $search= $_GET['search'];
                                    $wh = " where name like '%".$search."%' ";
                                    }
                                else{
                                    $search="";
                                    $wh = " where name like '%".$search."%'  ";

                                    }
                        ?>    
                        <form class="d-none d-sm-inline-block me-auto ms-md-3 my-2 my-md-0 mw-100 navbar-search">
                                <div class="input-group">
                                    <input class="bg-light form-control border-0 small" type="text" name="search" placeholder="Search for ..." />
                                    <button class="btn btn-primary py-0" type="submit"><i class="fas fa-search"></i></button>
                                </div>
                            </form>
                        </div>
                    </nav><a href="addnews.php"><button class="btn btn-primary" type="button">Add News</button></a>
                    <div class="table-responsive" style="margin-bottom: 80px;">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Tên</th>
                                    <th>Ảnh</th>
                                    <th>Tóm tắt</th>
                                    <th>Nội dung</th>
                                    <th>Loại tin tức</th>
                                    <th>Ngày đăng</th>
                                    <th>người đăng</th>
                                    <th></th>
                                    <th></th>
                                    <img src="" alt="">
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                 $sql  = 'select * from articles '.$wh;

                                 $listpro = executeResult($sql);


                                 foreach ($listpro as $item) {
                                     
                                            $cate = "select name from category_news where id = " .$item['id_cat'];
                                            
                                            $val_cate = executeSingleResult($cate);
                                            if ($val_cate != null) {
                                                    $item_cate = $val_cate['name'];
                                            }
                                            $user ="select * from user where id=".$item['id_cat'];
                                            $val_user =executeSingleResult($user);
                                            if ($val_user != null) {
                                                    $id_user = $val_user['name'];
                                        }

                                
                             echo   '<tr>
                                    <td style="width:200px ; height:200px;"><p style="height:100%; overflow:scroll;">'.$item['name'].'</p></td>
                                    <td> <img style="width : 100px" src="'.$item['image'].'" alt=""></td>
                                    <td style="width:200px ; height:200px;><p style="height:100%; overflow:scroll;">'.$item['summary'].'</p></td>
                                    <td style="width:200px ; height:200px;"><p style="height:100%; overflow:scroll;">'.$item['content'].'</p></td>
                                    <td>'.$item_cate.'</td>
                                    <td>'.$item['create_time'].'</td>
                                    <td>'.$id_user.'</td>
                                    
                                    <td><a href="addnews.php?id='.$item['id'].'"><button class="btn btn-primary" type="button">Sửa</button></a></td>
                                    <td><button class="btn btn-primary" onclick="deleteCategory('.$item['id'].')"><i class="fa fa-trash-o"></i></button></td>
                                </tr>';
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            <script type="text/javascript">
		function deleteCategory(id) {
			var option = confirm('Bạn có chắc chắn muốn xoá danh mục này không?')
			if(!option) {
				return;
			}

			console.log(id)
			//ajax - lenh post
			$.post('deletenews.php', {
				'id': id,
				'action': 'delete'
			}, function(data) {
				location.reload()
			})
		}


	</script>
    </body>
</html>