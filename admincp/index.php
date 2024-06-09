<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Admincp</title>
	<link rel="stylesheet" type="text/css" href="css/styleadmincp.css">
</head>
<?php
session_start();
if(!isset($_SESSION['dangnhap'])){
	header('Location:login.php');
}
?>
<body>
	<h3 class="title_admin">Welcome to AdminCP</h3>
	<div class="wrapper">
	<?php
	    include("config/config.php");
		include("modules/header.php");
		include("modules/menu.php");
		include("modules/main.php");
		include("modules/footer.php");
		?>
	</div>
	<script src="//cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
	<script>
		CKEDITOR.replace('thongtinlienhe');
		CKEDITOR.replace('tomtat');
		CKEDITOR.replace('noidung');
	</script>

</body>
</html>