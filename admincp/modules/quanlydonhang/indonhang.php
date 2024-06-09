
<?php
require('../../../tfpdf/tfpdf.php');
require('../../config/config.php');
$pdf = new tFPDF();
$pdf ->AddPage("0");
$pdf->AddFont('DejaVu','','DejaVuSansCondensed.ttf',true);
$pdf->SetFont('DejaVu','',14);

$pdf ->SetFillColor(193,229,252);
//set header
$sql_lietke_donhang_chitiet = "SELECT * FROM tbl_donhang_chitiet 
                               INNER JOIN tbl_sanpham ON tbl_donhang_chitiet.id_sanpham = tbl_sanpham.id_sanpham
                               WHERE tbl_donhang_chitiet.code_donhang = '" . $_GET['code'] . "' 
                               ORDER BY tbl_donhang_chitiet.id_donhang_chitiet DESC";                            


$query_lietke_donhang_chitiet = mysqli_query($mysqli, $sql_lietke_donhang_chitiet);
$total = 0;

$pdf->Write(10,'Đơn hàng của bạn gồm có:');
	$pdf->Ln(10);

	$width_cell=array(5,35,150,30,30,40);

	$pdf->Cell($width_cell[0],10,'ID',1,0,'C',true);
	$pdf->Cell($width_cell[1],10,'Mã đơn hàng',1,0,'C',true);
	$pdf->Cell($width_cell[2],10,'Tên sản phẩm',1,0,'C',true); 
	$pdf->Cell($width_cell[3],10,'Giá sp',1,0,'C',true); 
	$pdf->Cell($width_cell[4],10,'Số lượng',1,0,'C',true);
	$pdf->Cell($width_cell[5],10,'Tổng tiền',1,1,'C',true);
	 
	$pdf->SetFillColor(235,236,236); 
	$fill=false;
	$i = 0;
	while($row = mysqli_fetch_array($query_lietke_donhang_chitiet)){
		$i++;
	$pdf->Cell($width_cell[0],10,$i,1,0,'C',$fill);
	$pdf->Cell($width_cell[1],10,$row['code_donhang'],1,0,'C',$fill);
	$pdf->Cell($width_cell[2],10,$row['tensanpham'],1,0,'C',$fill);
	$pdf->Cell($width_cell[3],10,number_format($row['giasp']),1,0,'C',$fill);
	$pdf->Cell($width_cell[4],10,$row['soluongmua'],1,0,'C',$fill);
	$pdf->Cell($width_cell[5],10,number_format($total += $row['soluongmua'] * $row['giasp']),1,1,'C',$fill);
	$fill = !$fill;

	}
	$pdf->Write(10,'Cảm ơn bạn đã đặt hàng tại website của chúng tôi.');
	$pdf->Ln(10);
	$pdf->Output();
?>