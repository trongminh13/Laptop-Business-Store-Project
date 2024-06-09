
<p>Giỏ hàng
  <?php
  if(isset($_SESSION['dangky'])){
    echo 'xin chào: '.'<span style="color:red">'.$_SESSION['dangky'].'</span>';
  }
  ?>
</p>
<?php
if(isset($_SESSION['cart'])){
	
}
?>
<div class="container">
  <!-- Responsive Arrow Progress Bar -->
  <div class="arrow-steps clearfix">
    <div class="step current"> <span> <a href="index.php?quanly=giohang" >Giỏ hàng</a></span> </div>
    <div class="step"> <span><a href="index.php?quanly=vanchuyen" >Vận chuyển</a></span> </div>
    <div class="step"> <span><a href="index.php?quanly=thanhtoan" >Thanh toán</a><span> </div>
    
    
  </div>
</div>
<table style="width:100%;text-align: center; border-collapse: collapse;background-color: #fff;" border="1">
  <tr>
    <th>Id</th>
    <th>Mã sp</th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Số lượng</th>
    <th>Giá sản phẩm</th>
    <th>Thành tiền</th>
    <th>Quản lý</th>
  </tr>
  <?php
  if(isset($_SESSION['cart'])){
  	$i = 0;
    $tongtien = 0;
  	foreach($_SESSION['cart'] as $cart_item){
  		$thanhtien = $cart_item['soluong']*$cart_item['giasp'] ;
  		$tongtien+=$thanhtien;
  		$i++;
  ?>
  <tr>
    <td><?php echo $i; ?></td>
    <td><?php echo $cart_item['masp']; ?></td>
    <td><?php echo $cart_item['tensanpham']; ?></td>
    <td><img src="admincp/modules/quanlysp/uploads/<?php echo $cart_item['hinhanh']; ?>" width="150px"></td>
    <td>
    	<a href="pages/main/themgiohang.php?cong=<?php echo $cart_item['id'] ?>"><i class="fa fa-plus fa-style" aria-hidden="true"></i></a>
    	<?php echo $cart_item['soluong']; ?>
    	<a href="pages/main/themgiohang.php?tru=<?php echo $cart_item['id'] ?>"><i class="fa fa-minus fa-style" aria-hidden="true"></i></a>
    	</td>
    <td><?php echo number_format($cart_item['giasp'],0,',','.').'vnđ'; ?></td>
    <td><?php echo number_format($thanhtien,0,',','.').'vnđ' ?></td>
    <td><a href="pages/main/themgiohang.php?xoa=<?php echo $cart_item['id'] ?>">Xóa</a></td>

  </tr>
  <?php 
}
?>
<tr>
    <td colspan="8">
    	<p style="float: left;">Tổng tiền: <?php echo number_format($tongtien,0,',','.').'vnđ' ?></p>
    	<p style="float: right;"><a href="pages/main/themgiohang.php?xoatatca=1">Xóa tất cả</a></p>
      <div style="clear: both;"></div>
      <?php
      if(isset($_SESSION['dangky'])){
        ?>
        <a href="index.php?quanly=vanchuyen"><button class="btn btn-primary">Đặt hàng</button></a>
        <?php
      }else{
        ?>
        <a href="index.php?quanly=dangky"><button class="btn btn-primary">Đăng ký đặt hàng</button></a>
        <?php
      }
      ?>
      
      
    </td>

    
  </tr>
<?php
}else{
  ?>
  <tr>
    <td colspan="8"><p>Hiện tại giỏ hàng trống</p></td>
    
  </tr>
<?php
}
?>
</table>
