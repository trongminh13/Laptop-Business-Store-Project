<?php
$sql_lietke_donhang = "SELECT * FROM tbl_donhang 
                       INNER JOIN tbl_dangky ON tbl_donhang.id_dangky = tbl_dangky.id_dangky 
                       ORDER BY tbl_donhang.id_donhang DESC";

$query_lietke_donhang = mysqli_query($mysqli, $sql_lietke_donhang);

$sql_lietke_admin = "SELECT * FROM tbl_admin";
$query_lietke_admin = mysqli_query($mysqli, $sql_lietke_admin);

$sql_lietke_danhmuc = "SELECT * FROM tbl_danhmuc";
$query_lietke_danhmuc = mysqli_query($mysqli, $sql_lietke_danhmuc);

$sql_lietke_dangky = "SELECT * FROM tbl_dangky";
$query_lietke_dangky = mysqli_query($mysqli, $sql_lietke_dangky);

$sql_lietke_sanpham = "SELECT * FROM tbl_sanpham";
$query_lietke_sanpham = mysqli_query($mysqli, $sql_lietke_sanpham);

$sql_lietke_reviews = "SELECT * FROM customer_reviews";
$query_lietke_reviews = mysqli_query($mysqli, $sql_lietke_reviews);




if (!$query_lietke_donhang) {
    die('Query failed: ' . mysqli_error($mysqli));
}
$num_rows0 = mysqli_num_rows($query_lietke_admin);
$num_rows1 = mysqli_num_rows($query_lietke_donhang);
$num_rows2 = mysqli_num_rows($query_lietke_danhmuc);
$num_rows3 = mysqli_num_rows($query_lietke_dangky);
$num_rows4 = mysqli_num_rows($query_lietke_sanpham);
$num_rows5 = mysqli_num_rows($query_lietke_reviews);
?>
<p>Liệt kê đơn hàng</p>
<table style="width: 100%" border="1" style="border-collapse: collapse;">
    <!-- Table headers -->
    <tr>
        <th>Id</th>
        <th>Số lượng quản trị viên</th>
        <th>Số lượng sản phẩm đã nhập về</th>
        <th>Đơn Tổng</th>
        <th>Thương hiệu hợp tác</th>
        <th>Người dùng</th>
        <th>Sản phẩm đã được thêm vào</th>
        <th>Comment/Phản hồi</th>
    </tr>

    <!-- Table data -->
    <?php
    $i = 1;
    ?>
        <tr>
            <td><?php echo $i ?></td>
            <td><?php 
            echo "Số lượng quản trị viên là: " . $num_rows0;
            ?>
            </td>
            <td><?php 
            echo "Số lượng sản phẩm đã nhập về là: " . $num_rows4;
            ?>
            </td>
            <td><?php 
            echo "Số lượng đơn hàng tổng trong kho là: " . $num_rows1;
            ?>
            </td>
            <td><?php 
            echo "Số lượng thương hiệu hợp tác là: " . $num_rows2;
            ?>
            </td>
            <td><?php 
            echo "Số lượng người đăng ký tài khoản là: " . $num_rows3;
            ?>
            </td>
            <td><?php 
            echo "Số lượng sản phẩm còn trong kho là: " . $num_rows4 - $num_rows1;
            ?>
            </td>
            <td><?php 
            echo "Số lượng lượng phản hồi của khách là: " . $num_rows5;
            ?>
            </td>
        
            
          
        </tr>
    <?php
    
    ?>
</table>