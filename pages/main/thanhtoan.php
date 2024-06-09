<?php
	$code = rand(0, 9999);
	$id_dangky = $_SESSION['id_kh'];

	$insert = "INSERT INTO tbl_donhang(id_dangky, code_donhang, tinhtrang) VALUES ('".$id_dangky."','".$code."','1')";
	$query = mysqli_query($mysqli, $insert);

	if($query){
		foreach ($_SESSION['cart'] as $key => $value) {
			$id_sanpham = $value['id'];
			$soluong = $value['soluong'];

			$insert_detail = "INSERT INTO tbl_donhang_chitiet(code_donhang, id_sanpham, soluongmua) VALUES ('".$code."', '".$id_sanpham."','".$soluong."')";
			mysqli_query($mysqli, $insert_detail); 
		}
	}
	unset($_SESSION['cart']);
?>
<p>Đơn hàng của bạn đã được ghi nhận, chúng tôi sẽ gọi điện xác nhận với bạn trong thời gian sớm nhất.</p>
