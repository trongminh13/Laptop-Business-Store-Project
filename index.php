<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>WEBSITE CUA HANG LAPTOP</title>
	<link rel="stylesheet" type="text/css" href="css/webban.css">
	<link rel="stylesheet" type="text/css"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
	<div class="wrapper">
		<?php
		session_start();
		include("admincp/config/config.php");
		include("pages/menu.php");
		include("pages/header.php");
		?>

		<div class="videomp4">

			<video autoplay muted loop id="Myvideo" controls>
				<source id="chiu" src="./images/MacBook Air mới Tăng áp bởi M2 Quả táo.mp4" type="video/mp4">
				Your browser does not support the video tag.
			</video>
			<div class="content">
				<div id="content-cap" class="carousel-caption">
                    <h1>LAPTOP UNETI</h1>
                    <p>THIẾT KẾ MỚI. CẬP NHẬT MỚI. TƯƠNG LAI MỚI</p>
					<button id="myButton"><a href="#mySection">Tìm hiểu thêm về sản phẩm. </a></button>
                </div>
			</div>
		</div>


		<div id="khoangcach"></div>
		<?php
		include("pages/main.php");
		?>
		<div class="videomp41">
			<p><B>LAPTOP GAMING ASUS ROG ASTRIX G252</B></p>
			<video autoplay muted loop id="Myvideo1" controls>
				<source src="./images/SPHV_ Quảng cáo LAPTOP GAMING ASUS.mp4" type="video/mp4">
				Your browser does not support the video tag.
			</video>
		</div>


		<?php
		include("pages/introduce.php");

		include("pages/footer.php");
		?>


	</div>
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript">
		// Show the first tab and hide the rest
		$('#tabs-nav li:first-child').addClass('active');
		$('.tab-content').hide();
		$('.tab-content:first').show();

		// Click function
		$('#tabs-nav li').click(function () {
			$('#tabs-nav li').removeClass('active');
			$(this).addClass('active');
			$('.tab-content').hide();

			var activeTab = $(this).find('a').attr('href');
			$(activeTab).fadeIn();
			return false;
		});
	</script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
</body>

</html>