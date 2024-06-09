<?php
    session_start();
    include('../../admincp/config/config.php');

    $id_dangky = $_SESSION['id_kh'];
	$code = rand(0, 9999);
	$cart_payment = $_POST['payment'];
	//lay id thong tin van chuyen
	$id_dk = $_SESSION['id_kh'];
    $sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky = '$id_dk' LIMIT 1");
    $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
    $id_shipping = $row_get_vanchuyen['id_shipping'];
    //chen vao gio hang 

	$insert = "INSERT INTO tbl_donhang(id_dangky, code_donhang, tinhtrang, cart_payment, cart_shipping) VALUES ('".$id_dangky."','".$code."','0','".$cart_payment."','".$id_shipping."')";
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
	echo '<script>alert("Đơn hàng của bạn đã được ghi nhận, chúng tôi sẽ gọi điện xác nhận với bạn trong thời gian sớm nhất.");window.location.href = "../../index.php";</script>';
?>

