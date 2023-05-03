<?php

require_once __DIR__ . '/vendor/autoload.php';
require 'koneksi.php';
$sql=query("SELECT alternatif.kode, hasil.*, alternatif.nama FROM alternatif JOIN hasil USING (id_alternatif) WHERE tanggal = '$_GET[tanggal]'");

$mpdf = new \Mpdf\Mpdf();
$krit = '<!DOCTYPE html>
<html>
<head>
      <title>Cetak Laporan</title>
      <link rel="stylesheet" href="print.css">
</head>
<body>
<table width="100%" >
<tr>
<td width="10%"><left><img src="assets1/foto/iahn-bg-tp.png"></left></td>
<td width="80%"><h2 > Institut Agama Hindu Negeri Gde Pudja Mataram </h2>
<p> Jln. Pancaka No. 7B Mataram, Nusa Tenggara Barat, Indonesia </p></td>
<td width="10%"></td>
</tr>
</table>

<hr />
<h2> Laporan Hasil Kinerja Dosen </h2>
      <table border="1" cellpadding="10" cellspacing="0">
            <tr>
                  <th>Kode</th>
                  <th>Nama</th>
                  <th>Nilai</th>
                  <th>Rank</th>
                  <th>Keterangan</th>
            </tr>';
            $i=1;
            foreach ($sql as $row) {
                  $krit .= '<tr>
                              <td>'. $row["kode"] .'</td>
                              <td>'. $row["nama"] .'</td>
                              <td>'. $row["nilai"] .'</td>
                              <td>'. $i .'</td>
                              <td>'. $row["ket"] .'</td>
                  </tr>';
                  $i++;
            }



 $krit .=    ' </table>
 <br>
 <br>
 <br>
 
<p style="text-align: right;"><b>Pembuat Program</b></p>
<br>
<br>
<p style="text-align: right;"><u>Putu Ananda Pradnya Wirawan</u></p>


</body>
</html>'; 
$mpdf->WriteHTML($krit);
$mpdf->Output('laporan_rekrutmen.pdf', \Mpdf\Output\Destination::INLINE);
?>