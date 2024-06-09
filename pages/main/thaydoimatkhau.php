<?php
$taikhoan = $_SESSION['email'];
if(isset($_POST['doimatkhau'])){
	
	$matkhau_cu = md5($_POST['password_cu']);
	$matkhau_moi = md5($_POST['password_moi']);
	$sql = "SELECT * FROM tbl_dangky WHERE email='".$taikhoan."' AND  matkhau='".$matkhau_cu."' LIMIT 1";
	$row = mysqli_query($mysqli,$sql);
	$count = mysqli_num_rows($row);
	if($count>0){
		$sql_update = mysqli_query($mysqli,"UPDATE tbl_dangky SET matkhau='".$matkhau_moi."' ");
		echo '<p style="color:red">Mật khẩu đã được thay đổi</p>';	
	}else{
		echo '<p style="color:red">Tài khoản hoặc Mật khẩu cũ không đúng</p>';	
	}
}
?>
<form action="" autocomplete="off" method="POST">
	<table width="50%" class="table-login" style="text-align: center; border-collapse: collapse;">
		<tr>
			<td colspan="2"><h3>Đổi mật khẩu</h3></td>
		</tr>
		<tr>
			<td>Tài khoản</td>
			<td><input type="text" class="form-control" name="email" value="<?php echo htmlspecialchars($taikhoan); ?>" readonly></td>

		</tr>
		<tr>
			<td>Mật khẩu cũ</td>
			<td><input type="password" class="form-control" name="password_cu"></td>
		</tr>
		<tr>
			<td>Mật khẩu mới</td>
			<td><input type="password" class="form-control" name="password_moi"></td>
		</tr>
		<tr>
		
			<td colspan="2"><input type="submit" class="btn btn-primary" name="doimatkhau" value="Đổi mật khẩu"></td>
		</tr>
	</table>
</form>