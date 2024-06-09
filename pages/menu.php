<?php

$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
$query_danhmuc = mysqli_query($mysqli, $sql_danhmuc);

?>
<?php
if (isset($_SESSION['dangky'])) {
	$username = $_SESSION['dangky'];
}
// if (isset($_SESSION['dangnhap'])) {
// 	$username = $_SESSION['dangnhap'];
// }
if (isset($_GET['dangxuat']) && $_GET['dangxuat'] == 1) {
	session_unset();
}

?>

<div class="menu">
	<div class="menu3">
		<lu>
			<li>Cam kết giá có thể tốt nhất</li>
			<li>Không miễn phí vận chuyển</li>
			<li>Thanh toán trước, nhận nhận hàng sau</li>
			<li>Không đổi trả hàng</li>
		</lu>
		<MARQUEE class="run">CHÀO MỪNG NĂM MỚI 2024! </MARQUEE>
	</div>
	<div class="menu2">


		<ul class="list_menu">
			<p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;color: red;font-size: 30px; margin-top: 15px" ;>LAPTOP UNETI</p>
			<li><a href="index.php">Trang chủ</a></li>
			<?php
			while ($row_danhmuc = mysqli_fetch_array($query_danhmuc)) {
			?>
				<li><a href="index.php?quanly=danhmucsanpham&id=<?php echo $row_danhmuc['id_danhmuc'] ?>">
						<?php echo $row_danhmuc['tendanhmuc'] ?>
					</a></li>
			<?php
			}
			?>
			<li><a href="index.php?quanly=giohang">Giỏ hàng</a></li>
			<li><a href="index.php?quanly=lienhe">Phản hồi</a></li>
			<?php
			if(isset($_SESSION['dangky'])){
			?>

				<div class="dropdown">
				  	<li><?php echo $username; ?>
				  	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
					  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
					</svg>
					</li>
				  	<div class="dropdown-content">
					  	<p><?php echo $username; ?>
					  	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
						  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
						</svg>
						</p>
						<li><a href="index.php?quanly=thaydoithongtin">Thông tin cá nhân</a></li>					    
					    <li><a href="index.php?quanly=thaydoimatkhau">Thay đổi mật khẩu</a></li>	
					    <li><a href="index.php?quanly=lichsudonhang">Lịch sử đơn hàng</a></li>	
					    <li><a href="index.php?dangxuat=1">Đăng xuất</a></li>				    		    
					  </div>
					</div>

			<?php
			}else{
			?>
				<li><a href="index.php?quanly=dangky">Đăng ký/Đăng nhập</a></li>
			<?php
		}
			?>	
		</ul>

		<form action="index.php?quanly=timkiem" method="POST">
			<input id="tukhoa" type="text" placeholder="Tìm kiếm sản phẩm..." name="tukhoa">
			<input id="timkiem" type="submit" class="btn btn-primary" name="timkiem" value="Tìm kiếm">
		</form>

	</div>
</div>