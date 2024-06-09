
<?php
$sql_lietke_donhang_chitiet = "SELECT * FROM tbl_donhang_chitiet 
                               INNER JOIN tbl_sanpham ON tbl_donhang_chitiet.id_sanpham = tbl_sanpham.id_sanpham
                               WHERE tbl_donhang_chitiet.code_donhang = '" . $_GET['code'] . "' 
                               ORDER BY tbl_donhang_chitiet.id_donhang_chitiet DESC";                            


$query_lietke_donhang_chitiet = mysqli_query($mysqli, $sql_lietke_donhang_chitiet);
$total = 0;
?>
<h1>Chi tiết đơn hàng <?php echo $_GET['code'] ?></h1>
<table style="width: 100%" border="1" style="border-collapse: collapse;">
      <tr>
	  	<th>Id</th>
	  	<th>Mã đơn hàng</th>
	    <th>Tên sản phẩm</th>
	    <th>Hình ảnh</th>
	    <th>Giá sp</th>
	    <th>Số lượng</th>
	  </tr>

    <?php
    $i = 0;
    while ($row = mysqli_fetch_array($query_lietke_donhang_chitiet)) {
        $i++;
    ?>
        <tr>
            <?php $giasp = $row['giasp'] ?>
            <td><?php echo $i ?></td>
            <td><?php echo $row['code_donhang'] ?></td>
            <td><?php echo $row['tensanpham'] ?></td>
		    <td><img src="modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?> " width="150px"></td>
		    <td><?php echo number_format($giasp,0,',','.').'vnđ' ?></td>
		    <td><?php echo $row['soluongmua'] ?></td>
            <?php $total += $row['soluongmua'] * $row['giasp']; ?>
        </tr>
    <?php
    }
    ?>
    <tr>
    <td colspan="4"></td>
    <td colspan="1"><strong>Tổng tiền: <?php echo number_format($total,0,',','.').'vnđ' ?></strong></td>
    <td colspan="1"></td>
</tr>
</table>
