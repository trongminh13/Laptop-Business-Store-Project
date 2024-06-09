<?php
$id_khachhang = $_SESSION['id_kh'];
$sql_lietke_donhang = "SELECT * FROM tbl_donhang 
                       INNER JOIN tbl_dangky ON tbl_donhang.id_dangky =tbl_dangky.id_dangky AND tbl_donhang.id_dangky = '$id_khachhang'
                       ORDER BY tbl_donhang.id_donhang DESC";
$query_lietke_donhang = mysqli_query($mysqli, $sql_lietke_donhang);


?>

<table style="background-color: #fff;width: 100%" border="1" style="border-collapse: collapse;">
    <!-- Table headers -->
    <tr>
        <th>Id</th>
        <th>Mã đơn hàng</th>
        <th>Tên khách hàng</th>
        <th>Số điện thoại</th>
        <th>Email</th>
        <th>Địa chỉ</th>
        <th>Ngày đặt</th>
        <th>Tình trạng</th>
        <th>Quản lý</th>
        <th>Hình thức thanh toán</th>
    </tr>

    <!-- Table data -->
    <?php
    $i = 0;
    while ($row = mysqli_fetch_array($query_lietke_donhang)) {
        $i++;
    ?>
        <tr>
            <td><?php echo $i ?></td>
            <td><?php echo $row['code_donhang'] ?></td>
            <td><?php echo $row['tenkhachhang'] ?></td>
            <td><?php echo $row['dienthoai'] ?></td>
            <td><?php echo $row['email'] ?></td>
            <td><?php echo $row['diachi'] ?></td>
            <td><?php echo $row['ngaydat'] ?></td>

            <td>
                <?php
                    if($row['tinhtrang']==0)
                    {
                        echo 'Chờ xác nhận';

                        
                    }else{
                        echo 'Đã xác nhận';
                    }
                ?>
            </td>
            <td>
                <a href="index.php?quanly=xemdonhang&code=<?php echo $row['code_donhang'] ?>">Xem chi tiết</a>  
            </td>
            <td><?php echo $row['cart_payment'] ?></td>
        </tr>
    <?php
    }
    ?>
</table>

