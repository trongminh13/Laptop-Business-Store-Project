<?php

$id = $_SESSION['id_kh'];
$ten = $_SESSION['dangky'];

$existing_record_query = "SELECT * FROM customer_reviews WHERE id_dangky = '$id'";
$existing_record_result = mysqli_query($mysqli, $existing_record_query);

if (!$existing_record_result) {
    echo "Lỗi truy vấn: " . mysqli_error($mysqli);
    // You might want to handle this error more gracefully (e.g., redirect to an error page).
} else {
    $existing_record = mysqli_fetch_assoc($existing_record_result);

    if ($existing_record) {
        $existing_comment = $existing_record['comment'];
        $button_label = 'Sửa phản hồi';
    } else {
        $existing_comment = '';
        $button_label = 'Gửi phản hồi';
    }

    if (isset($_POST['submit_review'])) {
        $name = $_POST['name'];
        $comment = $_POST['comments'];

        if ($existing_record) {
            $update = "UPDATE customer_reviews SET comment = '$comment' WHERE id_dangky = '$id'";
            $query = mysqli_query($mysqli, $update);
        } else {
            $insert = "INSERT INTO customer_reviews (id_dangky, name, comment) VALUES ('$id', '$name', '$comment')";
            $query = mysqli_query($mysqli, $insert);
        }

        if (!$query) {
            echo "Lỗi truy vấn: " . mysqli_error($mysqli);
        } else {
            echo '<script>alert("Phản hồi của bạn đã được ghi nhận, cảm ơn bạn đã ủng hộ shop chúng tôi.")</script>';
        }
    }
}
?>

<div class="feedback-form">
    <h1>Phản hồi từ khách hàng</h1>
    <form action="" autocomplete="off" method="POST">
        <label for="name">Tên:</label>
        <input type="text" size="50" id="name" class="form-control" name="name" value="<?php echo ($ten); ?>"  required><br>
        <label for="comments">Bình luận:</label>
        <input type="text" class="form-control" size="50" name="hovaten" pattern="^.*\S+.*$"title="phai them ki tu" required></td>
        <!-- <textarea id="comments" name="comments" class="form-control" rows="4" pattern="^.*\S+.*$" required><?php echo $existing_comment; ?></textarea><br> -->
        <input type="submit" class="btn btn-primary" name="submit_review" value="<?php echo $button_label; ?>">
    </form>
</div>

<script src="script.js"></script>
