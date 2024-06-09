<?php
$select_message = mysqli_query($mysqli, "SELECT * FROM `customer_reviews`") or die('Kết nối thất bại');
if(mysqli_num_rows($select_message) > 0) {
    echo '<ul class="product_list">';
    while($fetch_message = mysqli_fetch_assoc($select_message)) {
?>
        <li>
            <p class="title_product">ID người dùng: <span><?php echo $fetch_message['id_dangky']; ?></span></p>
            <p class="title_product">Tên người dùng: <span><?php echo $fetch_message['name']; ?></span></p>
            <p class="title_product">Phản hồi: <span><?php echo $fetch_message['comment']; ?></span></p>
        </li>
<?php
    }
    echo '</ul>';
} else {
    echo '<p class="empty">Bạn không có lời phản hồi nào!!</p>';
}
?>
