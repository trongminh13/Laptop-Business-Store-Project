<div class="clear"></div>
<div class="main">
	<?php
		if(isset($_GET['action']) && $_GET['query']){
			$tam = $_GET['action'];
			$query = $_GET['query'];
		}else{
			$tam = '';
			$query = '';
		}
		if($tam=='quanlydanhmucsanpham' && $query=='them'){
			include("modules/quanlydanhmucsp/them.php");
			include("modules/quanlydanhmucsp/lietke.php");
		}elseif($tam=='quanlydanhmucsanpham' && $query=='sua'){
			include("modules/quanlydanhmucsp/sua.php");
		}elseif($tam=='quanlysp' && $query=='them'){
			include("modules/quanlysp/them.php");
			include("modules/quanlysp/lietke.php");
		}elseif($tam=='quanlysp' && $query=='sua'){
			include("modules/quanlysp/sua.php");
		}elseif($tam=='quanlyweb' && $query=='capnhat'){
			include("modules/thongtinweb/quanly.php");
		}elseif($tam=='quanlydonhang' && $query=='lietke'){
			include("modules/quanlydonhang/lietke.php");
		}elseif($tam=='donhang' && $query=='xemdonhang'){
			include("modules/quanlydonhang/xemdonhang.php");
		}elseif($tam=='quanlythongke' && $query== 'lietke')
		{
			include("modules/quanlythongke/lietke.php");
		}
		else{
			include("modules/dashboard.php");
		}
		?>
</div>