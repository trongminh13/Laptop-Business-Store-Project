<?php
include('../../config/config.php');

$tensanpham = $_POST['tensanpham'];
$giasp = $_POST['giasp'];
$soluong = $_POST['soluong'];
//xu ly hinh anh
$hinhanh = $_FILES['hinhanh']['name'];
$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
$hinhanh = time().'_'.$hinhanh;
$tomtat = $_POST['tomtat'];
$noidung = $_POST['noidung'];
$tinhtrang = $_POST['tinhtrang'];
$danhmuc = $_POST['danhmuc'];


$sql_check_tensanpham = mysqli_query($mysqli, "SELECT * FROM tbl_sanpham WHERE tensanpham = '" . $tensanpham . "'");
$num_rows = mysqli_num_rows($sql_check_tensanpham);

if ($num_rows > 0) {
	echo '<script>
	alert("Tên sản phẩm đã tồn tại");
	window.location.href = "../../index.php?action=quanlysp&query=them";
</script>';
exit();
	
}else if(isset($_POST['themsanpham'])){
	//them
	$sql_them = "INSERT INTO tbl_sanpham(tensanpham,giasp,soluong,hinhanh,tomtat,noidung,tinhtrang,id_danhmuc) VALUE('".$tensanpham."','".$giasp."','".$soluong."','".$hinhanh."','".$tomtat."','".$noidung."','".$tinhtrang."','".$danhmuc."')";
		mysqli_query($mysqli,$sql_them);
		move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
		header('Location:../../index.php?action=quanlysp&query=them');
}elseif (isset($_POST['suasanpham'])) {
//sua
	if($hinhanh!='') {
	move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);

	
	$sql_update = "UPDATE tbl_sanpham SET tensanpham='".$tensanpham."',giasp='".$giasp."',soluong='".$soluong."',hinhanh='".$hinhanh."',tomtat='".$tomtat."',noidung='".$noidung."',tinhtrang='".$tinhtrang."',id_danhmuc='".$danhmuc."' WHERE id_sanpham='$_GET[idsanpham]'";
	//xoa hinh anh cu
	$sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham = '$_GET[idsanpham]' LIMIT 1 ";
	$query = mysqli_query($mysqli,$sql);
	while($row = mysqli_fetch_array($query)){
		unlink('uploads/'.$row['hinhanh']);
	}	

}else{
	$sql_update = "UPDATE tbl_sanpham SET tensanpham='".$tensanpham."',giasp='".$giasp."',soluong='".$soluong."',tomtat='".$tomtat."',noidung='".$noidung."',tinhtrang='".$tinhtrang."',id_danhmuc='".$danhmuc."' WHERE id_sanpham='$_GET[idsanpham]'";
}
		mysqli_query($mysqli,$sql_update);
		header('Location:../../index.php?action=quanlysp&query=them');

}else{
	$id=$_GET['idsanpham'];
	$sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham = '$id' LIMIT 1 ";
	$query = mysqli_query($mysqli,$sql);
	while($row = mysqli_fetch_array($query)){
		unlink('uploads/'.$row['hinhanh']);
	}
	$sql_xoa = "DELETE FROM tbl_sanpham WHERE id_sanpham='".$id."'";
	mysqli_query($mysqli,$sql_xoa);
	header('Location:../../index.php?action=quanlysp&query=them');
}
?>