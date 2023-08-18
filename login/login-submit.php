<?php

	require_once ('../datahelper/datahelper.php');
	session_start();
	

	if (isset($_POST['submit']) && $_POST["name"] != '' && $_POST["password"] != '') 
	{
			// $id_user    = $_POST["id"];
			$name      = $_POST["name"];
			$password   = $_POST["password"];
			$sql		= "select * from user where username ='$name' and password='$password' " ;
			$user = mysqli_query($con, $sql);
			// $data = mysqli_fetch_assoc($user); 

			if(mysqli_num_rows($user)>0){	
				$_SESSION['logined'] = true;
				$_SESSION['username'] = $name;

					echo "<script>
						  window.location='http://localhost/admin/index.php';
					      </script>";
					
			}
			else{
				echo "<script>
					      alert('Nhập sai tên Tài Khoản hoặc Mật Khẩu');
						  window.location='http://localhost/login/login.php';
					      </script>";
					    
			}

	}
	else
	{	
		echo "<script>
					      alert('Chưa nhập tài khoản mật khẩu');
						  window.location='http://localhost/login/login.php';
					      </script>";
	}

?>