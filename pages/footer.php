<!-- <div class="clear"></div>
	<div class="footer">
		<p class="footer_copyright"></p>
	</div>
</div> -->
<?php
        $sql_lh = "SELECT * FROM tbl_lienhe WHERE id=1";
        $query_lh = mysqli_query($mysqli,$sql_lh);
        ?>

            
<div class="footer">
        <div class="bootednum1">
            <p>
                
                <?php
                  while($dong = mysqli_fetch_array($query_lh)){
                  ?>
                  <br>
                  <span><?php echo $dong['thongtinlienhe'] ?></span>                                  
                  <br>
                  <?php
                }
                  ?>
                
            </p>
            <p><span class="text_booted_color">Liên kết website</span>                
                <br>
                <span>Cục Quản lý Laptop</span>
                <br>
                <span>Tạp chí Laptop</span>
                <br>
                <span>Báo Laptop và đời sống</span>
            </p>
            <p><span class="text_booted_color">Đăng kí nhận tin</span>
                <br>
                <span>Đăng kí địa chỉ email để nhận thông tin sớm nhất từ website</span>
                <br>
            </p>
            <?php 
                
                if(!isset($_SESSION['id_kh'])){                
                    ?>
                    <p>Giúp chúng tôi cải thiện chất lượng dịch vụ trang web, hãy <br>để lại một <a href="index.php?quanly=dangky">phản hồi đánh giá</a>!</p>
                    <?php
                }
                else{
                    ?>
                    <p>Giúp chúng tôi cải thiện chất lượng dịch vụ trang web, hãy <br>để lại một <a href="index.php?quanly=submit_review">phản hồi đánh giá</a>!</p>                    
                    <?php
                }
                ?>

        </div>

        <div class="bootednum2">
            <p>© 2019 Laptopuneti. All Rights Reserved by TML.vn</p>
            <p class="bootednum2_link">
                <a href=""> Gioi thiệu </a>
                <a href="">Tuyển dụng</a>
                <a href="">Liên hệ</a>

            </p>
        </div>
