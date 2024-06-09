<?php
if (isset($_POST['dangky'])) {
    $errors = array();

    // Kiểm tra và lấy dữ liệu từ form
    $tenkhachhang = $_POST['hovaten'] ?? '';
    $email = $_POST['email'] ?? '';
    $dienthoai = $_POST['dienthoai'] ?? '';
    $matkhau2 = ($_POST['matkhau'] ?? '');
    $matkhau = md5($_POST['matkhau'] ?? '');
    $nhaplaimatkhau = ($_POST['nhaplaimatkhau'] ?? '');
    $diachi = ($_POST['diachi'] ?? '');
    $sql_check_email = mysqli_query($mysqli, "SELECT * FROM tbl_dangky WHERE email = '" . $email . "'");
    $num_rows = mysqli_num_rows($sql_check_email);

    if ($num_rows > 0) {
        $errors[] = 'Email đã tồn tại trong hệ thống, vui lòng sử dụng email khác.';
    }
    if ($matkhau2 !== $nhaplaimatkhau) {
        $errors[] = 'Mật khẩu nhập lại không khớp';
    }
    if (strlen($matkhau2) < 8 || strlen($matkhau2) > 16) {
        $errors[] = 'Mật khẩu phải có độ dài từ 8 đến 16 ký tự';
    }
    if (!preg_match('/^0\d{9}$/', $dienthoai)) {
        $errors[] = 'Vui lòng nhập số điện thoại hợp lệ';
    }
    if (empty($errors)) {
        $sql_dangky = mysqli_query($mysqli, "INSERT INTO tbl_dangky(tenkhachhang,email,dienthoai,matkhau,diachi) VALUE('" . $tenkhachhang . "','" . $email . "','" . $dienthoai . "','" . $matkhau . "','" . $diachi . "')");

        if ($sql_dangky) {
            echo '<p style="color:green">Bạn đã đăng ký thành công</p>';
            $_SESSION['dangky'] = $tenkhachhang;
            $_SESSION['email'] = $email;
            $_SESSION['dienthoai'] = $dienthoai;
            $_SESSION['diachi'] = $diachi;
            $_SESSION['id_kh'] = mysqli_insert_id($mysqli);
            echo 'xin chào: ' . '<span style="color:red">' . $_SESSION['dangky'] . '</span>';
            echo '<script type="text/javascript">window.location.href = "' . $_SERVER['PHP_SELF'] . '";</script>';
            exit;
        }
    } else {
        foreach ($errors as $error) {
            echo '<p style="color:red">' . $error . '</p>';
        }
    }
}
?>
<h3>Đăng ký thành viên</h3>
<style type="text/css">
    table.dangky tr td {
        padding: 5px;
    }
</style>
<form action="" method="POST">
    <table class="dangky" width="50%" style="border-collapse: collapse;">
        <tr>
            <td>Họ và tên</td>
            <td><input type="text" class="form-control" size="50" name="hovaten" pattern="^.*\S+.*$"
                    title="phai them ki tu" required></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="email" class="form-control" size="50" name="email" required></td>
        </tr>
        <tr>
            <td>Điện thoại</td>
            <td><input type="number" class="form-control" size="50" name="dienthoai" required></td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td><input type="text" class="form-control" size="50" name="diachi" pattern="^.*\S+.*$" required></td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td><input type="password" class="form-control" size="50" name="matkhau" required></td>
        </tr>
        <tr>
            <td>Nhập lại mật khẩu</td>
            <td><input type="password" class="form-control" size="50" name="nhaplaimatkhau" required></td>
        </tr>
        <tr>
            <td><input type="submit" class="btn btn-primary" name="dangky" value="Đăng ký"></td>
            <td><a class="btn btn-primary" href="index.php?quanly=dangnhap" role="button">Đã có tài khoản? Đăng nhập
                    ngay</a></td>
        </tr>

    </table>
</form>