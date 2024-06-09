<div id="main">
	<!-- <div class="nav">
		<button id="myButton"><a href="#mySection">GIỜ VÀNG GIÁ SỐC</a></button>
	</div> -->
	<!-- <MARQUEE class="run" style="font-family: Georgia, 'Times New Roman', Times, serif;color: #bc5a5a; font-size: 20px; background-color: black;">Showroom Hoàng Minh Tech Co / Cơ sở 1: Số 10 Ngõ 117 Thái Hà, Đống Đa, Hà Nội / Cơ sở 2: Số 24 Trần Thái Tông - Cầu Giấy - Hà Nội / Cơ sở 3: 26/9 Đường Số 3, Khu Cư Xá Đô Thành, Phường 4, Quận 3, Thành Phố Hồ Chí Minh - Tel:  (024) 7305 6888 / 19006838\n  </MARQUEE> -->
	<div id="mySection">
		<div class="contene">
			<?php
			include("sidebar/sidebar.php");
			?>
			<div class="maincontent">
				<?php
				if (isset($_GET['quanly'])) {
					$tam = $_GET['quanly'];
				} else {
					$tam = '';
				}
				if ($tam == 'danhmucsanpham') {
					include("main/danhmuc.php");
				} elseif ($tam == 'giohang') {
					include("main/giohang.php");
				} elseif ($tam == 'tintuc') {
					include("main/tintuc.php");
				} elseif ($tam == 'lienhe') {
					include("main/lienhe.php");
				} elseif ($tam == 'sanpham') {
					include("main/sanpham.php");
				} elseif ($tam == 'dangky') {
					include("main/dangky.php");
				} elseif ($tam == 'thanhtoan') {
					include("main/thanhtoan.php");
				} elseif ($tam == 'dangnhap') {
					include("main/dangnhap.php");
				} elseif ($tam == 'timkiem') {
					include("main/timkiem.php");
				} elseif ($tam == 'thaydoimatkhau') {
					include("main/thaydoimatkhau.php");
				} elseif ($tam == 'thaydoithongtin') {
					include("main/thaydoithongtin.php");
				} elseif ($tam == 'vanchuyen') {
					include("main/vanchuyen.php");
				} elseif ($tam == 'thongtinthanhtoan') {
					include("main/thongtinthanhtoan.php");
				} elseif ($tam == 'donhangdadat') {
					include("main/donhangdadat.php");
				} elseif ($tam == 'lichsudonhang') {
					include("main/lichsudonhang.php");
				} elseif ($tam == 'xemdonhang') {
					include("main/xemdonhang.php");

				} elseif ($tam == 'submit_review') {
					include("main/submit_review.php");

				} else {
					include("main/index.php");
				}
				?>
			</div>
		</div>
	</div>
</div>