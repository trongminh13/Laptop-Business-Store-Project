<?php
$taikhoan = $_SESSION['email'];
$ten = $_SESSION['dangky'];
$dienthoai = $_SESSION['dienthoai'];
$diachi = $_SESSION['diachi'];

if(isset($_POST['capnhat_thongtin'])){
    $errors = array();

    $tenkhachhang_moi = $_POST['tenkhachhang'] ?? '';
    $diachi_moi = $_POST['diachi'] ?? '';
    $dienthoai_moi = $_POST['dienthoai'] ?? '';

    if(empty($tenkhachhang_moi) || empty($diachi_moi) || empty($dienthoai_moi)){
        $errors[] = 'Vui lòng điền đầy đủ thông tin';
    }

    if(empty($errors)){
        // Cập nhật thông tin khác
        $sql_update_info = mysqli_query($mysqli, "UPDATE tbl_dangky SET tenkhachhang='".$tenkhachhang_moi."', diachi='".$diachi_moi."', dienthoai='".$dienthoai_moi."' WHERE email='".$taikhoan."'");

        if($sql_update_info){
            echo '<p style="color:green">Thông tin đã được cập nhật</p>';   
        } else {
            echo '<p style="color:red">Có lỗi xảy ra khi cập nhật thông tin</p>';
        }
    } else {
        foreach($errors as $error){
            echo '<p style="color:red">'.$error.'</p>';
        }
    }
}
?>

<form action="" autocomplete="off" method="POST">
    <table width="50%" class="table-login" style="text-align: center; border-collapse: collapse;">
        <tr>
            <td colspan="2"><h3>Cập nhật thông tin cá nhân</h3></td>
        </tr>
        <tr>
            <td>Tài khoản</td>
            <td><input type="text" class="form-control" name="email" value="<?php echo ($taikhoan); ?>" readonly></td>
        </tr>
        <tr>
            <td>Tên khách hàng</td>
            <td><input type="text" class="form-control" name="tenkhachhang" value="<?php echo ($ten); ?>"></td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td><input type="text" class="form-control" name="diachi" value="<?php echo ($diachi); ?>"></td>
        </tr>
        <tr>
            <td>Số điện thoại</td>
            <td><input type="text" class="form-control" name="dienthoai" value="<?php echo ($dienthoai); ?>"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" class="btn btn-primary" name="capnhat_thongtin" value="Cập nhật thông tin"></td>
        </tr>
    </table>
</form>
