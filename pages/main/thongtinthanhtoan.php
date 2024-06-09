
<div class="container">
  <!-- Responsive Arrow Progress Bar -->
  <div class="arrow-steps clearfix">
    <div class="step done"> <span> <a href="index.php?quanly=giohang" >Giỏ hàng</a></span> </div>
    <div class="step done"> <span><a href="index.php?quanly=vanchuyen" >Vận chuyển</a></span> </div>
    <div class="step current"> <span><a href="index.php?quanly=thongtinthanhtoan" >Thanh toán</a><span> </div>
  </div>

  <form action="pages/main/xulythanhtoan.php" method="POST" style="background-color: #fff;">
    <div class="row">
    <?php
    $id_dangky = $_SESSION['id_kh'];
    $sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky = '$id_dangky' LIMIT 1");
    $count = mysqli_num_rows($sql_get_vanchuyen);
    if($count>0){
    $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
    $name = $row_get_vanchuyen['name'];
    $phone = $row_get_vanchuyen['phone'];
    $address = $row_get_vanchuyen['address'];
    $note = $row_get_vanchuyen['note'];
    }else{

      $name = '';
      $phone = '';
      $address = '';
      $note = '';
    }
    ?>
    <div class="col-md-8">
  <h4>Thông tin vận chuyển và đơn hàng</h4>
  <ul>
    <li>Họ và tên vận chuyển : <b><?php echo $name ?></b></li>
    <li>Số điện thoại : <b><?php echo $phone ?></b></li>
    <li>Địa chỉ : <b><?php echo $address ?></b></li>
    <li>Ghi chú : <b><?php echo $note ?></b></li>
  </ul>

<!------Giỏ hàng-------->
<table style="width:100%;text-align: center; border-collapse: collapse;" border="1">
  <tr>
    <th>Id</th>
    <th>Mã sp</th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Số lượng</th>
    <th>Giá sản phẩm</th>
    <th>Thành tiền</th>
    
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
  </tr>
  <?php 
}
?>

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
</div>
<style type="text/css">
  .col-md-4.hinhthucthanhtoan .form-check {
    margin: 10px;
  }
</style>
<div class="col-md-4 hinhthucthanhtoan">
  <h4>Hình thức thanh toán</h4>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="payment" id="exampleRadios2" value="tien mat" checked>
    <label class="form-check-label" for="exampleRadios2">
      Tiền mặt
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="payment" id="exampleRadios2" value="chuyen khoan" >
    <label class="form-check-label" for="exampleRadios2">
      Chuyển khoản
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="payment" id="exampleRadios3" value="momo" >
    <img src="images/momo.png" height="32" width="32">
    <label class="form-check-label" for="exampleRadios3">
      MOMO
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="payment" id="exampleRadios4" value="vnpay" >
    <img src="images/vnpay.png" height="20" width="64">
    <label class="form-check-label" for="exampleRadios4">
      VNPAY
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="payment" id="exampleRadios5" value="paypal" >
    <img src="images/paypal.png" height="32" width="32">
    <label class="form-check-label" for="exampleRadios5">
      PAYPAL
    </label>
  </div>

  <p style="float: left;">Tổng tiền cần thanh toán: <?php echo number_format($tongtien,0,',','.').'vnđ' ?></p>
  <input type="submit" name="checkout" value="Thanh toán ngay" class="btn btn-danger">
</div>
  </form>
</div>
</div>