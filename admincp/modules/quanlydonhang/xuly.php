<?php
	include('../../config/config.php');
	if(isset($_GET['code'])){
		$code = $_GET['code'];
		$sql = "UPDATE tbl_donhang SET tinhtrang = 1 WHERE code_donhang = '".$code."'";
		$query = mysqli_query($mysqli, $sql);
		header('Location:../../index.php?action=quanlydonhang&query=lietke');
	}
?>