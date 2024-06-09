<?php
// Kết nối CSDL
include("admincp/config/config.php");

// Số sản phẩm trên mỗi trang
$products_per_page = 12;

// Trang hiện tại (mặc định là trang 1 nếu không có tham số trang)
$current_page = isset($_GET['page']) ? $_GET['page'] : 1;

// Tính offset để truy vấn dữ liệu
$offset = ($current_page - 1) * $products_per_page;

// Truy vấn để lấy tổng số sản phẩm
$sql_total_products = "SELECT COUNT(*) AS total FROM tbl_sanpham";
$result_total_products = mysqli_query($mysqli, $sql_total_products);
$row_total_products = mysqli_fetch_assoc($result_total_products);
$total_products = $row_total_products['total'];

// Tính số trang có thể có dựa trên tổng số sản phẩm
$total_pages = ceil($total_products / $products_per_page);

// Truy vấn dữ liệu sản phẩm với LIMIT và OFFSET
$sql_pro = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc ORDER BY tbl_sanpham.id_sanpham DESC LIMIT $products_per_page OFFSET $offset";
$query_pro = mysqli_query($mysqli, $sql_pro);
?>

<!-- Hiển thị danh sách sản phẩm -->
<div class="contene_list_right">
    <h3>Sản phẩm mới nhất</h3>
    <ul class="product_list">
        <?php while ($row = mysqli_fetch_array($query_pro)) { ?>
            <li>
                <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
					<img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>">
					<p class="title_product">Tên sản phẩm:
						<?php echo $row['tensanpham'] ?>
					</p>
					<p class="price_product">Giá:
						<?php echo number_format($row['giasp'], 0, ',', '.') . 'vnđ' ?>
					</p>
					<p style="text-align: center; color: brown;">
						<?php echo $row['tendanhmuc'] ?>
					</p>
				</a>

            </li>
        <?php } ?>
    </ul>

</div>

<div class="pagination">    	
    <?php

    // In nút "<<" để về trang đầu tiên
    if ($current_page > 1) {
        echo '<a href="index.php?page=1">&lt;&lt;</a>';
    }

    // In nút "<" để về trang trước
    if ($current_page > 1) {
        $prev_page = $current_page - 1;
        echo '<a href="index.php?page=' . $prev_page . '">&lt;</a>';
    }

    // In danh sách các trang
    for ($i = 1; $i <= $total_pages; $i++) {
        echo '<a href="index.php?page=' . $i . '"';
        if ($i == $current_page) {
            echo ' class="active"';
        }
        echo '>' . $i . '</a>';
    }

    // In nút ">" để đến trang sau
    if ($current_page < $total_pages) {
        $next_page = $current_page + 1;
        echo '<a href="index.php?page=' . $next_page . '">&gt;</a>';
    }

    // In nút ">>" để đến trang cuối cùng
    if ($current_page < $total_pages) {
        echo '<a href="index.php?page=' . $total_pages . '">&gt;&gt;</a>';
    }
?>
</div>

