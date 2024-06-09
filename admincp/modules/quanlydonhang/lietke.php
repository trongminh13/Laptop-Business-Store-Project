<?php
$sql_lietke_donhang = "SELECT * FROM tbl_donhang 
                       INNER JOIN tbl_dangky ON tbl_donhang.id_dangky = tbl_dangky.id_dangky 
                       ORDER BY tbl_donhang.id_donhang DESC";
$query_lietke_donhang = mysqli_query($mysqli, $sql_lietke_donhang);


?>
<p>Liệt kê đơn hàng</p>
<table style="width: 100%" border="1" style="border-collapse: collapse;">
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
        <th>In</th>
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
                        echo '<a href="modules/quanlydonhang/xuly.php?code=' . $row['code_donhang'] . '">Xác nhận đơn hàng</a>';

                        
                    }else{
                        echo 'Đã xác nhận';
                    }
                ?>
            </td>
            <td>
                <a href="index.php?action=donhang&query=xemdonhang&code=<?php echo $row['code_donhang'] ?>">Xem chi tiết</a>  
            </td>
            <td>
                <a href="modules/quanlydonhang/indonhang.php?code=<?php echo $row['code_donhang'] ?>">In đơn hàng</a>  
            </td>
        </tr>
    <?php
    }
    ?>
</table>
